import 'package:flutter/material.dart';


class HomeScreen extends StatelessWidget {
   const HomeScreen({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            ElevatedButton(
              onPressed: () {
              },
              child: const Text("Get products"),
            ),
            ElevatedButton(
              onPressed: () async {
              },
              child: const Text("Print products"),
            )
          ],
        ),
      ),
    );
  }

}
