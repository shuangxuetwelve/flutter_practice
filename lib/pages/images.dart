import 'package:flutter/material.dart';

class Page extends StatelessWidget {
  const Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox.expand(
      child: Column(
        children: <Widget>[
          const Text("Asset image"),
          Image.asset(
            "assets/images/colors.webp",
            width: 300,
          ),
          const Text("Network image"),
          Image.network(
            "https://images.unsplash.com/photo-1639074916237-5d24bc87e0d5?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=988&q=80",
            width: 300,
            height: 300,
          ),
        ],
      ),
    );
  }
}
