import 'package:flutter/material.dart';
import 'package:simple_ui/core/styles/color.dart';
import 'package:simple_ui/core/styles/textstyle.dart';

class SimpleCard extends StatelessWidget {
  final String? imageUrl;
  final String title;
  final String subtitle;
 

  SimpleCard({super.key, this.imageUrl, required this.title, required this.subtitle, });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * .22,
      width: MediaQuery.of(context).size.width * .35,
      decoration: BoxDecoration(
        
        borderRadius: BorderRadius.all(Radius.circular(12)),
        
        color: imageUrl != null ? null : SimpleColors.primary,
        image: imageUrl != null
            ? DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(imageUrl!),
              )
            : null,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Row(
            children: [
              Container(
                  height: MediaQuery.of(context).size.height * .07,
                  width: MediaQuery.of(context).size.width * .35,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(12),
                        bottomLeft: Radius.circular(12)),
                    color: Colors.white,
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(6),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  width: MediaQuery.of(context).size.width * .32,
                                  child: Text(
                                    overflow: TextOverflow.ellipsis,
                                    title,
                                    style: SimpleTextStyle.titleSmall(),
                                                                 
                                                                
                                  ),
                                ),
                                SizedBox(
                                  width: MediaQuery.of(context).size.width * .32,
                                  child: Text(
                                    subtitle,
                                    overflow: TextOverflow.ellipsis,
                                    style: SimpleTextStyle.titleSmallLight(),
                                      
                                    
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  )),
            ],
          ),
        ],
      ),
    );
  }

}
