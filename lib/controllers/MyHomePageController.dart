import 'package:chuck_norris_jokes/models/joke_model.dart';
import 'package:chuck_norris_jokes/repositories/joke_repository.dart';
import 'package:get/get.dart';

class MyHomePageController extends GetxController {
  JokeRepository repository = Get.put(JokeRepository());
  var joke = Joke().obs;
  var category = ''.obs;

  void setCategory(String param) => category.value = param;
  void getRandomJoke() async {
    joke.value = await repository.getRandomJoke(category: category.value);
  }
}
