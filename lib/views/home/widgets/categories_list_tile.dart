import 'package:chuck_norris_jokes/views/home/widgets/categories_dropdown.dart';
import 'package:flutter/material.dart';

class CategoriesListTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Text(
        'Category:',
        style: TextStyle(
          fontSize: 30,
          color: Colors.deepOrangeAccent,
        ),
      ),
      title: CategoriesDropDown(),
      trailing: Tab(
        icon: Image.asset('assets/images/icon.png'),
      ),
    );
  }
}
