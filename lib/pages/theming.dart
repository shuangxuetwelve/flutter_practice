import 'package:flutter/material.dart';
import '../components/color_card.dart';

class Theming extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Theming"),
      ),
      body: SizedBox.expand(
        child: Container(
          decoration: const BoxDecoration(
            color: Colors.green,
          ),
          padding: const EdgeInsets.all(50),
          child: Column(
            children: <Widget>[
              Container(
                constraints: const BoxConstraints(maxWidth: 500),
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: ColorCard(
                        backgroundName: "Primary",
                        textName: "On Primary",
                        backgroundColor: Theme.of(context).colorScheme.primary,
                        textColor: Theme.of(context).colorScheme.onPrimary,
                      ),
                    ),
                    Expanded(
                      child: ColorCard(
                        backgroundName: "Primary Variant",
                        textName: "On Primary",
                        backgroundColor:
                            Theme.of(context).colorScheme.primaryVariant,
                        textColor: Theme.of(context).colorScheme.onPrimary,
                      ),
                    ),
                    Expanded(
                      child: ColorCard(
                        backgroundName: "Secondary",
                        textName: "On Secondary",
                        backgroundColor:
                            Theme.of(context).colorScheme.secondary,
                        textColor: Theme.of(context).colorScheme.onSecondary,
                      ),
                    ),
                    Expanded(
                      child: ColorCard(
                        backgroundName: "Secondary Variant",
                        textName: "On Secondary",
                        backgroundColor:
                            Theme.of(context).colorScheme.secondaryVariant,
                        textColor: Theme.of(context).colorScheme.onSecondary,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                constraints: const BoxConstraints(maxWidth: 500),
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: ColorCard(
                        backgroundName: "Background",
                        textName: "On Background",
                        backgroundColor:
                            Theme.of(context).colorScheme.background,
                        textColor: Theme.of(context).colorScheme.onBackground,
                      ),
                    ),
                    Expanded(
                      child: ColorCard(
                        backgroundName: "Surface",
                        textName: "On Surface",
                        backgroundColor: Theme.of(context).colorScheme.surface,
                        textColor: Theme.of(context).colorScheme.onSurface,
                      ),
                    ),
                    Expanded(
                      child: ColorCard(
                        backgroundName: "Error",
                        textName: "On Error",
                        backgroundColor: Theme.of(context).colorScheme.error,
                        textColor: Theme.of(context).colorScheme.onError,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
