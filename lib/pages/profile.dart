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
          //mainAxisSize: MainAxisSize.min,
          children:  [
            const Padding(
              padding: EdgeInsets.only(top: 100),
              child: Text(
                "Profile",
                style: TextStyle(
                  decoration: TextDecoration.underline,
                  decorationStyle: TextDecorationStyle.double,
                  fontSize: 60.0,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top:50),
              child: Container(
                width:500,
                alignment: Alignment.centerLeft,
                child: const Text(
                  "1989　岐阜県岐阜市に生まれる",
                  style: TextStyle(
                    fontSize: 20.0,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top:10),
              child: Container(
                width:500,
                alignment: Alignment.centerLeft,
                child: const Text(
                  "2014　名古屋大学大学院　情報科学研究科 修士課程",
                  style: TextStyle(
                    fontSize: 20.0,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top:10),
              child: Container(
                width:500,
                alignment: Alignment.centerLeft,
                child: const Text(
                  "2014 to present　Sky株式会社",
                  style: TextStyle(
                    fontSize: 20.0,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top:10),
              child: Container(
                width:500,
                alignment: Alignment.centerLeft,
                child: const Text(
                  "2020 叔祖父のところへ養子縁組"
                      "\n    　　　　　　　　　　"
                      "姓が『細江』から『鈴置』へ",
                  style: TextStyle(
                    fontSize: 20.0,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(100.0),
              child: TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                    },
                  child: const Text(
                    "戻る",
                    style: TextStyle(
                      fontSize: 30.0
                    ),
                  )
              ),
            ),
          ]
        )
      )
    );
  }
}
