import 'package:counter_app/core/utils/palette.dart';
import 'package:counter_app/src/features/counter/application/counter_provider.dart';
import 'package:counter_app/src/features/counter/presentation/home.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => CounterProvider(),
        )
      ],
      child: MaterialApp(
        title: 'Counter App',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Palette.primarySwatch,
        ),
        home: const CounterPage(),
      ),
    );
  }
}
