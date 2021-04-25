//conrtoel de paginas e valores inseridos e dinamica do aplicativo

//CurrentePage

import 'package:flutter/cupertino.dart';

class ChallengeControler{
  final currentPageNotifier = ValueNotifier<int>(1);
  int get currentPage => currentPageNotifier.value;
  set currentPage(int value) => currentPageNotifier.value = value;

  int  rightQuestions = 0;
}