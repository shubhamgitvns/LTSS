

import 'package:recharge_setu/app_text.dart';

class Json {
   final int id;
  final String username;
  final String role;
  final String status;
  final String message;
  final String mobile;
  final String finger;
  final String mpin;
  final String tpin;

  Json( this.id,this.username, this.role, this.status, this.message, this.mobile, this.finger,this.mpin, this.tpin) {}

  Map<String, dynamic> toMap() {
    return {
      'id':id,
      'username': username,
      'role': role,
      'status': status,
      'message': message,
      'mobile': mobile,
      'finger': finger,
      'mpin': mpin,
      'tpin': tpin
    };
  }

// Implement toString to make it easier to see information about
// each book.
  @override
  String toString() {
    return 'Json{id:$id, username: $username, role: $role, status: $status, message: $message, mobile: $mobile, finger:$finger, mpin: $mpin, tpin: $tpin}';
  }
}


class Person {
  final String name;
  final String number;


  Person ( { required this.name, required this.number}) {}

  factory Person .fromJson(Map<String, dynamic> json) {
    return Person (
      name: json['number'],
      number: json['name'],
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'name':name,
      'number': number,

    };
  }

  @override
  String toString() {
    return 'Json{name:$name, number: $number}';
  }
}
