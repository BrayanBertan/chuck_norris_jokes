import 'package:chuck_norris_jokes/models/joke_model.dart';
import 'package:dio/dio.dart';

class JokeRepository {
  final String _baseURL = "https://api.spoonacular.com";
  static const String API_KEY = "660db93414d74551aaed8c67203a39c1";

  Future<Joke> getRandomJoke({String category = ''}) async {
    String endpoint = 'https://api.chucknorris.io/jokes/random';
    if (category.trim().isNotEmpty) endpoint += '?category=$category';
    try {
      final response = await Dio().get(endpoint);
      return Joke.fromJson(response.data);
    } on DioError {
      return Future.error('Error to return joke');
    }
  }
}
