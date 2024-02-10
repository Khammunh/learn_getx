import 'dart:convert';

import 'package:get/get.dart';
import 'package:getx/model/todoModel.dart';
import 'package:http/http.dart' as http;

class TodoController extends GetxController {
  var TodoList = RxList<TodoModel>();

  @override
  void onInit() {
    super.onInit();
    getTodo();
  }

  Future<RxList<TodoModel>> getTodo() async {
    final response = await http.get(
      Uri.parse("https://65c49fc3dae2304e92e2f2eb.mockapi.io/api/todoList"),
    );
    var data = jsonDecode(
      response.body.toString(),
    );

    if (response.statusCode == 200) {
      for (Map<String, dynamic> index in data) {
        TodoList.add(
          TodoModel.fromJson(index),
        );
      }
      return TodoList;
    } else {
      return TodoList;
    }
  }
}
