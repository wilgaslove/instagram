//import 'dart:ffi';

import 'package:flutter/material.dart';

class StoryWidget extends StatelessWidget {
  StoryWidget({Key?key}): super(key: key);

  final List storyItems = [//déclaration de variable pour contenir des données
    {
      "pseudo": "dember",
      "photo": "images/profil/dember.jpg", 
    },
    {
      "pseudo": "elisabeth_keen",
      "photo": "images/profil/elisabeth_keen.jpg", 
    },
    {
      "pseudo": "harold_cooper",
      "photo": "images/profil/harold_cooper.jpg", 
    },
    {
      "pseudo": "mr_kaplan",
      "photo": "images/profil/mr_kaplan.jpg", 
    },
    {
      "pseudo": "reddington",
      "photo": "images/profil/reddington.jpg", 
    },
    {
      "pseudo": "resleur",
      "photo": "images/profil/resleur.jpg", 
    },
    {
      "pseudo": "tom_keen",
      "photo": "images/profil/tom_keen.jpg", 
    },
    {
      "pseudo": "Olaïkè",
      "photo": "images/profil/willy_familly.jpg", 
    },
    {
      "pseudo": "Dr_Love",
      "photo": "images/profil/willy.jpg", 
    },
    {
      "pseudo": "Cécile",
      "photo": "images/profil/cecile.jpg", 
    }

  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView( // permet de faire le scrolle vertical.
      scrollDirection: Axis.horizontal,// pour le scrolle horizontal
      child: Row(
        children: storyItems.map((story)  {
           return  Container(
            margin: const EdgeInsets.symmetric(horizontal: 5),
            child:Column(
              children: [
               Stack(
                alignment: Alignment.center,
                children: [
                  Image.asset(
                    'images/images.png',
                    height: 80,
                  ),
                  
                 CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 30,
                  backgroundImage: AssetImage(story['photo']),
                )
               ],
               ),

                const SizedBox(height: 8),
                Text(story['pseudo'],
              maxLines: 1,
              style: const TextStyle(fontSize: 12),
                ),
              ],
            ),
          ); 
        },).toList(),
        
        
      ),
    );
  }
}