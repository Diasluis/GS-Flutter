import 'package:flutter/material.dart';

import '../../utils/padding_sizes.dart';

class PageBasic extends StatelessWidget {
  final Widget body;
  final String pageTile;

  PageBasic({required this.body, required this.pageTile});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(pageTile),
      ),
      body: Padding(
          padding: EdgeInsets.only(
            left: PaddingSizes.introPageBorder,
            right: PaddingSizes.introPageBorder,
            top: PaddingSizes.introPageTop,
          ),
          child: SingleChildScrollView(
            child: body,
          )),
    );
  }
}
