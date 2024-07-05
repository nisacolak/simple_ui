import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:simple_ui/core/list/simple_list.dart';
import 'package:simple_ui/core/styles/color.dart';
import 'package:simple_ui/simple_ui.dart';
import 'package:flutter/services.dart' show rootBundle;  

class ListsView extends StatefulWidget {
   ListsView({super.key});

  @override
  State<ListsView> createState() => _ListsViewState();
}

class _ListsViewState extends State<ListsView> {
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
      appBar: SimpleAppBar(appBarText: "List Page", showBackArrow: true,),
      body: Center(
        child: Column(
          children: [
            SimpleCategoryList(model: categories , onPressed: () {
              
            },),SimpleList( tileColor: SimpleColors.primary,title: fullName , subtitle: job, onPressed: (){},  )
          ],
        ),
      ),
    );
  }
}

final List<CategoryModel> categories = [
    CategoryModel(categoryName: "Gill Perocci", categoryPath: "https://images.unsplash.com/photo-1622295023576-e4fb6e9e8ba2?q=80&w=2069&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"),
   
];

class CategoryModel {
  final String categoryName;
  final String categoryPath;

  CategoryModel({required this.categoryName, required this.categoryPath});
}