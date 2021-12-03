import 'package:flutter/material.dart';

class SideMenu extends StatelessWidget {
  void Function(String) onTap;

  SideMenu(this.onTap);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        DrawerHeader(
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.primary,
          ),
          padding: const EdgeInsets.all(25),
          child: Text(
            "Pages",
            style: TextStyle(
              color: Theme.of(context).colorScheme.onPrimary,
              fontSize: 25,
            ),
          ),
        ),
        ListTile(
          leading: const Icon(Icons.message),
          title: const Text("Inputs"),
          onTap: () => onTap("inputs"),
        ),
        ListTile(
          leading: const Icon(Icons.add_rounded),
          title: const Text("Buttons"),
          onTap: () => onTap("buttons"),
        ),
        ListTile(
          leading: const Icon(Icons.window),
          title: const Text("Dialogs"),
          onTap: () => onTap("dialogs"),
        ),
        ListTile(
          leading: const Icon(Icons.radio_button_checked),
          title: const Text("Theming"),
          onTap: () => onTap("theming"),
        ),
      ],
    );
  }
}
