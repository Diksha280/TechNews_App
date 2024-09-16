import 'package:flutter/material.dart';
import 'package:technews/utils/colors.dart';
import 'package:technews/utils/text.dart';

// ignore: camel_case_types
class appbar extends StatelessWidget implements PreferredSizeWidget {
  const appbar({Key? key})
      : preferredSize = const Size.fromHeight(50.0),
        super(key: key);

  @override
  final Size preferredSize;
  @override
  Widget build(BuildContext context) {
    return AppBar(
      actions: const [
        ],
      backgroundColor: AppColors.black,
      elevation: 0,
      title: SizedBox(
        height: 40,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            boldText(text: 'Tech', size: 20, color: AppColors.primary),
            modifiedText(text: 'News', size: 20, color: AppColors.lightwhite)
          ],
        ),),
      centerTitle: true,
    );
  }
}
