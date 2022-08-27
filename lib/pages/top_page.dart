//import 'dart:html';

import 'package:flutter/material.dart';
//import 'package:google_fonts/google_fonts.dart';
import 'profile.dart';

class TopPage extends StatefulWidget {
  const TopPage({Key? key}) : super(key: key);

  @override
  State<TopPage> createState() => _TopPageState();
}

class _TopPageState extends State<TopPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: AppBar(
        //title: Text("Narihiro's Room"),
      //),
      body: Center(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 70),
              child: Container(
                //color:Colors.blue,
                width: 600,
                height: 300,
                child: Image.asset(
                    "images/kinkazan.jpg",
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              child: const Text(
                  "2022/8/19 岐阜の金華山山頂にて。地元に生まれてよかったと思わせてくれる景色。",
              ),

            ),
            Padding(
              padding: const EdgeInsets.only(top: 30.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 100,
                    height: 100,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          fit: BoxFit.fill,
                          image: AssetImage("images/profile.jpg"))
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left:15.0),
                    child: Container(
                      child: const Text(
                        "Narihiro Suzuoki",
                        style: TextStyle(
                          fontSize: 32
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top:30.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left:0.0),
                    child: TextButton(
                      style: ButtonStyle(
                        foregroundColor: MaterialStateProperty.all(Colors.indigoAccent)
                      ),
                      child: const Text("Profile"),
                      onPressed: () {
                        //Navigator.of(context).push(MaterialPageRoute(builder: (_) => const Profile()));
                        Navigator.of(context).push(
                          PageRouteBuilder(
                              pageBuilder: (context, animation, secondaryAnimation) {
                                return Profile();
                              },
                            transitionsBuilder: (context, animation, secondaryAnimation, child) {
                                const double begin = 0.0;
                                const double end = 1.0;
                                Animatable<double> tween = Tween(begin:begin, end:end)
                                    .chain(CurveTween(curve: Curves.easeInOut));
                                Animation<double> doubleAnimation = animation.drive(tween);
                                return FadeTransition(
                                  opacity: doubleAnimation,
                                  child: child,
                                );
                            },
                          ),
                        );
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left:50.0),
                    child: TextButton(
                      style: ButtonStyle(
                        foregroundColor: MaterialStateProperty.all(Colors.indigoAccent)
                      ),
                      child: const Text('Programming'),
                      onPressed: () {},
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left:50.0),
                    child: TextButton(
                      style: ButtonStyle(
                          foregroundColor: MaterialStateProperty.all(Colors.indigoAccent)
                      ),
                      child: const Text("Piano"),
                      onPressed: () {},
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left:50.0),
                    child: TextButton(
                      style: ButtonStyle(
                          foregroundColor: MaterialStateProperty.all(Colors.indigoAccent)
                      ),
                      child: const Text("Inquiry"),
                      onPressed: () {},
                    ),
                  ),
                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}
