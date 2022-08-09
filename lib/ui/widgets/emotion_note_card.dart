import 'package:flutter/material.dart';
import 'package:help_yourself_app/common/res/dimens.dart';
import 'package:help_yourself_app/common/utils/extensions.dart';
import 'package:help_yourself_app/domain/entities/emotion/emotion.dart';
import 'package:help_yourself_app/domain/entities/emotion/emotion_note.dart';
import 'package:help_yourself_app/ui/widgets/emotion_chip.dart';

class EmotionNoteCard extends StatelessWidget {
  final EmotionNote note;

  const EmotionNoteCard({
    Key? key,
    required this.note,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print(note.date);
    return Card(
      margin: const EdgeInsets.all(Dimens.padding8),
      child: Padding(
        padding: const EdgeInsets.all(Dimens.padding16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              note.name,
              style: Theme.of(context).textTheme.headline5,
              overflow: TextOverflow.ellipsis,
            ),
            Dimens.padding8.spacer(),
            Text(
              note.date.toFormattedDate(),
              style: Theme.of(context).textTheme.caption,
            ),
            if (note.comment.trim().isNotEmpty) ...[
              Dimens.padding8.spacer(),
              Text(
                note.comment,
                style: Theme.of(context).textTheme.subtitle1,
                overflow: TextOverflow.ellipsis,
              ),
            ],
            Dimens.padding8.spacer(),
            _chips,
          ],
        ),
      ),
    );
  }

  Widget get _chips => Wrap(
        children: note.emotions
            .map(
              (e) => Padding(
                padding: const EdgeInsets.only(right: Dimens.padding8),
                child: AppChip<Emotion>(
                  value: e,
                  toText: (e) => e.text,
                  selected: true,
                ),
              ),
            )
            .toList(),
      );
}
