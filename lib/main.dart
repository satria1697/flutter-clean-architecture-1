import 'package:flutter/material.dart';
import 'package:four/domain/model/response.dart';
import 'package:four/domain/model/user.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    Map<String, dynamic> json = {
      "data": {
        "id": "1",
        "name": "oji",
      },
      "message": "success",
      "code": "SUCCESS",
    };
    GenericResponse<User?> response =
        GenericResponse<User?>.fromJson(json, (data) {
      if (data is Map<String, dynamic>) {
        return User.fromJson(data);
      }
      return null;
    });
    print(response.message);
    print(response.code);
    print(response.data?.name);
    return Scaffold(
      appBar: AppBar(
        title: Text(""),
      ),
    );
  }
}
