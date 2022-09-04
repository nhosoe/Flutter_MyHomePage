import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher_string.dart';
import 'package:youtube/youtube_thumbnail.dart';

class Music extends StatefulWidget {
  const Music({Key? key}) : super(key: key);
  @override
  State<Music> createState() => _MusicState();
}
class _MusicState extends State<Music> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 100),
              child: Text(
                "Music",
                style: TextStyle(
                  decoration: TextDecoration.underline,
                  decorationStyle: TextDecorationStyle.double,
                  fontSize: 60.0,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top:10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: () async {
                      await launchUrlString("https://www.youtube.com/shorts/oR7lofyBj7k");
                    },
                    child: Image.network(YoutubeThumbnail(youtubeId: 'oR7lofyBj7k').small()),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left:10.0),
                    child: Text("2020/3/某日。コロナ流行り始めに話題の星野源さんの『うちで踊ろう』。\n私も影響されてキーボードでセッションに参加。"),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top:10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: () async {
                      await launchUrlString("https://www.youtube.com/shorts/mXrQxmPjY8k");
                    },
                    child: Image.network(YoutubeThumbnail(youtubeId: 'mXrQxmPjY8k').small()),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left:10.0),
                    child: Text("2020/3/14。コロナが流行る前に組んだバンド。\nボーカルの方は「Froots」というラップグループで活動されています。"),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top:10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: () async {
                      await launchUrlString("https://www.youtube.com/shorts/4uJMChhGc4w");
                    },
                    child: Image.network(YoutubeThumbnail(youtubeId: '4uJMChhGc4w').small()),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left:10.0),
                    child: Text("2018/2/11。たまたま一緒に働いていた方が音楽やってたのでデュオ結成。\nボーカルが見つからなくて急遽ドラマーが歌うことに。"),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top:10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: () async {
                      await launchUrlString("https://www.youtube.com/watch?v=GJVzcv2eI-c&t=27s");
                    },
                    child: Image.network(YoutubeThumbnail(youtubeId: 'GJVzcv2eI-c').small()),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left:10.0),
                    child: Text("2015/11/22。アイシン精機の社員さんとバンドを組んでライブ。\nベースは大学院時代のゼミの後輩です。"),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(30.0),
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
          ],
        ),
      ),
    );
  }
}

