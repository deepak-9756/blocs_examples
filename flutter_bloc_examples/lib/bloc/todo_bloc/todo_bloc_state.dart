part of 'todo_bloc_bloc.dart';

@immutable
sealed class TodoBlocState {}

class TodoBlocInitial extends TodoBlocState {
  final List<String> todos;

  TodoBlocInitial({this.todos = const []});

  TodoBlocInitial copyWith({List<String>? todos}) {
    return TodoBlocInitial(todos: todos ?? this.todos);
  }
}
