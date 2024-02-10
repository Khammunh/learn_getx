import 'dart:convert';

import 'package:get/get.dart';
import 'package:getx/model/todo_Models.dart';
import 'package:http/http.dart' as http;

class MyController extends GetxController {
  var todoLists = RxList<TodoModels>();

  @override
  void onInit() {
    super.onInit();
    getTodos();
  }

  Future<RxList<TodoModels>> getTodos() async {
    final responses = await http.get(
      Uri.parse("https://65c49fc3dae2304e92e2f2eb.mockapi.io/api/todoList"),
    );
    var datas = jsonDecode(
      responses.body.toString(),
    );

    if (responses.statusCode == 200) {
      for (Map<String, dynamic> index in datas) {
        todoLists.add(
          TodoModels.fromJson(index),
        );
      }
      return todoLists;
    } else {
      return todoLists;
      // learn here
    }
  }
}
