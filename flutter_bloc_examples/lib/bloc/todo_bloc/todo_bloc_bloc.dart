import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'todo_bloc_event.dart';
part 'todo_bloc_state.dart';

class TodoBlocBloc extends Bloc<TodoBlocEvent, TodoBlocInitial> {
  TodoBlocBloc() : super(TodoBlocInitial()) {
    on<AddTodo>((event, emit) {
      // TODO: implement event handler
      emit(state.copyWith(todos: [...state.todos, event.task]));
    });
  }
}
