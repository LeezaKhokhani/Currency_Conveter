import 'package:currancyconvter/providers/theme_provider.dart';
import 'package:currancyconvter/views/homePage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider<ThemeProvider>(
        create: (context) => ThemeProvider(),
      )
    ],
    builder: (context, _) {
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        darkTheme: ThemeData(
            backgroundColor: CupertinoColors.darkBackgroundGray,
            textTheme: const TextTheme(
                bodySmall: TextStyle(color: Colors.white, fontSize: 14))),
        theme: ThemeData(
            backgroundColor: CupertinoColors.white,
            textTheme: const TextTheme(
                bodySmall: TextStyle(color: Colors.black, fontSize: 14))),
        themeMode: (Provider.of<ThemeProvider>(context).obj.isDark == false)
            ? ThemeMode.light
            : ThemeMode.dark,
        home: const HomePage(),
      );
    },
  ));
}