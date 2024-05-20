import 'package:flutter/material.dart';
import 'package:simple_ui/core/styles/color.dart';
import 'package:simple_ui/simple_ui.dart';

class SearchAppBar extends StatelessWidget {
  const SearchAppBar({
    super.key,
   this.homeSearchController,required this.avatar, required this.taptoProfile,  required this.taptoBack,
  });

  final TextEditingController? homeSearchController;
  final Widget avatar;
  final Function() taptoProfile;
  final Function() taptoBack;

  @override
  Widget build(BuildContext context) {
    return 
   
    Row(
      mainAxisAlignment: MainAxisAlignment.end,
     children: [

      BackButton(onPressed: taptoBack,),
      SizedBox( width: MediaQuery.of(context).size.width * .02,),
        SimpleSearchContainer(
          width: MediaQuery.of(context).size.width * 0.7,
          height: MediaQuery.of(context).size.height * 0.05,
          hintText: 'search', 
          
        
          
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width * .04,
        ),
        Container(
          height: MediaQuery.of(context).size.height * .04,
          width: MediaQuery.of(context).size.width * .12,
          decoration: BoxDecoration(
            color: Colors.white,
            shape: BoxShape.circle,
          ),
          child: GestureDetector(
              onTap: taptoProfile,
              child: avatar,
        ),),
        
      
      ]);
    
  }
}


