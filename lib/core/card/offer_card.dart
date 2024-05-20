import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:simple_ui/core/styles/color.dart';
import 'package:simple_ui/core/styles/textstyle.dart';


class OfferCard extends StatelessWidget {
  const OfferCard({
    Key? key,
    this.color,
    this.shadowColor,
    this.borderSideColor,
    required this.price,
    required this.description,
    this.child,
    this.elevation,
    this.width,
    this.height,
    this.margin,
    this.borderRadius,
    required this.isMostPopular,
  }) : super(key: key);

  final Color? color;
  final Color? shadowColor;
  final Color? borderSideColor;
  final String price;
  final String description;
  final Widget? child;
  final double? elevation;
  final double? width;
  final double? height;
  final EdgeInsetsGeometry? margin;
  final BorderRadiusGeometry? borderRadius;
  final bool isMostPopular;

  @override
  Widget build(BuildContext context) {
    return InkWell(
        child: Card(
            elevation: elevation ?? 0,
            color: color ?? SimpleColors.primarySurface ,
            shadowColor: shadowColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            child: SizedBox(
              width: MediaQuery.of(context).size.width * .3,
              height: isMostPopular
                  ? MediaQuery.of(context).size.height * .21 + 10
                  : MediaQuery.of(context).size.height * .21,
              child: Column(children: [
                if (isMostPopular)
                  Container(
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      color: color ?? SimpleColors.primary,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10),
                      ),
                    ),
                    padding: const EdgeInsets.all(4.0),
                    child:  Text('Most Popular',
                        style: TextStyle(color: color ?? SimpleColors.primarySurface ),
                        textAlign: TextAlign.center),
                  ),
                SizedBox(
                  height: isMostPopular
                      ? MediaQuery.of(context).size.height * .02
                      : MediaQuery.of(context).size.height * .03,
                ),
                Text(
                  price,
                  style: SimpleTextStyle.displayMedium(color: color ?? SimpleColors.primary ),
                ),
                SizedBox(
               //TODO: sizes for overflow
                  child: Text(
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    description,
                    style: TextStyle(color: color ?? SimpleColors.primaryBorder),
                  ),
                ),
                SizedBox(
                  height: isMostPopular
                      ? MediaQuery.of(context).size.height * .02
                      : MediaQuery.of(context).size.height * .03,
                ),
                Divider(
                  color: SimpleColors.primaryBorder),
                Text("monthly",style: SimpleTextStyle.titleSmall(color: color ?? SimpleColors.primary),)
              ]),
            )));
  }
}
