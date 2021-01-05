import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/services.dart';

class Search extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [Color(0xFF414345), Color(0xFF000000)],
              begin: Alignment.topLeft,
              end: FractionalOffset(0.2, 0.6))),
      child: ListView(
        children:<Widget> [
          SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children:<Widget> [
                Padding(padding: EdgeInsets.all(25)),
                Container(
                  child:Text(
                    "Search",
                    style: TextStyle(
                        color: Colors.white.withOpacity(1.0),
                        fontSize: 45.0,
                        fontFamily: 'SpotifyFont',
                        ),
                  )
                ),
                Padding(padding: EdgeInsets.all(10)),
                Card(
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                  clipBehavior: Clip.antiAlias,
                  child: Container(
                    height: 50.0,
                    width: 390.0,
                    color: Colors.white,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children:<Widget> [
                        Padding(padding: EdgeInsets.only(left:20),),
                        Icon(Icons.search,color: Colors.black,),
                        Padding(padding: EdgeInsets.all(5),),
                        Text('Artists, ',style: TextStyle(color: Colors.black,fontSize: 15.0,fontFamily: 'SpotifyFont'),),
                        Text('songs or',style: TextStyle(color: Colors.black,fontSize: 15.0,fontFamily: 'SpotifyFont'),),
                        Text(' podcasts',style: TextStyle(color: Colors.black,fontSize: 15.0,fontFamily: 'SpotifyFont'),)
                      ],
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding:EdgeInsets.all(10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children:<Widget> [
                        Text('Your top genres',style: TextStyle(color: Colors.white,fontSize: 15.0,fontFamily: 'SpotifyFont'),),
                        GridView.builder(
                          itemCount: 3,
                          gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
                          shrinkWrap: true,
                          controller: ScrollController(keepScrollOffset: false),
                          itemBuilder: (BuildContext context,int index){
                            return GridTile(
                              child: Padding(
                                padding: EdgeInsets.all(5.0),
                                child: Card(
                                  margin: EdgeInsets.symmetric(vertical: 16),
                                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                                  clipBehavior: Clip.antiAlias,
                                  child: Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcRqcydhz-DZUwpXeKrML-KeV1HSFjAhiKup2g&usqp=CAU',fit: BoxFit.fill,),
                                ),
                              ),
                            );
                          },



                        ),

                      ],
                    ),



                  ),
                )


              ],
            ),


          )

        ],
      ),




    );
  }
}
