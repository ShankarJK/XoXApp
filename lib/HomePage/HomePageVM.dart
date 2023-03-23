import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'HomePageModel.dart';

class HomePageVM extends HomePageModel {
  HomePageVM() {
    collectionofValues =
        ObservableList.of(["", "", "", "", "", "", "", "", ""]);
  }
  void tapItem(int indexs) {
    if (cross == 0 && circle == 0) {
      if (collectionofValues[indexs] == "") {
        if (isCross) {
          collectionofValues[indexs] = "circle";
          isCross = false;
        } else {
          collectionofValues[indexs] = "cross";
          isCross = true;
        }
      }
    }
    checkWinner();
  }

  void resetAll() {
    for (var i = 0; i < collectionofValues.length; i++) {
      collectionofValues[i] = "";
    }
    cross = 0;
    circle = 0;
    setwinner(winner: "");
    isCross = false;
    count = false;
  }

  checkWinner() async {
    if (cross < 1 || circle < 1) {
      //checks row 1

      if (collectionofValues[0] == collectionofValues[1] &&
          collectionofValues[1] == collectionofValues[2] &&
          collectionofValues[0] == collectionofValues[2] &&
          (collectionofValues[0] == "cross" ||
              collectionofValues[0] == "circle")) {
        if (collectionofValues[0] == "cross") {
          cross++;
        } else if (collectionofValues[0] == "circle") {
          circle++;
        }
      }
      // checks row 2
      else if (collectionofValues[3] == collectionofValues[4] &&
          collectionofValues[4] == collectionofValues[5] &&
          collectionofValues[3] == collectionofValues[5] &&
          (collectionofValues[3] == "cross" ||
              collectionofValues[3] == "circle")) {
        if (collectionofValues[3] == "cross") {
          cross++;
        } else if (collectionofValues[3] == "circle") {
          circle++;
        }
      }
      //checks for row 3
      else if (collectionofValues[6] == collectionofValues[7] &&
          collectionofValues[7] == collectionofValues[8] &&
          collectionofValues[6] == collectionofValues[8] &&
          (collectionofValues[6] == "cross" ||
              collectionofValues[6] == "circle")) {
        if (collectionofValues[6] == "cross") {
          cross++;
        } else if (collectionofValues[6] == "circle") {
          circle++;
        }
      }
      //checks for column 1
      else if (collectionofValues[0] == collectionofValues[3] &&
          collectionofValues[3] == collectionofValues[6] &&
          collectionofValues[0] == collectionofValues[6] &&
          (collectionofValues[0] == "cross" ||
              collectionofValues[0] == "circle")) {
        if (collectionofValues[0] == "cross") {
          cross++;
        } else if (collectionofValues[0] == "circle") {
          circle++;
        }
      }

      //checks for column 2
      else if (collectionofValues[1] == collectionofValues[4] &&
          collectionofValues[4] == collectionofValues[7] &&
          collectionofValues[1] == collectionofValues[7] &&
          (collectionofValues[4] == "cross" ||
              collectionofValues[4] == "circle")) {
        if (collectionofValues[4] == "cross") {
          cross++;
        } else if (collectionofValues[1] == "circle") {
          circle++;
        }
      }
      //checks for column 3
      else if (collectionofValues[2] == collectionofValues[5] &&
          collectionofValues[5] == collectionofValues[8] &&
          collectionofValues[2] == collectionofValues[8] &&
          (collectionofValues[5] == "cross" ||
              collectionofValues[5] == "circle")) {
        if (collectionofValues[5] == "cross") {
          cross++;
        } else if (collectionofValues[2] == "circle") {
          circle++;
        }
      }
      //checks for diagonally left to right
      else if (collectionofValues[0] == collectionofValues[4] &&
          collectionofValues[4] == collectionofValues[8] &&
          collectionofValues[0] == collectionofValues[8] &&
          (collectionofValues[0] == "cross" ||
              collectionofValues[0] == "circle")) {
        if (collectionofValues[0] == "cross") {
          cross++;
        } else if (collectionofValues[0] == "circle") {
          circle++;
        }
      }
      //checks for diagonally  right to left
      else if (collectionofValues[2] == collectionofValues[4] &&
          collectionofValues[4] == collectionofValues[6] &&
          collectionofValues[2] == collectionofValues[6] &&
          (collectionofValues[2] == "cross" ||
              collectionofValues[2] == "circle")) {
        if (collectionofValues[2] == "cross") {
          cross++;
        } else if (collectionofValues[2] == "circle") {
          circle++;
        }
      }

      // Draw check
      else if (collectionofValues[0] != "" &&
          collectionofValues[1] != "" &&
          collectionofValues[2] != "" &&
          collectionofValues[3] != "" &&
          collectionofValues[4] != "" &&
          collectionofValues[5] != "" &&
          collectionofValues[6] != "" &&
          collectionofValues[7] != "" &&
          collectionofValues[8] != "") {
        setwinner(winner: "Match is Drawed");
        count = true;
        Future.delayed(const Duration(seconds: 3), () {
          if (count) {
            resetAll();
          }
        });
      }
    } else if (cross == 1 || circle == 1) {
      setwinner(winner: await totalcheck(cross, circle));
    }

    if (cross == 1 || circle == 1) {
      setwinner(winner: await totalcheck(cross, circle));
    }
  }

  String totalcheck(int cross, int circle) {
    var winner = "";
    if (cross == 1) {
      winner = "Cross is the winner";
      count = true;
      Future.delayed(const Duration(seconds: 3), () {
        if (count) {
          resetAll();
        }
      });
    } else if (circle == 1) {
      winner = "Circle is the winner";
      count = true;
      Future.delayed(const Duration(seconds: 3), () {
        if (count) {
          resetAll();
        }
      });
    }
    return winner;
  }
}
