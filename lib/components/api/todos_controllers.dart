import 'dart:convert';

import 'package:get/get.dart';
import 'package:getx/model/todo_Models.dart';
import 'package:http/http.dart' as http;

class TodoControllers extends GetxController {
  var todoLists = RxList<TodoModels>();
  RxBool isLoading = false.obs;

  @override
  void onInit() {
    super.onInit();
    getTodos();
  }

// Get todos
  Future<RxList<TodoModels>> getTodos() async {
    isLoading.value = true;
    final responses = await http.get(
      Uri.parse("https://65c49fc3dae2304e92e2f2eb.mockapi.io/api/todoList"),
    );
    var datas = jsonDecode(responses.body.toString());

    if (responses.statusCode == 200) {
      for (Map<String, dynamic> index in datas) {
        todoLists.add(
          TodoModels.fromJson(index),
        );
      }
      isLoading.value = false;
      return todoLists;
    } else {
      return todoLists;
    }
  }

  // Post todos
  Future<void> postTodos(title) async {
     isLoading.value = true;
    final responses = await http.post(
      Uri.parse("https://65c49fc3dae2304e92e2f2eb.mockapi.io/api/todoList"),
      headers: {'Content-Type': 'application/json'},
      body: json.encode(
        {'todoTitle': title},
      ),
    );
    if (responses.statusCode == 201) {
      print('Done');
      todoLists.clear();
      getTodos();
       isLoading.value = false;
    } else {
      print('Fail');
    }
  }

  // Delete todos
  Future<void> deleteTodos(id) async {
     isLoading.value = true;
    final responses = await http.delete(
      Uri.parse("https://65c49fc3dae2304e92e2f2eb.mockapi.io/api/todoList/$id"),
    );
    if (responses.statusCode == 200) {
      print('Done');
      todoLists.clear();
      getTodos();
       isLoading.value = false;
    } else {
      print('Fail');
    }
  }
}
