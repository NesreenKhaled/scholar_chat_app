import 'package:flutter/material.dart';
class CustomTextField extends StatelessWidget {
  final String? hintText;
   final label ;
   Function (String)? onChang;
 CustomTextField({
    super.key,this.hintText,
    this.label,
    this.onChang,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (data){
        if(data!.isEmpty){
          return 'field is required';
        }
        return null;
      },
onChanged: onChang,
      decoration: InputDecoration(
          fillColor: Colors.white,
         
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
