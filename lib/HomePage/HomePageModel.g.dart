// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'HomePageModel.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$HomePageModel on _HomePageModelBase, Store {
  late final _$collectionofValuesAtom =
      Atom(name: '_HomePageModelBase.collectionofValues', context: context);

  @override
  List<String> get collectionofValues {
    _$collectionofValuesAtom.reportRead();
    return super.collectionofValues;
  }

  @override
  set collectionofValues(List<String> value) {
    _$collectionofValuesAtom.reportWrite(value, super.collectionofValues, () {
      super.collectionofValues = value;
    });
  }

  late final _$winnerAtom =
      Atom(name: '_HomePageModelBase.winner', context: context);

  @override
  String get winner {
    _$winnerAtom.reportRead();
    return super.winner;
  }

  @override
  set winner(String value) {
    _$winnerAtom.reportWrite(value, super.winner, () {
      super.winner = value;
    });
  }

  late final _$_HomePageModelBaseActionController =
      ActionController(name: '_HomePageModelBase', context: context);

  @override
  void setwinner({required String winner}) {
    final _$actionInfo = _$_HomePageModelBaseActionController.startAction(
        name: '_HomePageModelBase.setwinner');
    try {
      return super.setwinner(winner: winner);
    } finally {
      _$_HomePageModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setCollection({required List<String> collectionofValues}) {
    final _$actionInfo = _$_HomePageModelBaseActionController.startAction(
        name: '_HomePageModelBase.setCollection');
    try {
      return super.setCollection(collectionofValues: collectionofValues);
    } finally {
      _$_HomePageModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
collectionofValues: ${collectionofValues},
winner: ${winner}
    ''';
  }
}
