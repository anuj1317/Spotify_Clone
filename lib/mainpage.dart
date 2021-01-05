import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class Mainpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [Color.fromRGBO(40, 96, 65, 7.0), Color(0xFF191414)],
              begin: Alignment.topLeft,
              end: FractionalOffset(0.3, 0.3))),
      child: ListView(
        children: <Widget>[
          SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              //mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Padding(padding: EdgeInsets.all(15)),
                Container(
                  height: 200,
                  child: Column(
                    children: <Widget>[
                      Text(
                        "Recently Played",
                        style: TextStyle(
                            color: Colors.white.withOpacity(1.0),
                            fontSize: 23.0,
                            fontFamily: 'SpotifyFont',
                            fontWeight: FontWeight.bold),
                      ),
                      Padding(padding: EdgeInsets.all(10)),
                      Container(
                        height: 150,
                        child: ListView.builder(
                          itemCount: 10,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (BuildContext context, int index) {
                            return Column(
                              children: <Widget>[
                                SizedBox(
                                  height: 120,
                                  width: 130,
                                  child: Image(
                                    image: NetworkImage(
                                        'https://d2ct9xspam8wud.cloudfront.net/blog/2019/10/14162246/dreamer-1024x1024.jpg'),
                                    fit: BoxFit.fitHeight,
                                  ),
                                ),
                                Padding(padding: EdgeInsets.all(2)),
                                Text(
                                  'Smile',
                                  style: TextStyle(
                                    color: Colors.white.withOpacity(1.0),
                                    fontSize: 10,
                                    fontFamily: 'SpotifyFont',
                                  ),
                                )
                              ],
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 180,
                  child: Column(
                    children: <Widget>[
                      Text(
                        'Made for You',
                        style: TextStyle(
                            color: Colors.white.withOpacity(1.0),
                            fontSize: 20,
                            fontFamily: 'SpotifyFont',
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 150,
                        width: 160,
                        child: Image.network(
                            'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQA_YPnwwHGOJz7-05NFk6u5MsbIk7pNjqOqA&usqp=CAU'),
                      ),
                      Text(
                        'Songs you loved the most',
                        style: TextStyle(
                            color: Colors.white70,
                            fontSize: 8,
                            fontFamily: 'SpotifyFont',
                            fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 200,
                  child: Column(
                    children: <Widget>[
                      Text(
                        "Recommendations",
                        style: TextStyle(
                            color: Colors.white.withOpacity(1.0),
                            fontSize: 23.0,
                            fontFamily: 'SpotifyFont',
                            fontWeight: FontWeight.bold),
                      ),
                      Padding(padding: EdgeInsets.all(10)),
                      Container(
                        height: 150,
                        child: ListView.builder(
                          itemCount: 8,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (BuildContext context, int index) {
                            return Column(
                              children: <Widget>[
                                SizedBox(
                                  height: 120,
                                  width: 130,
                                  child: Image(
                                    image: NetworkImage(images[index]),
                                    fit: BoxFit.fitHeight,
                                  ),
                                ),
                                Padding(padding: EdgeInsets.all(2)),
                                Text(
                                  names[index],
                                  style: TextStyle(
                                    color: Colors.white.withOpacity(1.0),
                                    fontSize: 10,
                                    fontFamily: 'SpotifyFont',
                                  ),
                                )
                              ],
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

List<String> images = [
  'https://fiverr-res.cloudinary.com/images/q_auto,f_auto/gigs2/113280551/original/c2bdc16baa7a5361702738890650b2674b5cd3db/do-cover-art-for-your-next-single-or-spotify-playlist.jpg',
  'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcSEc4ajMGrMXJUyM-AjWwuOsDXosvTVf1q7Pg&usqp=CAU',
  'https://media.npr.org/assets/img/2019/10/11/jazznight_wide-84b0822a7bee05759ccef8b496fcb5fbe4e7bec9-s800-c85.jpg',
  'https://edm.com/.image/t_share/MTUzMTY2MTQxNzczMDYzODAw/night-sky-cover.jpg',
  'https://fiverr-res.cloudinary.com/images/q_auto,f_auto/gigs2/113280551/original/c2bdc16baa7a5361702738890650b2674b5cd3db/do-cover-art-for-your-next-single-or-spotify-playlist.jpg',
  'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcSEc4ajMGrMXJUyM-AjWwuOsDXosvTVf1q7Pg&usqp=CAU',
  'https://media.npr.org/assets/img/2019/10/11/jazznight_wide-84b0822a7bee05759ccef8b496fcb5fbe4e7bec9-s800-c85.jpg',
  'https://edm.com/.image/t_share/MTUzMTY2MTQxNzczMDYzODAw/night-sky-cover.jpg'
];

List<String> names = [
  "Top hits",
  'Retro hits',
  'Bollywood',
  'Workout',
  'Trending',
  'Bollywood',
  'Workout',
  'Trending',
];
