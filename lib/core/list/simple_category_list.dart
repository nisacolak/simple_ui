import 'package:flutter/material.dart';

class SimpleCategoryList extends StatelessWidget {
  final List model;
  final VoidCallback? onPressed;
  const SimpleCategoryList({super.key, required this.model, this.onPressed});

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
                            shape: BoxShape.circle,
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage(model[index].categoryPath),
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
