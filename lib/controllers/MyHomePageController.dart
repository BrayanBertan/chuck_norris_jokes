import 'dart:math';

import 'package:chuck_norris_jokes/models/joke_model.dart';
import 'package:chuck_norris_jokes/repositories/joke_repository.dart';
import 'package:get/get.dart';

class MyHomePageController extends GetxController {
  JokeRepository repository = Get.put(JokeRepository());
  var joke = Joke().obs;
  var category = 'all'.obs;
  var image = 'laughing'.obs;
  var categories = [
    'all',
    'animal',
    'career',
    'celebrity',
    'dev',
    'explicit',
    'fashion',
    'food',
    'history',
    'money',
    'movie',
    'music',
    'political',
    'religion',
    'science',
    'sport',
    'travel'
  ].obs;

  void setCategory(String param) => category.value = param;
  void getRandomImage() => image.value += '${Random().nextInt(5) + 1}.jpg';
  void getRandomJoke() async {
    try {
      joke.value = await repository.getRandomJoke(category: category.value);
      getRandomImage();
    } catch (e) {
      print(e);
    }
  }
}
