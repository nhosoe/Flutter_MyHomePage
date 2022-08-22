import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_home_page/pages/top_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter WebSite',
      theme: ThemeData(
        textTheme: kIsWeb ? GoogleFonts.dotGothic16TextTheme(
          Theme.of(context).textTheme
        ) : null,
      ),
      home: const TopPage(),
    );
  }
}
