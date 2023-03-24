import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';

part 'HomePageModel.g.dart';

class HomePageModel = _HomePageModelBase with _$HomePageModel;

abstract class _HomePageModelBase with Store {
  @observable
  List<String> collectionofValues = [];
  bool isCross = false;
  @observable
  var winner = "";
  var cross = 0;
  var circle = 0;
  var count = false;
  @action
  void setwinner({required String winner}) => this.winner = winner;
  @action
  void setCollection({required List<String> collectionofValues}) {
    this.collectionofValues = [];
    this.collectionofValues = collectionofValues;
  }
}
