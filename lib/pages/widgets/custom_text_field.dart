import 'package:flutter/material.dart';
class CustomTextField extends StatelessWidget {
  final String? hintText;
   final label ;
  const CustomTextField({
    super.key,this.hintText,
    this.label,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      
      decoration: InputDecoration(
          fillColor: Colors.white,
          // floatingLabelBehavior: FloatingLabelBehavior.always,
          label: label,
          labelStyle: TextStyle(color: Colors.black),
          filled: true,
        hintText: hintText ,
        hintStyle: TextStyle(color: Colors.black),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.white),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.white),
        ),
      ),
    );
  }
}
