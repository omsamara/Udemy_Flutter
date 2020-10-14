import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  YoutubePlayerController _controller = YoutubePlayerController(
      initialVideoId: 'BE9ATY2Ygas', // id youtube video
      flags: YoutubePlayerFlags(
        autoPlay: true,
        mute: false,
      ));

  int _page = 0;
  GlobalKey _bottomNavigationKey = GlobalKey();
  double buttonHeight = 100;
  double fontSize = 18;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: CurvedNavigationBar(
          color: Color(0xffFE4646),
          backgroundColor: Colors.white,
          key: _bottomNavigationKey,
          items: <Widget>[
            Icon(Icons.add, size: 30),
            Icon(Icons.list, size: 30),
            Icon(Icons.compare_arrows, size: 30),
          ],
          onTap: (index) {
            setState(() {
              _page = index;
            });
          },
        ),
        body: Container(
          //Stick the video player here
          color: Colors.grey[400],
          child: Column(
            children: <Widget>[
              YoutubePlayer(
                controller: _controller,
                showVideoProgressIndicator: true,
                onReady: () {
                  print('Player is ready');
                },
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      SizedBox(
                        width: double.infinity,
                        height: buttonHeight,
                        child: RaisedButton(
                          color: Colors.white,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Lawn mower dreams of the moon',
                                style: TextStyle(fontSize: 18),
                              ),
                              Align(
                                alignment: Alignment.centerRight,
                                child:
                                    Icon(Icons.play_circle_outline, size: 30),
                              ),
                            ],
                          ),
                          onPressed: () {
                            // Load lawn mower dreams of the moon
                            _controller.load('OfVh1v7GGKY');
                          },
                        ),
                      ),
                      SizedBox(
                        width: double.infinity,
                        height: buttonHeight,
                        child: RaisedButton(
                          color: Colors.white,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Lawn mower dreams of the moon',
                                style: TextStyle(fontSize: 18),
                              ),
                              Align(
                                alignment: Alignment.centerRight,
                                child:
                                    Icon(Icons.play_circle_outline, size: 30),
                              ),
                            ],
                          ),
                          onPressed: () {
                            // Load lawn mower dreams of the moon
                            _controller.load('OfVh1v7GGKY');
                          },
                        ),
                      ),
                      SizedBox(
                        width: double.infinity,
                        height: buttonHeight,
                        child: RaisedButton(
                          color: Colors.white,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Lawn mower dreams of the moon',
                                style: TextStyle(fontSize: 18),
                              ),
                              Align(
                                alignment: Alignment.centerRight,
                                child:
                                    Icon(Icons.play_circle_outline, size: 30),
                              ),
                            ],
                          ),
                          onPressed: () {
                            // Load lawn mower dreams of the moon
                            _controller.load('OfVh1v7GGKY');
                          },
                        ),
                      ),
                      SizedBox(
                        width: double.infinity,
                        height: buttonHeight,
                        child: RaisedButton(
                          color: Colors.white,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Lawn mower dreams of the moon',
                                style: TextStyle(fontSize: 18),
                              ),
                              Align(
                                alignment: Alignment.centerRight,
                                child:
                                    Icon(Icons.play_circle_outline, size: 30),
                              ),
                            ],
                          ),
                          onPressed: () {
                            // Load lawn mower dreams of the moon
                            _controller.load('OfVh1v7GGKY');
                          },
                        ),
                      ),
                      SizedBox(
                        width: double.infinity,
                        height: buttonHeight,
                        child: RaisedButton(
                          color: Colors.white,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Lawn mower dreams of the moon',
                                style: TextStyle(fontSize: 18),
                              ),
                              Align(
                                alignment: Alignment.centerRight,
                                child:
                                    Icon(Icons.play_circle_outline, size: 30),
                              ),
                            ],
                          ),
                          onPressed: () {
                            // Load lawn mower dreams of the moon
                            _controller.load('OfVh1v7GGKY');
                          },
                        ),
                      ),
                      SizedBox(
                        width: double.infinity,
                        height: buttonHeight,
                        child: RaisedButton(
                          color: Colors.white,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Lawn mower dreams of the moon',
                                style: TextStyle(fontSize: 18),
                              ),
                              Align(
                                alignment: Alignment.centerRight,
                                child:
                                    Icon(Icons.play_circle_outline, size: 30),
                              ),
                            ],
                          ),
                          onPressed: () {
                            // Load lawn mower dreams of the moon
                            _controller.load('OfVh1v7GGKY');
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
