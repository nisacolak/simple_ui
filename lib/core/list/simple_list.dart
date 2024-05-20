import 'package:flutter/material.dart';

class SimpleHorizontalList extends StatelessWidget {
  final List model;
  final VoidCallback? onPressed;
  const SimpleHorizontalList({super.key, required this.model, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 125,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: model.length,
            itemBuilder: (BuildContext context, int index) {
              return GestureDetector(
                onTap: onPressed,
                child: Padding(
                  padding: EdgeInsets.all(6),
                  child: Column(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width * 0.18,
                        height: MediaQuery.of(context).size.height * 0.1,
                        decoration: BoxDecoration(
                            boxShadow: const [
                              BoxShadow(
                                color: Colors.grey,
                                offset: Offset(
                                  1,
                                  2,
                                ),
                                blurRadius: 1,
                                spreadRadius: 3.0,
                              ), //BoxShadow
                              BoxShadow(
                                color: Colors.white,
                                offset: Offset(0.0, 0.0),
                                blurRadius: 0.0,
                                spreadRadius: 0.0,
                              ), //BoxShadow
                            ],
                            shape: BoxShape.circle,
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage(model[index].categoryPath),
                            )),
                      ),
                      SizedBox(
                        height: 2,
                      ),
                      Text(
                        model[index].categoryName,
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
