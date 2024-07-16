import 'package:flutter/material.dart';

class CustomFormField extends StatelessWidget {
  const CustomFormField({
    this.onChanged,
    this.onFieldSubmitted,
    this.radius = 15,
    this.suffixIcon,
    this.prefixIcon,
    this.hintText,
    this.label,
    this.controller,
    this.keyboardType,
    this.obscureText = false,
    this.readOnly = false,
    this.filled,
    super.key,
  });

  final void Function(String)? onChanged;
  final void Function(String)? onFieldSubmitted;
  final double radius;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final String? hintText;
  final Widget? label;
  final TextEditingController? controller;
  final TextInputType? keyboardType;
  final bool obscureText;
  final bool readOnly;
  final bool? filled;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      child: TextFormField(
        validator: (value){
          if(value!.isEmpty){
            return 'This Field Can\'t be Empty';
          }
          return null;
        },
        onChanged: onChanged,
        onFieldSubmitted: onFieldSubmitted,
        controller: controller,
        keyboardType: keyboardType,
        obscureText: obscureText,
        readOnly: readOnly,
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(radius),
          ),
          suffixIcon: suffixIcon,
          prefixIcon: prefixIcon,
          hintText: hintText,
          hintStyle: const TextStyle(color: Colors.grey),
          label: label,
          filled: filled,
        ),
      ),
    );
  }
}
