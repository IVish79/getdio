import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:getdio/main.dart';


class DioTodos extends StatefulWidget {
  const DioTodos({Key? key}) : super(key: key);

  @override
  State<DioTodos> createState() => _DioTodosState();
}

class _DioTodosState extends State<DioTodos> {
  List l = [];
  bool status = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getData();
  }

  getData() async {
    try {
      var response =
          await Dio().get('https://jsonplaceholder.typicode.com/todos');
      print(response);
      l = response.data;
      setState(() {
        status = true;
      });
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(child: Scaffold(
      appBar: AppBar(
        title: Text("Dio Todos"),
      ),
      body: status
          ? ListView.builder(
        itemCount: l.length,
        itemBuilder: (context, index) {
          model m = model.fromJson(l[index]);
          return Card(
            elevation: 3,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "userId :${m.userId}",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "id :${m.id}",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "title :${m.title}",
                  ),
                  Text(
                    "completed :${m.completed}",
                  ),
                ],
              ),
            ),
          );
        },
      )
          : Center(
        child: CircularProgressIndicator(),
      ),
    ), onWillPop: goback);
  }
  Future<bool> goback() {
    Navigator.pushReplacement(context, MaterialPageRoute(
      builder: (context) {
        return demo();
      },
    ));
    return Future.value();
  }
}

class model {
  int? userId;
  int? id;
  String? title;
  bool? completed;

  model({this.userId, this.id, this.title, this.completed});

  model.fromJson(Map<String, dynamic> json) {
    userId = json['userId'];
    id = json['id'];
    title = json['title'];
    completed = json['completed'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['userId'] = this.userId;
    data['id'] = this.id;
    data['title'] = this.title;
    data['completed'] = this.completed;
    return data;
  }
}
