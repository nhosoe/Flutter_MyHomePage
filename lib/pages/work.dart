import 'package:flutter/material.dart';

class Work extends StatefulWidget {
  const Work({Key? key}) : super(key: key);

  @override
  State<Work> createState() => _WorkState();
}

class _WorkState extends State<Work> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 100),
              child: Text(
                "Work",
                style: TextStyle(
                  decoration: TextDecoration.underline,
                  decorationStyle: TextDecorationStyle.double,
                  fontSize: 60.0,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top:10.0),
              child: Container(
                width: 700,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 350,
                      alignment: Alignment.center,
                      color: Colors.yellow,
                      child: const Expanded(
                        child: Text(
                          "Web",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20
                          ),
                        )
                      ),
                    ),
                    Column(
                      children: [
                        Container(
                          width: 350,
                          color: Colors.blue,
                          child: const Expanded(
                              child: Text("・コメダ珈琲店 スマホ向けWebサイト制作"),
                          ),
                        ),
                        Container(
                          width: 350,
                          color: Colors.green,
                          child: Expanded(child: Text("・Wordpressでブログサイト制作")),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: Container(
                width: 700,
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 350,
                        alignment: Alignment.center,
                        color: Colors.pink,
                        child: const Expanded(
                            child: Text(
                              "Analystic",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20
                              ),
                            )
                        ),
                      ),
                      Column(
                        children: [
                          Container(
                            width: 350,
                            color: Colors.purple,
                            child: const Expanded(
                              child: Text("・Twitter上での口コミ効果と商品の売れ行きとの関係"),
                            ),
                          ),
                        ],
                      ),
                    ]
                )
              )
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
                  ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
