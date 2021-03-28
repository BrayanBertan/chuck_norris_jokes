import 'package:chuck_norris_jokes/controllers/MyHomePageController.dart';
import 'package:chuck_norris_jokes/views/home/widgets/categories_list_tile.dart';
import 'package:chuck_norris_jokes/views/home/widgets/joke_card.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  MyHomePageController controller = Get.put(MyHomePageController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Tab(
              icon: Image.asset('assets/images/icon.png'),
            ),
            Text(
              'Chuck Norris Jokes',
              style: TextStyle(
                fontSize: 30,
                color: Colors.deepOrangeAccent,
              ),
            )
          ],
        ),
      ),
      body: Align(
        alignment: Alignment.center,
        child: ConstrainedBox(
          constraints: BoxConstraints(maxWidth: 1000),
          child: SingleChildScrollView(
            child: Obx(() => Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    SizedBox(
                      height: 15,
                    ),
                    CategoriesListTile(),
                    SizedBox(
                      height: 15,
                    ),
                    controller.loading.value
                        ? LinearProgressIndicator()
                        : JokeCard()
                  ],
                )),
          ),
        ),
      ),
    );
  }
}
