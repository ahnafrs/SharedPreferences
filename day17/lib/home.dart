import 'package:day17/page1.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

TextEditingController nameController = TextEditingController();
saveData() async {
  SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
  sharedPreferences.setString("Ahnaf", nameController.text);
  print("${sharedPreferences.getString("Ahnaf")}");
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            TextFormField(
              controller: nameController,
            ),
            MaterialButton(
              color: Colors.red,
              onPressed: () {
                saveData();
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => Page1(),
                ));
              },
              child: Text("Press and Go"),
            )
          ],
        ),
      ),
    );
  }
}
