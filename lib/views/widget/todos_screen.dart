import 'package:flutter/material.dart';
import 'package:login_design/services/todo_services.dart';

import '../../models/todo_model.dart';

class TodoScreen extends StatefulWidget {
  const TodoScreen({super.key});

  @override
  State<TodoScreen> createState() => _TodoScreenState();
}

class _TodoScreenState extends State<TodoScreen> {
List<Todo> todos =[];
getTodosFromApi()async { 
todos=await TodoServices().getTodo();
setState(() {});
}
  @override
void initState(){
super.initState();
getTodosFromApi();

}
  Widget build(BuildContext context) {
    
    return Scaffold(
appBar: AppBar(),
body:  ListView.builder(
        itemCount: todos.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(title: Text(todos[index].title ??'--'),) ;
    }) ,);
  }
}

