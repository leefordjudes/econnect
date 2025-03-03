// ignore_for_file: use_build_context_synchronously

import 'package:econnect/ui/home/provider/home_screen_provider.dart';
import 'package:econnect/ui/home/widgets/home_screen_footer.dart';
import 'package:econnect/ui/home/widgets/home_screen_header.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
    Provider.of<HomeScreenProvider>(context, listen: false).currentDate();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          children: [
            HomeScreenHeader(),
            Expanded(child: Column()),
            HomeScreenFooter(),
          ],
        ),
      ),
    );
  }
}
