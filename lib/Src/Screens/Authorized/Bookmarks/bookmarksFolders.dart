import 'package:alqgp/Src/Utils/Consts/consts.dart';
import 'package:alqgp/Src/Widgets/findBookmarksFolders.dart';
import 'package:flutter/material.dart';

class bookmarksFolders extends StatelessWidget {
  const bookmarksFolders({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          padding: const EdgeInsets.symmetric(
              horizontal: tDefaultScreenPadding, vertical: tDefaultSize),
          child: findBookmarksFolders(null, context, true),
        ),
      ),
    );
  }
}
