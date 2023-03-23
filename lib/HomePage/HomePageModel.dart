import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';

part 'HomePageModel.g.dart';

class HomePageModel = _HomePageModelBase with _$HomePageModel;

abstract class _HomePageModelBase with Store {
  ObservableList<String> collectionofValues = ObservableList();
  bool isCross = false;
  @observable
  var winner = "";
  var cross = 0;
  var circle = 0;
  var count = false;
  @action
  void setwinner({required String winner})=>this.winner=winner;
}
