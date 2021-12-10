import 'package:flutter/material.dart';

class Page extends StatelessWidget {
  const Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        const Center(
          child: Text("Asset image"),
        ),
        Center(
          child: Image.asset(
            "assets/images/colors.webp",
            width: 300,
            height: 300,
          ),
        ),
        const Center(
          child: Text("Network image"),
        ),
        Center(
          child: Image.network(
            "https://images.unsplash.com/photo-1639074916237-5d24bc87e0d5?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=988&q=80",
            width: 300,
            height: 300,
          ),
        ),
        const Center(
          child: Text("Fit pattern: contain"),
        ),
        Center(
          child: Container(
            decoration: BoxDecoration(
              border: Border.all(
                color: Theme.of(context).colorScheme.primary,
                width: 2,
              ),
            ),
            child: Image.asset(
              "assets/images/starbucks.webp",
              width: 300,
              height: 300,
              fit: BoxFit.contain,
            ),
          ),
        ),
        const Center(
          child: Text("Fit pattern: cover"),
        ),
        Center(
          child: Container(
            decoration: BoxDecoration(
              border: Border.all(
                color: Theme.of(context).colorScheme.primary,
                width: 2,
              ),
            ),
            child: Image.asset(
              "assets/images/starbucks.webp",
              width: 300,
              height: 300,
              fit: BoxFit.cover,
            ),
          ),
        ),
        const Center(
          child: Text("Fit pattern: fill"),
        ),
        Center(
          child: Container(
            decoration: BoxDecoration(
              border: Border.all(
                color: Theme.of(context).colorScheme.primary,
                width: 2,
              ),
            ),
            child: Image.asset(
              "assets/images/starbucks.webp",
              width: 300,
              height: 300,
              fit: BoxFit.fill,
            ),
          ),
        ),
        const Center(
          child: Text("Fit pattern: fill"),
        ),
        Center(
          child: Image.asset(
            "assets/images/starbucks.webp",
            width: 300,
            height: 300,
            fit: BoxFit.cover,
            alignment: Alignment.topRight,
          ),
        ),
      ],
    );
  }
}
