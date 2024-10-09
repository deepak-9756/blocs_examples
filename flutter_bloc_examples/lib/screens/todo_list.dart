import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_examples/bloc/todo_bloc/todo_bloc_bloc.dart';

class TodoList extends StatefulWidget {
  const TodoList({super.key});

  @override
  State<TodoList> createState() => _TodoListState();
}

class _TodoListState extends State<TodoList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<TodoBlocBloc, TodoBlocInitial>(
        builder: (context, state) {
          return ListView.builder(
              itemCount: state.todos.length,
              itemBuilder: ((context, index) {
                return ListTile(
                  title: Text(state.todos[index]),
                  trailing: Text(index.toString()),
                );
              }));
        },
      ),
      floatingActionButton:
          BlocBuilder<TodoBlocBloc, TodoBlocInitial>(builder: (context, state) {
        return FloatingActionButton(
          onPressed: () {
            debugPrint("hutdksjn${state.todos}");
            context.read<TodoBlocBloc>().add(AddTodo(task: "deepak"));
          },
          child: const Icon(Icons.add),
        );
      }),
    );
  }
}
