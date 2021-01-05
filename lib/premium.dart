import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';

class Premium extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                padding: EdgeInsets.all(10),
                margin:EdgeInsets.symmetric(horizontal: 10),
                child: Text('Try Premium free for 1',style: TextStyle(color: Colors.white,fontSize: 25.0,fontFamily: 'SpotifyFont',fontWeight: FontWeight.bold),),
              ),
              Container(
                //padding: EdgeInsets.all(20),
                margin:EdgeInsets.symmetric(horizontal: 15),
                child: Text('month',style: TextStyle(color: Colors.white,fontSize: 25.0,fontFamily: 'SpotifyFont',fontWeight: FontWeight.bold),),
              ),

              Padding(padding: EdgeInsets.all(10)),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 30),
                height: 150,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children:<Widget> [
                    Container(
                      height: 150,
                      width: 160,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.horizontal(left: Radius.circular(20),right: Radius.zero),
                        color: Colors.grey
                      ),
                      child: Column(
                        children:<Widget> [
                          Padding(padding: EdgeInsets.all(10)),
                          Text('FREE',style: TextStyle(color: Colors.white,fontSize: 12.0,fontFamily: 'SpotifyFont',fontWeight: FontWeight.bold),),
                          SizedBox(
                            height: 40,
                          ),
                          Text('Ad breaks',style: TextStyle(color: Colors.white,fontSize: 20.0,fontFamily: 'SpotifyFont',fontWeight: FontWeight.bold),),

                        ],
                      ),
                    ),
                    Container(
                      height: 150,
                      width: 160,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.horizontal(right: Radius.circular(20),left: Radius.zero),
                          color: Colors.green
                      ),
                      child: Column(
                        children:<Widget> [
                          Padding(padding: EdgeInsets.all(10)),
                          Text('PREMIUM',style: TextStyle(color: Colors.white,fontSize: 12.0,fontFamily: 'SpotifyFont',fontWeight: FontWeight.bold),),
                          SizedBox(
                            height: 40,
                          ),
                          Text('Ad-free music',style: TextStyle(color: Colors.white,fontSize: 20.0,fontFamily: 'SpotifyFont',fontWeight: FontWeight.bold),),

                        ],
                      ),
                    ),

                    SizedBox(width: 15,),

                    Container(
                      height: 150,
                      width: 160,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.horizontal(left: Radius.circular(20),right: Radius.zero),
                          color: Colors.grey
                      ),
                      child: Column(
                        children:<Widget> [
                          Padding(padding: EdgeInsets.all(10)),
                          Text('FREE',style: TextStyle(color: Colors.white,fontSize: 12.0,fontFamily: 'SpotifyFont',fontWeight: FontWeight.bold),),
                          SizedBox(
                            height: 40,
                          ),
                          Text('Play in shuffle',style: TextStyle(color: Colors.white,fontSize: 20.0,fontFamily: 'SpotifyFont',fontWeight: FontWeight.bold),),

                        ],
                      ),
                    ),
                    Container(
                      height: 150,
                      width: 160,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.horizontal(right: Radius.circular(20),left: Radius.zero),
                          color: Colors.green
                      ),
                      child: Column(
                        children:<Widget> [
                          Padding(padding: EdgeInsets.all(10)),
                          Text('PREMIUM',style: TextStyle(color: Colors.white,fontSize: 12.0,fontFamily: 'SpotifyFont',fontWeight: FontWeight.bold),),
                          SizedBox(
                            height: 40,
                          ),
                          Text('Play any song',style: TextStyle(color: Colors.white,fontSize: 20.0,fontFamily: 'SpotifyFont',fontWeight: FontWeight.bold),),

                        ],
                      ),
                    ),

                    SizedBox(width: 15,),

                    Container(
                      //margin: EdgeInsets.symmetric(horizontal: 10),
                      height: 150,
                      width: 160,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.horizontal(left: Radius.circular(20),right: Radius.zero),
                          color: Colors.grey
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children:<Widget> [
                          Padding(padding: EdgeInsets.all(10)),
                          Text('FREE',style: TextStyle(color: Colors.white,fontSize: 12.0,fontFamily: 'SpotifyFont',fontWeight: FontWeight.bold),),
                          SizedBox(
                            height: 40,
                          ),
                          Text('6 skips per hour',style: TextStyle(color: Colors.white,fontSize: 20.0,fontFamily: 'SpotifyFont',fontWeight: FontWeight.bold),),

                        ],
                      ),
                    ),
                    Container(
                      height: 150,
                      width: 160,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.horizontal(right: Radius.circular(20),left: Radius.zero),
                          color: Colors.green
                      ),
                      child: Column(
                        children:<Widget> [
                          Padding(padding: EdgeInsets.all(10)),
                          Text('PREMIUM',style: TextStyle(color: Colors.white,fontSize: 12.0,fontFamily: 'SpotifyFont',fontWeight: FontWeight.bold),),
                          SizedBox(
                            height: 40,
                          ),
                          Text('Unlimited skips',style: TextStyle(color: Colors.white,fontSize: 20.0,fontFamily: 'SpotifyFont',fontWeight: FontWeight.bold),),

                        ],
                      ),
                    ),


                  ],
                )
              ),
              SizedBox(height: 20,),

              Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20)
                ),
                child: Text('GET PREMIUM',style: TextStyle(color: Colors.black,fontSize: 15.0,fontFamily: 'SpotifyFont',letterSpacing: 2),),
              ),

              SizedBox(height: 10,),

              Container(
                height: 280,
                width: 300,
                decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage('https://ml1bzfawfwhs.i.optimole.com/XRJ40iQ-hsvrDmll/w:298/h:300/q:auto/https://bindassloot.com/wp-content/uploads/2020/05/spotify1.jpeg'),
                      fit: BoxFit.cover
                    )
                    ,
                    borderRadius: BorderRadius.circular(20)
                ),
              ),

              SizedBox(height: 10,),

              Container(
                height: 280,
                width: 300,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage('https://ml1bzfawfwhs.i.optimole.com/XRJ40iQ-hsvrDmll/w:298/h:300/q:auto/https://bindassloot.com/wp-content/uploads/2020/05/spotify1.jpeg'),
                        fit: BoxFit.cover
                    )
                    ,
                    borderRadius: BorderRadius.circular(20)
                ),
              ),

              SizedBox(height: 10,),

              Container(
                height: 280,
                width: 300,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage('https://ml1bzfawfwhs.i.optimole.com/XRJ40iQ-hsvrDmll/w:298/h:300/q:auto/https://bindassloot.com/wp-content/uploads/2020/05/spotify1.jpeg'),
                        fit: BoxFit.cover
                    )
                    ,
                    borderRadius: BorderRadius.circular(20)
                ),
              ),

              SizedBox(height: 10,),

              Container(
                height: 280,
                width: 300,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage('https://ml1bzfawfwhs.i.optimole.com/XRJ40iQ-hsvrDmll/w:298/h:300/q:auto/https://bindassloot.com/wp-content/uploads/2020/05/spotify1.jpeg'),
                        fit: BoxFit.cover
                    )
                    ,
                    borderRadius: BorderRadius.circular(20)
                ),
              ),





            ],
          )
      ),
    );
  }
}