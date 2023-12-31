# instagram

https://www.youtube.com/shorts/51yflXHzh4I

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

•  La fonction fetchPhotos stocke la réponse HTTP dans une variable locale nommée response, qui est de type http.Response.

•  La fonction fetchPhotos utilise la fonction compute pour exécuter la fonction parsePhotos dans un isolat séparé. Un isolat est une unité d'exécution indépendante qui ne partage pas de mémoire avec d'autres isolats. La fonction compute permet de déléguer des tâches intensives en calcul à un isolat secondaire, afin de ne pas bloquer l'interface utilisateur. La fonction compute prend en paramètres la fonction à exécuter et l'argument à lui passer, et renvoie un objet Future qui contient le résultat de la fonction.

•  La fonction parsePhotos est une fonction qui convertit un corps de réponse HTTP en une liste d'objets Photo. Elle prend en paramètre une chaîne de caractères qui représente le corps de la réponse, et renvoie une liste d'objets Photo.

•  La fonction parsePhotos utilise la fonction jsonDecode pour convertir la chaîne de caractères en un objet Dart correspondant. Dans ce cas, l'objet Dart est une liste de maps, où chaque map représente une photo avec des paires clé-valeur. Une Map est une collection de paires clé-valeur.

•  La fonction parsePhotos utilise la méthode cast pour spécifier le type des éléments de la liste, qui sont des maps de type Map<String, dynamic>. Le type String est une séquence de caractères Unicode. Le type dynamic est le type de base de tous les objets dans Dart.

•  La fonction parsePhotos utilise la méthode map pour transformer chaque élément de la liste en un objet Photo, en utilisant le constructeur Photo.fromJson. La méthode map renvoie un objet de type Iterable, qui est une collection d'éléments qui peuvent être parcourus séquentiellement.

•  La fonction parsePhotos utilise le constructeur List.from pour créer une nouvelle liste à partir de l'objet Iterable renvoyé par la méthode map. Ce constructeur permet de spécifier le type des éléments de la liste, ce qui facilite la vérification du code et la détection des erreurs.

•  La classe Photo est une classe qui représente une photo avec des propriétés comme l'identifiant de l'album, l'identifiant de la photo, le titre, l'url et l'url de la vignette. Elle utilise le mot-clé const pour indiquer que ses instances sont des constantes, c'est-à-dire qu'elles ne peuvent pas être modifiées après leur création. Elle utilise le mot-clé required pour indiquer que ses paramètres sont obligatoires, c'est-à-dire qu'ils ne peuvent pas être omis lors de l'appel du constructeur.

•  La classe Photo définit un constructeur nommé qui prend en paramètres les propriétés de la photo et qui les affecte aux champs de la classe. Un constructeur nommé est un constructeur qui a un nom différent de celui de la classe, ce qui permet de créer plusieurs constructeurs avec des comportements différents.

•  La classe Photo définit également un constructeur nommé fromJson qui prend en paramètre une map de type Map<String, dynamic> et qui renvoie un objet Photo correspondant. Ce constructeur permet de créer un objet Photo à partir d'un objet JSON, en utilisant les valeurs de la map pour initialiser les propriétés de la photo.





# Le CRUD en Flutter fait référence aux opérations de Création, Lecture, Mise à jour et Suppression de données dans une application. Voici un exemple de code pour chaque opération :

Création :

```
Future<void> createData() async {
  final response = await http.post(
    Uri.parse('https://example.com/api/data'),
    headers: <String, String>{
      'Content-Type': 'application/json; charset=UTF-8',
    },
    body: jsonEncode(<String, String>{
      'name': 'John Doe',
      'email': 'johndoe@example.com',
    }),
  );

  if (response.statusCode == 201) {
    print('Data created successfully.');
  } else {
    throw Exception('Failed to create data.');
  }
}
```

Lecture :

```
Future<List<Data>> fetchData() async {
  final response = await http.get(Uri.parse('https://example.com/api/data'));

  if (response.statusCode == 200) {
    List<dynamic> data = jsonDecode(response.body);
    return data.map((json) => Data.fromJson(json)).toList();
  } else {
    throw Exception('Failed to load data.');
  }
}
```

Mise à jour :

```
Future<void> updateData(int id) async {
  final response = await http.put(
    Uri.parse('https://example.com/api/data/$id'),
    headers: <String, String>{
      'Content-Type': 'application/json; charset=UTF-8',
    },
    body: jsonEncode(<String, String>{
      'name': 'Jane Doe',
      'email': 'janedoe@example.com',
    }),
  );

  if (response.statusCode == 200) {
    print('Data updated successfully.');
  } else {
    throw Exception('Failed to update data.');
  }
}
```

Suppression :

```
Future<void> deleteData(int id) async {
  final response = await http.delete(Uri.parse('https://example.com/api/data/$id'));

  if (response.statusCode == 204) {
    print('Data deleted successfully.');
  } else {
    throw Exception('Failed to delete data.');
  }
}
```


