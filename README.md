# instagram

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



