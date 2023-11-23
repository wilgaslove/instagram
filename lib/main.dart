import 'package:flutter/material.dart';

import 'story_widget.dart';
import 'post_widget.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter instagram',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor:Colors.white,
        appBar: AppBar(
          // barre de navigation
          backgroundColor: Colors.white,
          elevation: 0,
          leading: IconButton(
            // leading permet de préciser un widget à gauche.
            onPressed: () {},
            icon: const Icon(
              Icons.camera_alt_outlined,
              color: Colors.black,
            ),
          ),
          title: Align(
            alignment: Alignment.center, 
            child: Image.asset(
            'images/instagram-log.png',
            height: 60,
          ), 
          ),
          actions: [
            IconButton(
              // leading permet de préciser un widget à gauche.
              onPressed: () {},
              icon: const Icon(
                Icons.send_outlined,
                color: Colors.black,
              ),
            ),
          ],
        ),

// Corps de mon contenu
        body: SingleChildScrollView(child: Column(
          children:  [
            StoryWidget(),
            PostWidget(),
          ],
        ),
        ),


        // barre de navigation bas
       bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey.shade700,
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home',),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search',),
          BottomNavigationBarItem(icon: Icon(Icons.camera_alt_outlined), label: 'Add Photo',),
          BottomNavigationBarItem(icon: Icon(Icons.favorite_border), label: 'Favorie',),
          BottomNavigationBarItem(icon: Icon(Icons.person_outline), label: 'Profil',),
          ],
          ),
      ),
    );
  }
}
