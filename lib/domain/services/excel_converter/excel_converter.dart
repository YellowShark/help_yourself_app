import 'package:help_yourself_app/domain/entities/emotion/emotion_note.dart';

abstract class ExcelConverter {
  Future<String> convertToSingleFile(List<EmotionNote> notes);
}