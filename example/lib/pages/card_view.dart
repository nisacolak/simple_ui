import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:simple_ui/core/card/offer_card.dart';
import 'package:simple_ui/simple_ui.dart';
import 'package:flutter/services.dart' show rootBundle;  

class CardsView extends StatefulWidget {
  const CardsView({super.key});

  @override
  State<CardsView> createState() => _CardsViewState();
}

class _CardsViewState extends State<CardsView> {
  String email = "";
  String image ="";
  String price="";
  String job="";
  String fullName="";
  String offerSave="";
  String education= "";
  String date="";

  Future<void> loadJsonAsset()async {
    String jsonString = await rootBundle.loadString('assets/data.json');
    final jsonResponse = json.decode(jsonString);
    setState(() {
      email =jsonResponse ['email'];
      image = jsonResponse ['image'];
      price = jsonResponse['price'];
      job = jsonResponse['job'];
      fullName = jsonResponse['fullName'];
      offerSave=jsonResponse['offerSave'];
      education=jsonResponse['education'];
      date = jsonResponse['date'];
    });
  }
 
 


@override
  void initState() {
    loadJsonAsset();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SimpleAppBar(appBarText: Text("Cards"),  showBackArrow: true,),
      body: Center(
        child: Column(
          children: [
            CommentCard(title: fullName, description: education,footText: date,),
            SizedBox(height: 10,),
            EmailCard(email:  email, imagePath: image) ,
            SizedBox(height: 10,),
            Row(children: [OfferCard(price: price, description: offerSave, isMostPopular: true),
            SizedBox(height: 10,),
            OfferCard(price: price, description: "offer", isMostPopular: false)],),
            SizedBox(height: 10,),
            
            SimpleCard(title: job, subtitle: fullName, imageUrl: image,)
          ],
        ),
      ),
    );
  }
}