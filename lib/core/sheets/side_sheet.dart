import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:simple_ui/core/styles/textstyle.dart';

class SideSheet extends StatelessWidget {
  final String title;
  final VoidCallback onClose;
  final VoidCallback onIconTap;
 final List<IconData> icons;
  final List<String> labels;
  const SideSheet({Key? key, required this.title, required this.onClose, required this.onIconTap, required this.icons, required this.labels}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder(
      tween: Tween<double>(begin: 0, end: 300),
      duration: const Duration(milliseconds: 300),
      builder: (BuildContext context, double size, Widget? child) {
        return Material(
          child: SafeArea(
            child: Container(
              width: size,
              height: MediaQuery.of(context).size.height,
              padding: const EdgeInsets.all(10.0),
              decoration: BoxDecoration(              
                color: Theme.of(context).colorScheme.surface,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(16), bottomLeft: Radius.circular(16 )),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black26,
                    blurRadius: 5.0,
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Icon(
                        Icons.arrow_back,
                        color: Colors.black45,
                        size: 25.0,
                        ), 
                    
                       Text(title, style: SimpleTextStyle.headline(), overflow: TextOverflow.ellipsis,),
                        Icon(
                          Icons.close,
                          color: Colors.black45,
                          size: 25.0,
                        ),
                    ],
                  ),
                  const SizedBox(height: 10),
                 Container(
                  height: 100,
                   child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 4,
                        itemBuilder: (BuildContext context, int index) {
                      return GestureDetector(
                            onTap: onIconTap,
                            child: Padding(
                    padding: EdgeInsets.all(6),
                    child: Column(
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width * 0.15,
                          height: MediaQuery.of(context).size.height * 0.06,
                          child: Icon(icons[index], color: Color.fromARGB(255, 99, 99, 99),),
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              )),
                        SizedBox(
                          height: 2,
                        ),
                        Text(
                          labels[index],
                        ),
                      ],
                       ),
                       ),
                     );
                   },
                  ),
                ),
                   Center(
                     child: SizedBox(
                      width: 250,
                       child: Divider(
                        height: 2,
                                         
                        color: Color.fromARGB(255, 187, 187, 187),
                                         ),
                     ),
                   ),

                   SizedBox(height: 10,),

                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Text("Side Title", style: SimpleTextStyle.titleLarge(),),
                  ),
                 Container(
                  height: 100,
                  child: ListView.builder(   scrollDirection: Axis.horizontal,
                        itemCount: 4,
                        itemBuilder: (BuildContext context, int index) {
                      return GestureDetector(
                            onTap: onIconTap,
                            child: Padding(
                    padding: EdgeInsets.all(6),
                    child: Column(
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width * 0.15,
                          height: MediaQuery.of(context).size.height * 0.06,
                          child: Icon(icons[index], color: Color.fromARGB(255, 99, 99, 99),),
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              )),
                        SizedBox(
                          height: 2,
                        ),
                        Text(
                          labels[index],
                        ),
                      ],
                       ),
                       ),
                     );
                   },
                  
                  
                  ),
                 ),
                 
                 Text(""),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}

void showSideSheet(BuildContext context, String title, List<IconData> icons, List<String> labels) {
  OverlayEntry? sideSheetOverlayEntry;

  sideSheetOverlayEntry = OverlayEntry(
    builder: (context) => Positioned(
      top: 0,
      bottom: 0,
      
      right: 0,
      child: SideSheet(
        title: title,
        onClose: () {
          sideSheetOverlayEntry?.remove();
        }, onIconTap: () {}, labels: labels ,
        icons: icons,
      ),
    ),
  );

  Overlay.of(context)?.insert(sideSheetOverlayEntry);
}
