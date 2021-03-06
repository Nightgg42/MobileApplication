import 'dart:async';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'package:better_player/better_player.dart';
import 'package:flutter/rendering.dart' show debugPaintSizeEnabled;




void main() {
  debugPaintSizeEnabled = false; // Set to true for visual layout
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final appTitle = 'App Gundam';


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: appTitle,
      home: MyHomePage(title: appTitle),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final String title;

  MyHomePage({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        backgroundColor: Colors.cyan[500],
      ),
     body: Center(child: Column(children: [Image.asset('Img/tenor2.gif'),Text(
        'Hello My App',
        style: TextStyle(
          fontSize: 36,
        ),
      ),],
      )
      ),
      drawer: Drawer(
        // Add a ListView to the drawer. This ensures the user can scroll
        // through the options in the drawer if there isn't enough vertical
        // space to fit everything.
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Text(
                'Gumdam',
                style: TextStyle(fontSize: 40, color: Colors.red,),
              ),
              decoration: BoxDecoration(color: Colors.white,
                image: DecorationImage(image: AssetImage('Img/tenor3.gif'),fit: BoxFit.cover,),
              ),
            ),
            ListTile(
              leading: CircleAvatar(
    backgroundImage: NetworkImage('https://img2.thaipng.com/20180718/brv/kisspng-computer-icons-icon-design-encapsulated-postscript-more-info-icon-5b4fcee4e70c74.9013090315319569649464.jpg'),
  ),
              title: Text('Info'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Page1()),
                );
              },
          ),
            ListTile(
              leading: CircleAvatar(
    backgroundImage: NetworkImage('https://www.pngfind.com/pngs/m/275-2755817_gundam-unicorn-logo-by-lillie-smitham-unicorn-gundam.png'),
  ),
              title: Text('Image Gundam'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Page2()),
                );
              },
            ),
            ListTile(
              leading: CircleAvatar(
    backgroundImage: NetworkImage('https://static.wikia.nocookie.net/gundam/images/8/8d/Logo_Mobile_Suit_Gundam_Unicorn.png/revision/latest?cb=20190104141316'),
  ),
              title: Text('Mobile Suit Gundam Unicorn'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Page3()),
                );
              },
            ),
            ListTile(
              leading: CircleAvatar(
    backgroundImage: NetworkImage('https://www.esvs.org/wp-content/uploads/2019/10/video.jpg'),
  ),
              title: Text('Video'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Page4()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

class Page1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Info'),
        backgroundColor: Colors.red,
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(             
              padding: const EdgeInsets.only(bottom: 10),
              child: Text(
                '???????????????????????? ??????????????????',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 40,
                ),
              ),
            ),
            Text(
              '??????????????????????????? 61020728',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Page2 extends StatelessWidget {
  List<String> images = [
    "https://static.wikia.nocookie.net/gundam/images/f/f0/Rx0uc-ova.jpg/revision/latest?cb=20160225044429",
    "https://wallpaperaccess.com/full/1284027.jpg",
    "https://c4.wallpaperflare.com/wallpaper/398/773/180/mobile-suit-mobile-suit-gundam-unicorn-mech-anime-artwork-hd-wallpaper-preview.jpg",
    "https://wallpapercave.com/wp/wp2736512.jpg",
    "https://wallpapercave.com/wp/ONeLivF.jpg",
    "https://i.pinimg.com/236x/a4/4f/24/a44f24764ef433fcbadf87750f57a9f4.jpg",
    "https://i.pinimg.com/originals/4d/b2/7b/4db27ba9b1f0ecdcef8fda57c6d7abfc.jpg"
    
    

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        
        title: Text('Image Gumdam',style:TextStyle(color: Colors.black,)),backgroundColor: Colors.cyan[500],),
        
        
      body: GridView(
        physics:
            BouncingScrollPhysics(), // if you want IOS bouncing effect, otherwise remove this line
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2), //change the number as you want
        children: images.map((url) {
          return Card(child: Image.network(url));
        }).toList(),
      ),
    );
  }
}

class Page3 extends StatelessWidget {
  @override
  // Widget build(BuildContext context) {
  //   return MaterialApp(
  //     title: 'Flutter layout demo',
  //     home: buildHomePage('Strawberry Pavlova Recipe'),
  //   );
  // }

