import 'package:flutter/material.dart';

class SimplePasswordField extends StatefulWidget {
  final TextEditingController? controller;
  final String? labelText;
  final String? hintText;
  final String? Function(String?)? validator;
  final InputBorder? border;
  final InputBorder? focusedBorder;
  final InputBorder? errorBorder;
  final VoidCallback? onTap;
  final Function(String)? onChanged;
  const SimplePasswordField(
      {super.key,
      this.controller,
      this.labelText,
      this.hintText,
      this.validator,
      this.border,
      this.focusedBorder,
      this.errorBorder,
      this.onTap,
      this.onChanged});

  @override
  State<SimplePasswordField> createState() => _SimplePasswordFieldState();
}

class _SimplePasswordFieldState extends State<SimplePasswordField> {
  bool _passwordVisible = true;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: widget.validator,
      controller: widget.controller,
      obscureText: _passwordVisible,
      onTap: widget.onTap,
      onChanged: widget.onChanged,
      decoration: InputDecoration(
        labelText: widget.labelText,
        hintText: widget.hintText,
        border: widget.border ?? const OutlineInputBorder(),
        errorBorder: widget.errorBorder,
        focusedBorder: widget.focusedBorder,
        suffixIcon: IconButton(
            icon: Icon(
              _passwordVisible ? Icons.visibility : Icons.visibility_off,
            ),
            onPressed: () {
              setState(() {
                _passwordVisible = !_passwordVisible;
              });
            }),
      ),
    );
  }
}
