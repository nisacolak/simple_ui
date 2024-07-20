import 'package:flutter/material.dart';
import 'package:simple_ui/simple_ui.dart';

class ButtonsView extends StatelessWidget {
  const ButtonsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SimpleAppBar(appBarText: "Button View", showBackArrow: true),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Border Button"),
          SimpleCircleButton(onTap: (){}, backgroundColor: Colors.amber, borderColor: Colors.orange, image: NetworkImage("https://picsum.photos/300/300"),),
          SizedBox(height: 20,),
          Text("Simple Button"),
          SimpleButton(text: "Button Text", onPressed: (){})
        ],
      ),
    );
  }
}