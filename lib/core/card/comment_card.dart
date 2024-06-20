import 'package:flutter/material.dart';
import 'package:simple_ui/core/styles/color.dart';
import 'package:simple_ui/core/styles/textstyle.dart';

class CommentCard extends StatelessWidget {
 final Widget? child;
 final String title;
 final String description;
 final String? footText;
  const CommentCard({super.key, this.child, required this.title, required this.description, this.footText});
 
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * .9,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: SimpleColors.primaryBorder

      ),
padding: EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Container(
                  height: MediaQuery.of(context).size.height * .04,
                  width: MediaQuery.of(context).size.width * .13,
                 
                  
                  
                ),
              ],
            ),
          
          SizedBox(
            height: MediaQuery.of(context).size.height * .001,
          ),
          Text(
            description,
            textAlign: TextAlign.left,
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * .01,
          ),
          if (child != null) 
          Container(
            
              height: MediaQuery.of(context).size.height * .06,
              width: MediaQuery.of(context).size.width * .55,
              child: child),
          
          Container(
            height: MediaQuery.of(context).size.height * .02,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
               Text(footText!, style: SimpleTextStyle.titleSmallLight())
              ],
            ),
            
          ),
          SizedBox(height: MediaQuery.of(context).size.height * .005,)
        ],
      ),
    );
  }
}