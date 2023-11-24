# instagram

https://youtu.be/AiFrcxolk3Y?si=eqExVMZWZfJRdD6n
A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.


## Insertion du fichier json dans mon projet flutter.
Le code suivant définit une fonction asynchrone nommée _loadStories qui renvoie un objet de type Future<List<Map<String, dynamic>>>.

1- Un objet Future représente une valeur potentielle ou une erreur qui sera 
   disponible à un moment donné dans le futur
   
2- Une `List` est une collection ordonnée d'élément

3- Un `Map` est une collection de paires clé-valeur

4- Le type `String` est une séquence de caractères Unicode.

5- Le type `dynamic` est le type de base de tous les objets dans Dart.

La fonction `_loadStories` effectue les opérations suivantes: 

•  Elle utilise la méthode `await` pour attendre que la méthode `rootBundle.loadString` termine de charger le contenu du fichier `data.json`. Ce fichier contient des données au format JSON (JavaScript Object Notation), qui est un format léger d'échange de données. Le fichier data.json est situé dans le dossier assets du projet, ou dans le dossier packages/instagram/assets si le projet utilise des packages Flutter. `La méthode await` permet d'écrire du code `La méthode await` de manière plus lisible et plus concise.

•  Elle stocke le contenu du fichier data.json dans une variable locale nommée data, qui est de type String.

•  Elle utilise la fonction jsonDecode pour convertir la chaîne data en un objet Dart correspondant. Dans ce cas, l'objet Dart est une liste de maps, où chaque map représente une histoire Instagram avec des propriétés comme le pseudo, la photo, la photo de profil et la description.

•  Elle utilise le `constructeur List<Map<String, dynamic>>.from` pour créer une nouvelle liste de maps à partir de l'objet Dart renvoyé par la fonction `jsonDecode`. Ce constructeur permet de spécifier le type des éléments de la liste, ce qui facilite la vérification du code et la détection des erreurs.

•  Elle stocke la nouvelle liste de maps dans une variable locale nommée stories, qui est de type List<Map<String, dynamic>>.

•  Elle renvoie la valeur de la variable stories comme résultat de la fonction _loadStories.


# Analyser JSON en arrière-plan
 `Sérialisation de JSON dans les classes de modèles`
 
•  Il définit une fonction asynchrone nommée fetchPhotos qui prend en paramètre un objet de type http.Client et qui renvoie un objet de type Future<List<Photo>>. Un objet Future représente une valeur potentielle ou une erreur qui sera disponible à un moment donné dans le futurhttps://flutter.dev/learn. Une List est une collection ordonnée d'élémentshttps://docs.flutter.dev/ui. Un objet Photo est une classe personnalisée qui représente une photo avec des propriétés comme l'identifiant de l'album, l'identifiant de la photo, le titre, l'url et l'url de la vignette.

•  La fonction fetchPhotos utilise la méthode await pour attendre que la méthode client.get termine de faire une requête HTTP GET vers l'URL 'https://jsonplaceholder.typicode.com/photos'. Cette URL renvoie une liste de photos au format JSON (JavaScript Object Notation), qui est un format léger d'échange de données. La méthode await permet d'écrire du code asynchrone de manière plus lisible et plus concise.
