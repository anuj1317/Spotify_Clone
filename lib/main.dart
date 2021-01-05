import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:spotify_clone1/mainpage.dart';
import 'search.dart';
import 'package:spotify_clone1/Library.dart';
import 'premium.dart';

void main() => runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  home: Homepage(),
  theme: ThemeData.dark(),

));

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: show(index),
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
          canvasColor: Colors.grey[900],
        ),
        child: BottomNavigationBar(
          currentIndex: index,
          type: BottomNavigationBarType.fixed,
          showUnselectedLabels: true,
          unselectedItemColor: Colors.white54,
          selectedItemColor: Colors.white,
          onTap: ((int x)
          {
            setState(() {
             index = x;
             show(index);
            });
          }),
          items: [
            new BottomNavigationBarItem(icon: Icon(Icons.home),
              label: 'Home'
            ),
            new BottomNavigationBarItem(icon: Icon(Icons.search),
                label: 'Search'
            ),
            new BottomNavigationBarItem(icon: Icon(Icons.library_music),
                label: 'Your Library'
            ),
            new BottomNavigationBarItem(icon: Icon(FontAwesomeIcons.spotify),
                label: 'Premium'
            ),

          ],
        ),
      ),
    );
  }
}

Widget show(int index)
{
  switch(index)
      {
    case 0: return Mainpage();
    break;
    case 1: return Search();
    break;
    case 2: return Library();
    break;
    case 3: return Premium();
    break;
      }
}



