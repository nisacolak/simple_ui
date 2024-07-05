import 'package:flutter/material.dart';

void simpleShowModal(
    BuildContext context, double? height, Widget widget) async {
  await showModalBottomSheet(
    isScrollControlled: false,
    backgroundColor: Colors.white,
    context: context,
    builder: (BuildContext context) {
      return Container(
          padding: EdgeInsets.all(8.0),
          height: MediaQuery.of(context).size.height * (height ?? 0.2),
          decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(35), topRight: Radius.circular(35))),
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [widget],
          ));
    },
  );
}
