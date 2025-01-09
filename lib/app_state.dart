import 'package:flutter/material.dart';

class AppState with ChangeNotifier {
  String _connectionStatus = 'Unknown';
  String _connection = "";

  String get connectionStatus => _connectionStatus;
  String get connection => _connection;

  void updateConnectionStatus(String status) {
    _connectionStatus = status;
    notifyListeners();
  }

  void updateConnection(String conn) {
    _connection = conn;
    notifyListeners();
  }
}
