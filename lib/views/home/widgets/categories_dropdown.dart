import 'package:chuck_norris_jokes/controllers/MyHomePageController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CategoriesDropDown extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final MyHomePageController controller = Get.find();
    return Obx(() {
      return DropdownButton<String>(
        value: controller.category.value,
        icon: Icon(
          Icons.arrow_downward,
          color: Colors.deepOrangeAccent,
        ),
        iconSize: 24,
        elevation: 16,
        style: TextStyle(
            fontSize: 30,
            color: Colors.deepOrangeAccent,
            fontFamily: 'happymonkey'),
        underline: Container(
          height: 2,
          color: Colors.deepOrangeAccent,
        ),
        isExpanded: true,
        onChanged: (String? category) {
          controller.setCategory(category ?? '');
        },
        items:
            controller.categories.map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(value),
          );
        }).toList(),
      );
    });
  }
}
