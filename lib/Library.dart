import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class Library extends StatefulWidget {
  @override
  _LibraryState createState() => _LibraryState();
}

class _LibraryState extends State<Library> with SingleTickerProviderStateMixin {
  TabController _tabController;
  ScrollController _scrollController;

  @override
  void initState() {
    _tabController = new TabController(length: 3, vsync: this);
    _scrollController = new ScrollController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new PreferredSize(
        preferredSize: Size.fromHeight(90),
        child: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [Color(0xFF414345), Color(0xFF000000)],
                  begin: Alignment.topLeft,
                  end: FractionalOffset(0.2, 0.6))),
          child: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children:<Widget> [
                SizedBox(
                  height: 15,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(
                      width: 10,
                    ),
                    Text('Music',style: TextStyle(color: Colors.white,fontSize: 24.0,fontFamily: 'SpotifyFont',fontWeight: FontWeight.bold),),
                    SizedBox(
                      width: 18,
                    ),
                    Text('Podcasts',style: TextStyle(color: Colors.grey,fontSize: 24.0,fontFamily: 'SpotifyFont',fontWeight: FontWeight.bold),),
                  ],
                ),

                  TabBar(
                    controller: _tabController,
                    indicatorColor: Colors.green,
                    labelPadding: EdgeInsets.symmetric(horizontal: 1.0),
                    labelStyle: TextStyle(
                        color: Colors.white,fontSize: 12,fontFamily: 'SpotifyFont'
                    ),
                    tabs: [
                      Tab(
                          child: Text("Playlist"),
                        ),
                      Tab(
                        child: Text('Artist'),
                      ),
                      Tab(
                        child: Text('Album'),
                      ),
                    ],
                  ),


              ],
            ),

          ),
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          Playlist(),
          Artists(),
          Album()
        ],
      ),

    );
  }
}


//Playlist

class Playlist extends StatefulWidget {
  @override
  _PlaylistState createState() => _PlaylistState();
}

class _PlaylistState extends State<Playlist> {
  List<String> names = ["Feelin good", "Good vibes", "Memories","Feelin good", "Good vibes", "Memories",];

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


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [Color(0xFF414345), Color(0xFF000000)],
                begin: Alignment.topLeft,
                end: FractionalOffset(0.2, 0.6))),
        child: ListView.builder(
            itemCount: names.length,
            itemBuilder: (context, index) {
              return Column(
                children: [
                  ListTile(
                    leading: Image.network(images[index],height: 40,width: 40,fit: BoxFit.fill,),

                    title: Text(names[index],style: TextStyle(color: Colors.white,fontSize: 12,fontFamily: 'SpotifyFont',fontWeight: FontWeight.bold),),
                    subtitle: Text("by Spotify",style: TextStyle(color: Colors.grey,fontSize: 8,fontFamily: 'SpotifyFont',),
                  ),
                  )
                ],

              );

            }),
      ),
    );
  }
}

//Artists

class Artists extends StatefulWidget {
  @override
  _ArtistsState createState() => _ArtistsState();
}

class _ArtistsState extends State<Artists> {
  List<String> names = ["Jassi Gill", "Hardy sandhu", "B Praak","Sidhu Moose wala",];
  List<String> pics = [
    "https://i.pinimg.com/736x/9a/4e/db/9a4edbd656d466b5d2d7cf7144bab5be.jpg",
    "https://upload.wikimedia.org/wikipedia/commons/thumb/8/81/HARDY-1287.jpg/220px-HARDY-1287.jpg",
    "https://timesofindia.indiatimes.com/thumb/msid-70292336,width-1200,height-900,resizemode-4/.jpg",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQfNDojo4FUFPSZrkEhlmIeM50-vBfKclcF1w&usqp=CAU",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [Color(0xFF414345), Color(0xFF000000)],
                begin: Alignment.topLeft,
                end: FractionalOffset(0.2, 0.6))),
        child: ListView.builder(
            itemCount: names.length,
            itemBuilder: (context, index) {
              return Column(
                children: [
                  ListTile(
                    leading:CircleAvatar(
                     backgroundImage: NetworkImage(pics[index]),
              ),

                    title: Text(names[index],style: TextStyle(color: Colors.white,fontSize: 12,fontFamily: 'SpotifyFont',fontWeight: FontWeight.bold),),
                  )
                ],

              );

            }),
      ),
    );
  }
}


//Album

class Album extends StatefulWidget {
  @override
  _AlbumState createState() => _AlbumState();
}

class _AlbumState extends State<Album> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [Color(0xFF414345), Color(0xFF000000)],
                begin: Alignment.topLeft,
                end: FractionalOffset(0.2, 0.6))),
        child: ListView.builder(
            itemCount: 5,
            itemBuilder: (context, index) {
              return Column(
                children: [
                  ListTile(
                    leading: Image.network('https://www.pinkvilla.com/files/pinkvilla-picks-missing-zayn-malik-with-1d-one-direction-this-is-us-is-the-remedy-you-need-amid-quarantine.jpg',height: 40,),

                    title: Text("Albums",style: TextStyle(color: Colors.white,fontSize: 12,fontFamily: 'SpotifyFont',fontWeight: FontWeight.bold),),
                    subtitle: Text("by Spotify",style: TextStyle(color: Colors.grey,fontSize: 8,fontFamily: 'SpotifyFont',),
                    ),
                  )
                ],

              );

            }),
      ),
    );
  }
}
















