// import 'dart:nativewrappers/_internal/vm/lib/core_patch.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:recharge_setu/app_text.dart';

class CounterController extends GetxController {
  var count = 0.obs;
  var balance=''.obs;
  void increment() {
    balance.value = "${App_Text.Main_Balance}";
    count++;
  }
}