import 'dart:io';

import 'package:collection/collection.dart';
import 'package:help_yourself_app/common/utils/extensions.dart';
import 'package:help_yourself_app/data/services/excel_converter/excel_defaults.dart';
import 'package:help_yourself_app/data/services/excel_converter/excel_extension.dart';
import 'package:help_yourself_app/domain/entities/emotion/emotion.dart';
import 'package:help_yourself_app/domain/entities/emotion/emotion_note.dart';
import 'package:help_yourself_app/domain/services/excel_converter/excel_converter.dart';
import 'package:injectable/injectable.dart';
import 'package:excel/excel.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart';

const _filename = 'share_notes_from_help_yourself_app.xlsx';

@Injectable(as: ExcelConverter)
class DefaultExcelConverter extends ExcelConverter {
  @override
  Future<String> convertToSingleFile(List<EmotionNote> notes) async {
    final excel = Excel.createExcel();
    _populateTable(excel, notes);
    final file = await _save(excel);
    return file.path;
  }

  Future<File> _save(Excel excel) async {
    final bytes = excel.save(fileName: _filename);
    var directory = await getApplicationDocumentsDirectory();
    final file = await File(join('${directory.path}/$_filename')).create(recursive: true);
    await file.writeAsBytes(bytes!);
    return file;
  }

  void _populateTable(Excel excel, List<EmotionNote> notes) {
    final sheet = excel[ExcelDefaults.sheetName];
    sheet.initRows(EmotionNote.getTitles().map((e) => RowSettings(e, ExcelDefaults.colWidth)).toList());

    var currIndex = ExcelDefaults.initialDataPosition;
    notes.forEachIndexed(
      (i, note) {
        sheet
          ..updateCellByString('${tableRows[0]}$currIndex', note.date.toFormattedDate())
          ..updateCellByString('${tableRows[1]}$currIndex', note.name)
          ..updateCellByString('${tableRows[3]}$currIndex', note.comment);

        final oldIndex = currIndex;
        note.emotions.forEach((e) {
          sheet.updateCellByString('${tableRows[2]}$currIndex', e.text);
          currIndex++;
        });
        sheet.mergeRows(
          [0, 1, 3],
          oldIndex,
          currIndex - 1,
        );
        currIndex++;
      },
    );
  }
}
