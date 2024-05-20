import 'package:example/pages/typography.dart';
import 'package:flutter/material.dart';
export 'package:simple_ui/core/sheets/custom_alert_dialog.dart';

import 'package:simple_ui/core/button/simple_button.dart';
import 'package:simple_ui/core/card/offer_card.dart';
import 'package:simple_ui/core/card/simple_card.dart';
import 'package:simple_ui/core/styles/color.dart';

import 'package:simple_ui/core/styles/textstyle.dart';
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
  Widget build(BuildContext context) {final List<String> images = [
      'https://unsplash.com/photos/a-body-of-water-that-is-very-close-to-the-shore-y3gJNwUkv24'
    ];
    return SafeArea(
      child:  Scaffold(
        appBar:  PreferredSize(preferredSize: Size.fromHeight(55),
      
      child:
        SearchAppBar( taptoProfile: () {  }, avatar: 
        CircleAvatar(backgroundColor: Colors.white,), taptoBack: () {  },

          
          )),
        body: Column(
          children: [ 
            
            SimpleButton(text: "text", backgroundColor: Colors.pink,onPressed: () {},),
            
            Text("Components",style: SimpleTextStyle.displayMedium(),), 
            SimpleButton(text: "Typography", onPressed: (){
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => TypographyPage()),
            );
          },
),
         OfferCard(price: "\25", description: "desription",  isMostPopular: true),
         //SimpleCard(title: "", subtitle: "",),
         //SimpleImageSlider(images: images,),
         CommentCard(),
         SimpleAppBar(appBarText: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Simple UI kit", style: SimpleTextStyle.titleLarge(),)
          ],
         ),
         actions: [
          Stack(
            children: [
              IconButton(onPressed: (){
              WarningSnackBar.show(context, onPressed: (){ ScaffoldMessenger.of(context).hideCurrentSnackBar();});

        
          
              }, icon: Icon(Icons.shopping_bag, ),),
              Positioned(
                right: 0,
                bottom: 25,
                child: Container(
                  width: 18,
                  height: 18,
                  decoration: BoxDecoration(
                    color: SimpleColors.error,
                    borderRadius: BorderRadius.circular(100)

                  ),child: Center(
                    child: Text("2", style: SimpleTextStyle.titleSmall(color: SimpleColors.infoSurface
                    ),),
                )),)
            ]
            
          )
         ], 
         showBackArrow: false),
         SimpleCircleButton(
          onTap: (){
            
          showDialog(
            context: context,
            builder: (context) => CustomAlertDialog(
              title: 'fss', description: '',)
            );
         }, backgroundColor: SimpleColors.primaryBorder, borderColor: SimpleColors.primary,)
          ],
        ),
      ),
    );
  }
}
