import 'package:flutter/material.dart';

class SimpleFullScreenDialog extends StatelessWidget {
  final String title;
  final Widget child;
  const SimpleFullScreenDialog({super.key, required this.title, required this.child});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        leading: IconButton(
          icon: Icon(Icons.close),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: child,
      ),
    );
  }
}

void showFullScreenDialog({
  required BuildContext context,
  required String title,
  required Widget child,
}) {
  Navigator.of(context).push(
    MaterialPageRoute<void>(
      fullscreenDialog: true,
      builder: (BuildContext context) {
        return SimpleFullScreenDialog(
          title: title,
          child: child,
        );
      },
    ),
  );
}