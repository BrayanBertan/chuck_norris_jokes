import 'package:auto_size_text/auto_size_text.dart';
import 'package:chuck_norris_jokes/controllers/MyHomePageController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class JokeCard extends StatelessWidget {
  final MyHomePageController controller = Get.find();
  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAliasWithSaveLayer,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 15, right: 15, top: 15),
            child: Column(
              children: [
                Obx(() => AutoSizeText(
                      controller.joke.value.value,
                      style: TextStyle(
                          fontSize: 25,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    )),
                Obx(() => AutoSizeText(
                      controller.joke.value.url,
                      style: TextStyle(
                          fontSize: 15,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    )),
              ],
            ),
          ),
          Obx(
            () => Image.asset(
              'assets/images/${controller.image.value}',
              fit: BoxFit.fill,
            ),
          ),
        ],
      ),
    );
  }
}
