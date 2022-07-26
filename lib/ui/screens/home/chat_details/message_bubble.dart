import 'package:bubble/bubble.dart';
import 'package:flutter/material.dart';
import 'package:help_yourself_app/common/utils/consts.dart';
import 'package:help_yourself_app/domain/entities/message/message.dart';

import '../../../../common/res/dimens.dart';

class MessageBubble extends StatelessWidget {
  final Message message;

  const MessageBubble({Key? key, required this.message}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: message.isOutcome ? MainAxisAlignment.end : MainAxisAlignment.start,
      children: [
        if (!message.isOutcome)
          const Padding(
            padding: EdgeInsets.only(left: Dimens.padding8),
            child: CircleAvatar(
              backgroundImage: NetworkImage(Consts.globalImageUrl),
            ),
          ),
        Bubble(
          padding: const BubbleEdges.all(Dimens.padding8),
          margin: const BubbleEdges.all(Dimens.padding8),
          alignment: message.isOutcome ? Alignment.topRight : Alignment.topLeft,
          nip: message.isOutcome ? BubbleNip.rightCenter : BubbleNip.leftCenter,
          color: message.isOutcome ? Colors.deepOrange : Colors.indigo,
          child: Column(
            crossAxisAlignment: message.isOutcome ? CrossAxisAlignment.end : CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                message.author,
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(
                message.text,
                textAlign: message.isOutcome ? TextAlign.right : TextAlign.left,
              ),
              Text(
                message.time,
                style: const TextStyle(fontStyle: FontStyle.italic),
              ),
            ],
          ),
        ),
        if (message.isOutcome)
          const Padding(
            padding: EdgeInsets.only(right: Dimens.padding8),
            child: CircleAvatar(
              backgroundImage: NetworkImage(Consts.globalImageUrl),
            ),
          ),
      ],
    );
  }
}