  Widget build(BuildContext context) {

    final mainImage = Image.network(
      'https://en.gundam.info/series/unicorn/wp-content/themes/series/images/unicorn/top/bg.png',
      width: 200,height: 200,
    );
    
    final titleText = Container(
      padding: EdgeInsets.all(15),
      child: Text(
        'Gundam  Unicorn movie',
        style: TextStyle(
          fontWeight: FontWeight.bold,
          letterSpacing: 0.5,
          fontSize: 25,

        ),
      ),
    );

    final subTitle = Text(
      '?????????????????????????????? ?????????????????????????????????????????? ?????????????????????????????????????????????'
      '??????????????????????????????????????????????????????????????????????????????'
      '????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????s??????????????????',
      //textAlign: TextAlign.center,
      style: TextStyle(
        fontFamily: 'Georgia',
        letterSpacing: 0.5,
        fontSize: 16,
      ),
    );

    // #docregion ratings, stars
    var stars = Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(Icons.star, color: Colors.yellow),
        Icon(Icons.star, color: Colors.yellow),
        Icon(Icons.star, color: Colors.yellow),
        Icon(Icons.star, color: Colors.yellow),
        Icon(Icons.star, color: Colors.grey[500]),
      ],
    );
    // #enddocregion stars

    final ratings = Container(
      padding: EdgeInsets.all(10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          stars,
          Text(
            'by 3,500 users',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w800,
              fontFamily: 'Roboto',
              letterSpacing: 0.5,
              fontSize: 16,
            ),
          ),
        ],
      ),
    );
    // #enddocregion ratings

    // #docregion iconList
    final descTextStyle = TextStyle(
      color: Colors.black,
      fontWeight: FontWeight.w800,
      fontFamily: 'Roboto',
      letterSpacing: 0.5,
      fontSize: 14,
      height: 2,
    );

    // DefaultTextStyle.merge() allows you to create a default text
    // style that is inherited by its child and all subsequent children.
    final iconList = DefaultTextStyle.merge(
      style: descTextStyle,
      child: Container(
        //padding: EdgeInsets.all(20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              children: [
                Icon(Icons.star, color: Colors.black),
                Text('Scored:'),
                Text('8.83'),
              ],
            ),
            Column(
              children: [
                Icon(Icons.timer, color: Colors.black),
                Text('Duration:'),
                Text('Episodes:1-7 ,140 minutes.'),
              ],
            ),
            Column(
              children: [
                Icon(Icons.supervisor_account, color: Colors.black),
                Text('Rating:'),
                Text('PG-13'),
              ],
            ),
          ],
        ),
      ),
    );
    // #enddocregion iconList

    // #docregion leftColumn
    // final Centercolumn = Container(
      
    //   child: Column(
    //     children: [
    //       mainImage,
    //       titleText,
    //       subTitle,
    //       ratings,
    //       iconList,
    //     ],
    //   ),
    // );
    // #enddocregion leftColumn

    

    return Scaffold(
      appBar: AppBar(
        title: Text("Gundam Unicorn ",style:TextStyle(color: Colors.black,)),
        backgroundColor: Colors.cyan[500],
      ),
      // #docregion body
      body: Center(
        child: Container(
      
          child: Card(
            child: Column(
             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                mainImage,
          titleText,
          subTitle,
          ratings,
          iconList,
                Container(
                
                ),
              ],
            ),
          ),
        ),
      ),
      // #enddocregion body
    );
  }
}

// class Page4 extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(),
//       body: Center(
//         child: Text('Page 4'),
//       ),
//     );
//   }
// }

class Page4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('Video'),
          backgroundColor: Color.fromRGBO(62, 194, 177, 20),
        ),
      body: VideoPlayerScreen(),
    );
  }
}

class VideoPlayerScreen extends StatefulWidget {
  VideoPlayerScreen({Key key}) : super(key: key);

  @override
  _VideoPlayerScreenState createState() => _VideoPlayerScreenState();
}

class _VideoPlayerScreenState extends State<VideoPlayerScreen> {
  VideoPlayerController _controller;
  Future<void> _initializeVideoPlayerFuture;

  @override
  void dispose() {
    // Ensure disposing of the VideoPlayerController to free up resources.
    _controller.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // Use a FutureBuilder to display a loading spinner while waiting for the
        // VideoPlayerController to finish initializing.
        body: AspectRatio(
          aspectRatio: 16 / 9,
          child: BetterPlayerPlaylist(
              betterPlayerConfiguration: BetterPlayerConfiguration(),
              betterPlayerPlaylistConfiguration:
                  BetterPlayerPlaylistConfiguration(),
              betterPlayerDataSourceList: createDataSet()),
        ));
  }
}

List<BetterPlayerDataSource> createDataSet() {
  List dataSourceList = List<BetterPlayerDataSource>();
  dataSourceList.add(
    BetterPlayerDataSource(
      BetterPlayerDataSourceType.network,
      "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerBlazes.mp4",
    ),
  );
  dataSourceList.add(
    BetterPlayerDataSource(BetterPlayerDataSourceType.network,
        "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4"),
  );
  dataSourceList.add(
    BetterPlayerDataSource(BetterPlayerDataSourceType.network,
        "https://flutter.github.io/assets-for-api-docs/assets/videos/butterfly.mp4"),
  );
  return dataSourceList;
}
 //icon
 