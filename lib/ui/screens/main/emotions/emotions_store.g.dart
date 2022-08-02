// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'emotions_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$EmotionsStore on _EmotionsStore, Store {
  final _$_notesAtom = Atom(name: '_EmotionsStore._notes');

  List<EmotionNote> get notes {
    _$_notesAtom.reportRead();
    return super._notes;
  }

  @override
  List<EmotionNote> get _notes => notes;

  @override
  set _notes(List<EmotionNote> value) {
    _$_notesAtom.reportWrite(value, super._notes, () {
      super._notes = value;
    });
  }

  @override
  String toString() {
    return '''

    ''';
  }
}
