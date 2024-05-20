import 'package:flutter/material.dart';

class SimpleTextField extends StatefulWidget {
  final TextEditingController controller;

  final String? hintText;

  final Icon? prefixIcon;
  final Function()? onChanged;
  const SimpleTextField(
      {Key? key,
      required this.controller,
      this.hintText,
      this.prefixIcon,
      this.onChanged})
      : super(key: key);

  @override
  State<SimpleTextField> createState() => _AuthFieldState();
}

class _AuthFieldState extends State<SimpleTextField> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.06,
      width: MediaQuery.of(context).size.width * 0.70,
      child: TextFormField(
          controller: widget.controller,
          decoration: InputDecoration(
              filled: true,
              fillColor: Colors.white,
              hintText: widget.hintText,
              prefixIcon: widget.prefixIcon,
              //prefixIconColor: ColorName.orange,
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                // borderSide: const BorderSide(color:),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                //borderSide: const BorderSide(color:),
              ),
              contentPadding: const EdgeInsets.only(top: 20))),
    );
  }
}
