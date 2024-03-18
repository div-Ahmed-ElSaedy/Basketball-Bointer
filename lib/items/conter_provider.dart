// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';

class counterProvider extends ChangeNotifier {
  int counterTeamA = 0;
  int counterTeamB = 0;
  ////////////////////////A/////////////////////////////////
  aPlus1() {
    counterTeamA++;
    notifyListeners();
  }

  aPlus2() {
    counterTeamA += 2;
    notifyListeners();
  }

  aPlus3() {
    counterTeamA += 3;
    notifyListeners();
  }

  ////////////////////////B/////////////////////////////////
  bPlus1() {
    counterTeamB++;
    notifyListeners();
  }

  bPlus2() {
    counterTeamB += 2;
    notifyListeners();
  }

  bPlus3() {
    counterTeamB += 3;
    notifyListeners();
  }

  reast() {
    counterTeamA = 0;
    counterTeamB = 0;
    notifyListeners();
  }
}
