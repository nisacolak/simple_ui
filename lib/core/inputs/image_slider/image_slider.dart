import 'dart:async';

import 'package:flutter/material.dart';
import 'package:simple_ui/core/styles/color.dart';

class SimpleImageSlider extends StatefulWidget {
  final List<String> images; 
  const SimpleImageSlider({super.key, required this.images});

  @override
  State<SimpleImageSlider> createState() => _SimpleImageSliderState();
}

class _SimpleImageSliderState extends State<SimpleImageSlider> {

  late final PageController pageController;
  int pageIndex = 0;

  late final Timer sliderTimer ;


  Timer getTimer(){
    return Timer.periodic(Duration(seconds: 3), (timer) {
        if(pageIndex == 4){
          pageIndex = 0;

        }
        pageController.animateToPage(
          pageIndex, duration: Duration(seconds: 1), curve: Curves.easeInOutCirc
          );
         pageIndex ++;
     });
  }

  @override
  void initState() {
    pageController = PageController(
      initialPage: 0,
      viewportFraction: 0.9,
    );
    sliderTimer = getTimer();
    super.initState();
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      
      child: Column(
        children: [
          SizedBox(
            height: 200,
            child: PageView.builder(
              controller: pageController,
              onPageChanged: (value){
                pageIndex = value;
                setState(() {
                  
                });
              } ,
              itemBuilder: (_, index) {
                return AnimatedBuilder(
                  animation: pageController,
                  builder: (ctx, child) {
                    return Container(
                      margin: EdgeInsets.only(right: 8, left: 8, top: 25, bottom: 12),
                      
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(24),
                      color: SimpleColors.primary,
                      image: DecorationImage(
                        image: NetworkImage(widget.images[index]),
                        fit: BoxFit.cover
                      )
                      ),
                      
                    );
                  },
                );
              },
              itemCount: widget.images.length,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(widget.images.length, (index) => GestureDetector(
              onTap: (){},
              child: Container(
                margin: EdgeInsets.all(2.0),
                
                child: Icon(Icons.circle, size: 12.0, color: pageIndex == index ? Colors.pink : Colors.grey.shade400,),
              ),
            )))
        ],
      ),
  
  );
  }
}