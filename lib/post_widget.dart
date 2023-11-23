import 'package:flutter/material.dart';

class PostWidget extends StatelessWidget {
   PostWidget({Key? key}): super(key: key);

  final List postItems = [
    {
      "pseudo": "La Douce Reine",
      "photo": "images/post/amour.jpg",
      "photoProfil": "images/profil/cecile.jpg",
      "description": "L'amour a tous les droits et nous tous les devoirs"
    },
     {
      "pseudo": "Red",
      "photo": "images/post/imagesgerard.jpg",
      "photoProfil": "images/profil/reddington.jpg",
      "description": " La vengeance n'est pas une passion, c'est une maladie qui ronge votre esprit et empoisonne votre âme"
    },
     {
      "pseudo": "Keen",
      "photo": "images/post/keen.jpg",
      "photoProfil": "images/profil/elisabeth_keen.jpg",
      "description": "Le simple fait que vous soyez tous réunis ici indique à quel point nous partageons le même degré d'inquiétude pour l'avenir et la sécurité d'Elizabeth Keen."
    },
     {
      "pseudo": "Dr_Love",
      "photo": "images/post/willy_keve.jpg",
      "photoProfil": "images/profil/willy.JPG",
      "description": "mission kévé 2019"
    },
     {
      "pseudo": "Prégo",
      "photo": "images/post/kpahor.jpg",
      "photoProfil": "images/profil/talon.jpg",
      "description": "Le Bénin est un pays de pagaille."
    },
     {
      "pseudo": "Nina",
      "photo": "images/post/angelique.jpg",
      "photoProfil": "images/profil/dessin.jpg",
      "description": "Cette dame est un exemple pour la jeunesse"
    },
     {
      "pseudo": "Dr_Love",
      "photo": "images/post/talonP.jpg",
      "photoProfil": "images/profil/willy.JPG",
      "description": "J'aime beaucoup ce monsieur"
    },
     {
      "pseudo": "cece",
      "photo": "images/post/cecile_willy.jpg",
      "photoProfil": "images/profil/cecile.jpg",
      "description": "lorsque l'amour parle, les autres voix n'ont plus d'importance"
    },
     {
      "pseudo": "la mignonne",
      "photo": "images/post/hotel.jpg",
      "photoProfil": "images/profil/dessin.jpg",
      "description": ""
    },
     {
      "pseudo": "Dember",
      "photo": "images/post/gbehinazin.jpg",
      "photoProfil": "images/profil/dember.jpg",
      "description": "Une personne qui a fait parler du Bénin dans le monde entié"
    }
  ];
  
  @override
  Widget build(BuildContext context) {
    return Column(
      children:postItems.map((post) {
        return Column(
          children: [
            Container(
              height: 50,
              //color: Colors.grey,
              margin: const EdgeInsets.only(top: 10),
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage(post['photoProfil']),
                    ),
                    const SizedBox(width: 10),
                    Text(
                      post['pseudo'],
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(width: 5),
                    Image.network(
                      'assets/images/185c39f97464cc69372ff7a4041ebf0b.jpg',
                      height: 13,
                    ),
                    Expanded(
                      child: Container()
                    ),
                    IconButton(
                      onPressed: () {}, 
                      icon: const Icon(Icons.more_horiz),
                      ),
                ],
              ),
            ),
            Container( // le conteneur concernant les imgage postées
              height: 300,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(post['photo']),
                  fit: BoxFit.cover // permet de centrer  une image et l'adapte dans son conteneur
                  ),
                  ),
            ),
           Row(
                children: [ // affichage des images icones
                  IconButton(
                    onPressed: (){}, 
                    icon: const Icon(Icons.favorite_outline),
                    ),

                     IconButton(
                    onPressed: (){}, 
                    icon: const Icon(Icons.message_outlined),
                    ),
                  
                     IconButton(
                    onPressed: (){}, 
                    icon: const Icon(Icons.send_outlined),
                    ),
                    
                        Expanded(child: Container()),
                     IconButton(
                    onPressed: (){}, 
                    icon: const Icon(Icons.bookmark_outline),
                    )
                ],
              ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(  // ceux qui ont likés
                 children: [
                   CircleAvatar(
                    radius: 10,
                    backgroundImage: AssetImage(post['photoProfil']),
                   ),
                  const SizedBox(width: 10),// pour mettre de l'espace entre mes contenus
                  RichText(
                    text: TextSpan(
                      text:  'Aime par ',
                      style: DefaultTextStyle.of(context).style,
                      children: [
                        TextSpan(
                          text: post['pseudo'],
                          style: 
                          const TextStyle(fontWeight: FontWeight.w600)
                        ),
                        const TextSpan(text: ' et '),
                        const TextSpan(
                          text: '123 autres personnes',
                          style: 
                          TextStyle(fontWeight: FontWeight.w600)
                        )
                      ]
                      )
                      )
                 ],
              )
            ),
            const SizedBox(height: 5),// pour mettre de l'espace
           Column(
             crossAxisAlignment: CrossAxisAlignment.start,// pour aligner le texte a gauche
             children: [
           Row(
             crossAxisAlignment: CrossAxisAlignment.end,
             children: [
               Text(post['pseudo'],
               style: const TextStyle(fontWeight: FontWeight.bold),
               ),
               const SizedBox(width: 5),
               Expanded(// permet de prendre toute la place disponible
                 child: Text(post['description'],
                 maxLines: 1,
                 overflow: TextOverflow.ellipsis,
                 ),
               ),
               const SizedBox(width: 5),
               Text(
                 'See more',
               style: TextStyle(
                 fontWeight: FontWeight.w600, color: Colors.grey.shade400), 
               ),
             ],
           ),
             const SizedBox(height: 10),
             Text(
               'See 35 comments',
               style: TextStyle(
                 fontWeight: FontWeight.w500,
                 color: Colors.grey.shade400,
               ),
             ),
              const SizedBox(height: 10),
              Row(
               children: [
                 Text(
                   '16 min ago',
                  style: TextStyle(
                   fontSize: 12,
                 fontWeight: FontWeight.w500,
                 color: Colors.grey.shade400),
               ),
                const Text(
                   'Translate',
                   style: TextStyle(
                     fontSize: 12, fontWeight: FontWeight.w600),
                     ),
               ],
              )
             ],
           )

          ],
        );
      }
      ).toList()
    );
  }
}