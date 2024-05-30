import 'package:flutter/material.dart';
import 'package:store_screen/screen.dart';

void main()
{
  runApp(const StoreApp());
}
class StoreApp extends StatelessWidget {
  const StoreApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ScreenApp(),
    );
  }
}