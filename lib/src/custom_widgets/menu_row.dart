import 'package:flutter/material.dart';

class MenuRow extends StatelessWidget {
  final String? title;
  final int? price;

  const MenuRow({Key? key, this.title, this.price}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15),
      child: Row(
        children: [Text(title!), const Spacer(), Text(price.toString())],
      ),
    );
  }
}
