import 'package:example/pages/card_view.dart';
import 'package:example/pages/dialog_view.dart';
import 'package:example/pages/lists_view.dart';
import 'package:example/pages/menu_view.dart';
import 'package:example/pages/navigation.dart';
import 'package:flutter/material.dart';
export 'package:simple_ui/core/sheets/custom_alert_dialog.dart';

import 'package:simple_ui/core/button/simple_button.dart';
import 'package:simple_ui/core/theme/theme.dart';
import 'package:simple_ui/simple_ui.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: SimpleTheme.lightTheme(), 
      darkTheme: SimpleTheme.darkTheme(),
      home: HomeWidget(),
    );
  }
}

class HomeWidget extends StatelessWidget {
 HomeWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child:  Scaffold(
        appBar:  PreferredSize(preferredSize: Size.fromHeight(55),
      
      child:
        SearchAppBar( taptoProfile: () {  }, avatar: 
        CircleAvatar(backgroundColor: Colors.white,), taptoBack: () {  },

          
          )),
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [ 
         
               SizedBox(height: 50),
               SimpleButton(text: "Menu", onPressed: (){
               Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MenuView()),
                  );
                  
          }),
          SizedBox(height: 10),
           SimpleButton(text: "Card", onPressed: (){
               Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => CardsView()),
                  );
                  
          }),
          SizedBox(height: 10),
           SimpleButton(text: "Navigation", onPressed: (){
               Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => NavigationView()),
                  );
                  
          }),
          SizedBox(height: 10),
           SimpleButton(text: "Dialogs & Sheets", onPressed: (){
               Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => DialogSheetsView()),
                  );
                  
          }),

          SizedBox(height: 10,),
          SimpleButton(text: "Lists", onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => ListsView()),
            );
          },)
          
          
            ],
          ),
        ),
      ),
    );
  }
  
}