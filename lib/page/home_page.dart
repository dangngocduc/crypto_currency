import 'package:crypto_currency/page/page1/page_1.dart';
import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'dart:ui' as ui;

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: const Page1(),
      bottomNavigationBar: ClipRect(
        child: BackdropFilter(
          filter: ui.ImageFilter.blur(
            sigmaX: 4,
            sigmaY: 4,
          ),
          child: Container(
            height: 80,
            decoration: BoxDecoration(
              color: Colors.black.withOpacity(0.02),
              border: Border(
                top: Divider.createBorderSide(context),
              ),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                  child: Center(
                    child: Icon(
                      FluentIcons.home_24_filled,
                      color: Theme.of(context).colorScheme.onBackground,
                    ),
                  ),
                ),
                Expanded(
                  child: Center(
                    child: Icon(
                      FluentIcons.new_24_regular,
                      color: Theme.of(context).colorScheme.onBackground,
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
