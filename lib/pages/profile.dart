import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children:  [
            Padding(
              padding: const EdgeInsets.only(top: 70),
              child: Container(
                  child: const Text(
                    "次のページに遷移しました。",
                    style: TextStyle(fontSize: 25.0),
                  ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                    },
                  child: Text("back")
              ),
            ),
          ]
        )
      )
    );
  }
}
