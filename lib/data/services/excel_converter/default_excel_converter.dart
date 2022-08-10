import 'dart:io';

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
    final sheet = excel['Sheet1'];
    sheet.updateCell(CellIndex.indexByString('A1'), 'Дата');
    sheet.updateCell(CellIndex.indexByString('B1'), 'Событие');
    sheet.updateCell(CellIndex.indexByString('C1'), 'Эмоции');
    sheet.updateCell(CellIndex.indexByString('D1'), 'Комментарий');
    // TODO write all info
  }
}
