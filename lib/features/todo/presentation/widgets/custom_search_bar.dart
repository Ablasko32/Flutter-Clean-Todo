import 'package:clean_todo/features/todo/presentation/bloc/todo_bloc.dart';
import 'package:clean_todo/features/todo/presentation/bloc/todo_events.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomSearchBar extends StatelessWidget {
  const CustomSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: 'Search todos...',
        prefixIcon: Icon(Icons.search),
      ),
      onChanged: (value) {
        context.read<TodoBloc>().add(SearchTodosEvent(value));
      },
    );
  }
}
