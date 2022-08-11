import 'package:collection/collection.dart';
import 'package:excel/excel.dart';

const tableRows = ['A', 'B', 'C', 'D', 'E', 'F'];
final _defaultCellStyle = CellStyle(textWrapping: TextWrapping.WrapText, underline: Underline.Single);
final _defaultTitleStyle = CellStyle(textWrapping: TextWrapping.WrapText, underline: Underline.Single, bold: true);

class RowSettings {
  final String name;
  final double width;

  RowSettings(this.name, this.width);
}

extension SheetExt on Sheet {
  void initRows(List<RowSettings> settings) => settings.forEachIndexed((i, item) {
        updateCellByString('${tableRows[i]}1', settings[i].name, style: _defaultTitleStyle);
        setColWidth(CellIndex.indexByString('${tableRows[i]}1').columnIndex, settings[i].width);
      });

  void updateCellByString(String index, String value, {CellStyle? style}) =>
      updateCell(CellIndex.indexByString(index), value, cellStyle: style ?? _defaultCellStyle);

  void mergeRows(List<int> rows, int start, int end) => rows.forEach((i) => merge(
        CellIndex.indexByString('${tableRows[i]}$start'),
        CellIndex.indexByString('${tableRows[i]}$end'),
      ));
}
