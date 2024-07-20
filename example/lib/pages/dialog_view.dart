import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:simple_ui/core/button/simple_button.dart';
import 'package:simple_ui/core/sheets/custom_dialog.dart';
import 'package:simple_ui/core/sheets/full_screen_dialog.dart';
import 'package:simple_ui/core/sheets/side_sheet.dart';
import 'package:simple_ui/core/styles/color.dart';
import 'package:simple_ui/simple_ui.dart';

class DialogSheetsView extends StatelessWidget {
  const DialogSheetsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SimpleAppBar(appBarText: "Dialogs", showBackArrow: true,),
      body: Center(
        child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SimpleButton(
              text: "Full Screen Dialog",
              onPressed: (){
               showFullScreenDialog(
                context: context,
                    title: "Full Screen Dialog Title",
                    child: Column(),
               );
            }),
        SizedBox(height: 10,),
          SimpleButton(
            text: "Pop-up Dialog",
            onPressed: (){
              showDialog(context: context, builder: (context) => CustomDialog(title: 'Custom Dialog Title', actionButton: () {  }, actionText: 'Continue',
              closeText: 'Ok',
              closeButton: () {  },
              child: Column(children: [
                Container(
                  height: 30,
                  color: Colors.amber,
                )
              ],),
        
              )
              );
        
            }),
            SizedBox(height: 10,),
            SimpleButton(text: "Show Modal", onPressed: (){
            simpleShowModal(context, 5, Text("Simple show modal"));},
            ),
           
            SizedBox(height: 10,),
           SimpleButton(text: "Simple Snacbar", onPressed: () {
              SimpleSnackBar.show(
                context: context,
                message: "This is a custom snackbar",
                bgColor: SimpleColors.primaryBorder,
                snackBarAction: () {
                  ScaffoldMessenger.of(context).hideCurrentSnackBar();
                },
                actionText: "dismiss",
                );
           }
            ),

            SizedBox(height: 10,),
            SimpleButton(text: "Side Sheet", onPressed: (){
            showSideSheet(context, "Side Sheet Title", [Icons.share, Icons.add, Icons.delete, Icons.archive], ['Ev', 'Yıldız', 'Ayarlar', 'Kişi']);
            },
            ),
            

            
          ],
        ),
      ),
    );
  }
}

