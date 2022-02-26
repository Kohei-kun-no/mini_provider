import 'package:flutter/material.dart';

class CountModel extends ChangeNotifier {
  /// 初期値
  int count = 0;

  /// count の更新メソッド
  void increment() {
    count++;
    notifyListeners();
  }
}