import 'package:flutter/material.dart';
// import 'package:flutter_application_2/Home_Screen.dart';
// import 'package:flutter_application_2/app_styles.dart';
import 'package:flutter_application_2/package/models/NotesOperation.dart';
import 'package:flutter_application_2/package/screens/home_screen.dart';
// import 'package:flutter_application_2/size_config.dart';
// import 'package:flutter_svg/flutter_svg.dart';
// import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<NotesOperation>(
      create: (BuildContext context) => NotesOperation(),
      child: MaterialApp(
          theme: ThemeData.dark(),
          debugShowCheckedModeBanner: false,
          home: HomeScreen()),
    );
  }
}
