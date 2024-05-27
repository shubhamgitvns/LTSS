

import 'package:recharge_setu/app_text.dart';

class Json {
   final int id;
  final String username;
  final String role;
  final String status;
  final String message;
  final String mobile;
  final String finger;

  Json( this.id,this.username, this.role, this.status, this.message, this.mobile, this.finger) {}

  Map<String, dynamic> toMap() {
    return {
      'id':id,
      'username': username,
      'role': role,
      'status': status,
      'message': message,
      'mobile': mobile,
      'finger': finger,
    };
  }

// Implement toString to make it easier to see information about
// each book.
  @override
  String toString() {
    return 'Json{id:$id, username: $username, role: $role, status: $status, message: $message, mobile: $mobile, finger:$finger}';
  }
}
