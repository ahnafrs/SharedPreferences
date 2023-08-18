import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Page1 extends StatefulWidget {
  const Page1({super.key});

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Text("${value}"),
          ],
        ),
      ),
    );
  }

  String? value;
  @override
  initState() {
    loadData();
    super.initState();
  }

  loadData() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    value = sharedPreferences.getString("Ahnaf").toString();
    setState(() {});
  }
}
