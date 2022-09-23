import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:toonflix_app/Providers/theme_provider.dart';
import 'package:toonflix_app/Screens/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => ThemeProvider()),
      ],
      child: Builder(builder: (BuildContext context) {
        final themeChanger = Provider.of<ThemeProvider>(context);
        return MaterialApp(
          title: 'Toonflix',
          debugShowCheckedModeBanner: false,
          themeMode: themeChanger.themeMode,
          theme: ThemeData(
            fontFamily: "Poppins",
            primarySwatch: Colors.red,
            scaffoldBackgroundColor: Colors.white,
            textTheme: const TextTheme(
              titleMedium: TextStyle(
                color: Colors.black,
              ),
              bodySmall: TextStyle(
                color: Colors.black,
              ),
            ),
          ),
          darkTheme: ThemeData(
            fontFamily: "Poppins",
            primarySwatch: Colors.red,
            scaffoldBackgroundColor: Colors.black,
            textTheme: const TextTheme(
              titleMedium: TextStyle(
                color: Colors.white,
              ),
              bodySmall: TextStyle(
                color: Colors.black,
              ),
              bodyMedium: TextStyle(
                color: Colors.black,
              ),
              bodyLarge: TextStyle(
                color: Colors.black,
              ),
            ),
            dialogTheme: const DialogTheme(
              backgroundColor: Color(0xFF515252),
            ),
          ),
          home: const SplashScreen(),
        );
      }),
    );
  }
}
