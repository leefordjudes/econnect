import 'package:econnect/ui/core/theme/theme.dart';
import 'package:econnect/ui/home/provider/home_screen_provider.dart';
import 'package:econnect/ui/home/widgets/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => HomeScreenProvider()),
        ChangeNotifierProvider(create: (context) => AppTheme()),
      ],
      child: Builder(
        builder: (context) {
          return MaterialApp(
            title: 'EConnect - Tamilnad Mercantile Bank Ltd',
            theme: context.watch<AppTheme>().themeData(),
            darkTheme: context.watch<AppTheme>().themeData(),
            debugShowCheckedModeBanner: false,
            home: const HomeScreen(),
          );
        },
      ),
    );
  }
}
