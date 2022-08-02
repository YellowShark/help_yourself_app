import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

import '../../../common/res/dimens.dart';
import '../../../common/res/strings.dart';

class VideoPlayer extends StatefulWidget {
  VideoPlayer({Key? key, required this.video}) : super(key: key);

  final String video; // 'itZMM5gCboo'

  @override
  _VideoPlayerState createState() => _VideoPlayerState();
}

class _VideoPlayerState extends State<VideoPlayer> {
  late YoutubePlayerController _controller;
  late TextEditingController _idController;
  late TextEditingController _seekToController;

  late PlayerState _playerState;
  late YoutubeMetaData _videoMetaData;
  double _volume = 100;
  bool _muted = false;
  bool _isPlayerReady = false;

  @override
  void initState() {
    super.initState();
    _controller = YoutubePlayerController(
      initialVideoId: widget.video,
      flags: const YoutubePlayerFlags(
        mute: false,
        autoPlay: true,
        disableDragSeek: false,
        loop: false,
        isLive: false,
        enableCaption: true,
        captionLanguage: 'ru',
        forceHD: false,
      ),
    )..addListener(listener);
    _idController = TextEditingController();
    _seekToController = TextEditingController();
    _videoMetaData = const YoutubeMetaData();
    _playerState = PlayerState.unknown;
  }

  void listener() {
    if (_isPlayerReady && mounted && !_controller.value.isFullScreen) {
      setState(() {
        _playerState = _controller.value.playerState;
        _videoMetaData = _controller.metadata;
      });
    }
  }

  @override
  void deactivate() {
    // Pauses video while navigating to next page.
    _controller.pause();
    super.deactivate();
  }

  @override
  void dispose() {
    _controller.dispose();
    _idController.dispose();
    _seekToController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double widthScreen = MediaQuery.of(context).size.width;
    return YoutubePlayerBuilder(
      player: YoutubePlayer(
        controller: _controller,
        showVideoProgressIndicator: true,
        progressIndicatorColor: Colors.blueAccent,
        topActions: <Widget>[
          const SizedBox(width: Dimens.padding8),
          Expanded(
            child: Text(
              _controller.metadata.title,
              style: Theme.of(context).textTheme.headline5,
              overflow: TextOverflow.ellipsis,
              maxLines: 1,
            ),
          ),
          IconButton(
            icon: const Icon(
              Icons.settings,
              color: Colors.white,
              size: 25.0,
            ),
            onPressed: () {
              log('Settings Tapped!');
            },
          ),
        ],
        onReady: () {
          _isPlayerReady = true;
        },
      ),
      builder: (context, player) => Scaffold(
        appBar: AppBar(
          title: Text(
            Strings.video.title(),
            style: const TextStyle(color: Colors.white),
          ),
        ),
        body: ListView(
          children: [
            player,
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  _space,
                  _text(Strings.video.videoTitle(), _videoMetaData.title),
                  _space,
                  _text(Strings.video.videoChannel(), _videoMetaData.author),
                  _space,
                  _buttons(widthScreen),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _text(String title, String value) {
    return RichText(
      text: TextSpan(
        text: '$title : ',
        style: const TextStyle(
          color: Colors.indigo,
          fontWeight: FontWeight.bold,
        ),
        children: [
          TextSpan(
            text: value,
            style: const TextStyle(
              color: Colors.indigo,
              fontWeight: FontWeight.w300,
            ),
          ),
        ],
      ),
    );
  }

  Widget get _space => Dimens.padding8.spacer();

  Widget _buttons(double width) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          width: width * 0.25,
          child: IconButton(
            padding: const EdgeInsets.all(0.0),
            icon: Icon(
              _controller.value.isPlaying ? Icons.pause : Icons.play_arrow,
            ),
            onPressed: _isPlayerReady
                ? () {
                    _controller.value.isPlaying
                        ? _controller.pause()
                        : _controller.play();
                    setState(() {});
                  }
                : null,
          ),
        ),
        Container(
          width: width * 0.4,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                padding: const EdgeInsets.all(0.0),
                icon: Icon(_muted ? Icons.volume_off : Icons.volume_up),
                onPressed: _isPlayerReady
                    ? () {
                        _muted ? _controller.unMute() : _controller.mute();
                        setState(() {
                          _muted = !_muted;
                        });
                      }
                    : null,
              ),
              Expanded(
                child: Slider(
                  inactiveColor: Colors.transparent,
                  value: _volume,
                  min: 0.0,
                  max: 100.0,
                  divisions: 10,
                  label: '${(_volume).round()}',
                  onChanged: _isPlayerReady
                      ? (value) {
                          setState(() {
                            _volume = value;
                          });
                          _controller.setVolume(_volume.round());
                        }
                      : null,
                ),
              ),
            ],
          ),
        ),
        Container(
          width: width * 0.25,
          child: FullScreenButton(
            controller: _controller,
            color: Colors.indigo,
          ),
        ),
      ],
    );
  }
}
