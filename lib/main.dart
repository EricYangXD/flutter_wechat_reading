import 'package:beauty_flutter/tab_navigator.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '电影海报实例',
      home: Scaffold(
        appBar: AppBar(
          title: Text("电影海报实例"),
        ),
//        body: GridView.count(
//          crossAxisCount: 3,
//          crossAxisSpacing: 10,
//          padding: EdgeInsets.all(10),
//          children: <Widget>[
//            Text("I am a genius",style: TextStyle(color: Colors.red,fontSize: 16),),
//            Text("I am a genius",style: TextStyle(color: Colors.red,fontSize: 16),),
//            Text("I am a genius",style: TextStyle(color: Colors.red,fontSize: 16),),
//            Text("I am a genius",style: TextStyle(color: Colors.red,fontSize: 16),),
//            Text("I am a genius",style: TextStyle(color: Colors.red,fontSize: 16),),
//            Text("I am a genius",style: TextStyle(color: Colors.red,fontSize: 16),),
//            Text("I am a genius",style: TextStyle(color: Colors.red,fontSize: 16),),
//          ],
//        ),
        body: GridView(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            mainAxisSpacing: 2, //主轴
            crossAxisSpacing: 2, //副轴
            childAspectRatio: 0.6,//宽高比
          ),
          children: <Widget>[
            Image.network(
              'http://www.devio.org/io/flutter_beauty/book_cover/51VykQqGq9L._SY346_.jpg',
              fit: BoxFit.cover,
            ),
            Image.network(
              'http://www.devio.org/io/flutter_beauty/book_cover/41APiBzC41L.jpg',
              fit: BoxFit.cover,
            ),
            Image.network(
              'http://www.devio.org/io/flutter_beauty/book_cover/51M6M87AXOL.jpg',
              fit: BoxFit.cover,
            ),
            Image.network(
              'http://www.devio.org/io/flutter_beauty/book_cover/51oIE7H5gnL.jpg',
              fit: BoxFit.cover,
            ),
            Image.network(
              'http://www.devio.org/io/flutter_beauty/book_cover/51vzcX1U1FL.jpg',
              fit: BoxFit.cover,
            ),
            Image.network(
              'http://www.devio.org/io/flutter_beauty/book_cover/517DW6EbhGL.jpg',
              fit: BoxFit.cover,
            ),
            Image.network(
              'http://www.devio.org/io/flutter_beauty/book_cover/41APiBzC41L.jpg',
              fit: BoxFit.cover,
            ),
            Image.network(
              'http://www.devio.org/io/flutter_beauty/book_cover/51M6M87AXOL.jpg',
              fit: BoxFit.cover,
            ),
            Image.network(
              'http://www.devio.org/io/flutter_beauty/book_cover/517DW6EbhGL.jpg',
              fit: BoxFit.cover,
            ),Image.network(
              'http://www.devio.org/io/flutter_beauty/book_cover/51VykQqGq9L._SY346_.jpg',
              fit: BoxFit.cover,
            ),
            Image.network(
              'http://www.devio.org/io/flutter_beauty/book_cover/41APiBzC41L.jpg',
              fit: BoxFit.cover,
            ),
            Image.network(
              'http://www.devio.org/io/flutter_beauty/book_cover/51M6M87AXOL.jpg',
              fit: BoxFit.cover,
            ),
            Image.network(
              'http://www.devio.org/io/flutter_beauty/book_cover/51oIE7H5gnL.jpg',
              fit: BoxFit.cover,
            ),
            Image.network(
              'http://www.devio.org/io/flutter_beauty/book_cover/51vzcX1U1FL.jpg',
              fit: BoxFit.cover,
            ),
            Image.network(
              'http://www.devio.org/io/flutter_beauty/book_cover/517DW6EbhGL.jpg',
              fit: BoxFit.cover,
            ),
            Image.network(
              'http://www.devio.org/io/flutter_beauty/book_cover/41APiBzC41L.jpg',
              fit: BoxFit.cover,
            ),
            Image.network(
              'http://www.devio.org/io/flutter_beauty/book_cover/51M6M87AXOL.jpg',
              fit: BoxFit.cover,
            ),
            Image.network(
              'http://www.devio.org/io/flutter_beauty/book_cover/517DW6EbhGL.jpg',
              fit: BoxFit.cover,
            ),Image.network(
              'http://www.devio.org/io/flutter_beauty/book_cover/51VykQqGq9L._SY346_.jpg',
              fit: BoxFit.cover,
            ),
            Image.network(
              'http://www.devio.org/io/flutter_beauty/book_cover/41APiBzC41L.jpg',
              fit: BoxFit.cover,
            ),
            Image.network(
              'http://www.devio.org/io/flutter_beauty/book_cover/51M6M87AXOL.jpg',
              fit: BoxFit.cover,
            ),
            Image.network(
              'http://www.devio.org/io/flutter_beauty/book_cover/51oIE7H5gnL.jpg',
              fit: BoxFit.cover,
            ),
            Image.network(
              'http://www.devio.org/io/flutter_beauty/book_cover/51vzcX1U1FL.jpg',
              fit: BoxFit.cover,
            ),
            Image.network(
              'http://www.devio.org/io/flutter_beauty/book_cover/517DW6EbhGL.jpg',
              fit: BoxFit.cover,
            ),
            Image.network(
              'http://www.devio.org/io/flutter_beauty/book_cover/41APiBzC41L.jpg',
              fit: BoxFit.cover,
            ),
            Image.network(
              'http://www.devio.org/io/flutter_beauty/book_cover/51M6M87AXOL.jpg',
              fit: BoxFit.cover,
            ),
            Image.network(
              'http://www.devio.org/io/flutter_beauty/book_cover/517DW6EbhGL.jpg',
              fit: BoxFit.cover,
            ),
          ],
        ),
      ),
//      home: TabNavigator(),
    );
  }
}
