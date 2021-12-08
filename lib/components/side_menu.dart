import 'package:flutter/material.dart';
import '../constants/common.dart';

class SideMenu extends StatelessWidget {
  void Function(PageType) _onTap;

  SideMenu(this._onTap);

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
          onTap: () => _onTap(PageType.inputs),
        ),
        ListTile(
          leading: const Icon(Icons.add_rounded),
          title: const Text("Buttons"),
          onTap: () => _onTap(PageType.buttons),
        ),
        ListTile(
          leading: const Icon(Icons.window),
          title: const Text("Dialogs"),
          onTap: () => _onTap(PageType.dialogs),
        ),
        ListTile(
          leading: const Icon(Icons.radio_button_checked),
          title: const Text("Theming"),
          onTap: () => _onTap(PageType.theming),
        ),
        ListTile(
          leading: const Icon(Icons.storage),
          title: const Text("Shared Preferences"),
          onTap: () => _onTap(PageType.sharedPreferences),
        ),
        ListTile(
          leading: const Icon(Icons.image),
          title: const Text("Images"),
          onTap: () => _onTap(PageType.images),
        ),
      ],
    );
  }
}
