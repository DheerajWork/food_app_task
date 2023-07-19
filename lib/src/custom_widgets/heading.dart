import 'package:flutter/material.dart';
import 'package:food_app_task/src/utils/my_string.dart';
import 'package:food_app_task/src/utils/my_styles.dart';

class Heading extends StatelessWidget {
  final String? title;
  final VoidCallback? onTap;

  const Heading({Key? key, this.title, this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title!,
          style: MyStyles.white17Regular,
        ),
        const Spacer(),
        Text(
          MyStrings.seeAll,
          style: MyStyles.grey17Regular,
        ),
      ],
    );
  }
}
