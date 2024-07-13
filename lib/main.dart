import 'package:blocc/bloc/counter/counter_bloc.dart';
import 'package:blocc/bloc/image_picker/image_picker_bloc.dart';
import 'package:blocc/ui/counter_screen.dart';
import 'package:blocc/utils/image_picker_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc/switch_example/switch_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(providers: [
      BlocProvider(create: (_) => CounterBloc()),
    BlocProvider(create: (_) => SwitchBloc()),
      BlocProvider(create: (_) => ImagePickerBloc(ImagePickerUtils())),
    ],
        child: MaterialApp(
          title: 'demo',
          theme: ThemeData(
              colorScheme: ColorScheme.fromSeed(seedColor: Colors.blueAccent)
          ),
          home: const CounterScreen(),
        )
      );
  }
}

