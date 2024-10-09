part of 'todo_bloc_bloc.dart';

@immutable
sealed class TodoBlocEvent {}

class AddTodo extends TodoBlocEvent {
  String task;
  AddTodo({this.task = ""});
}

class RenameTodo extends TodoBlocEvent {}

class DeleteTodo extends TodoBlocEvent {}
