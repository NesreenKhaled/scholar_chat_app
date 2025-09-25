import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
CustomButton ({super.key, this.bottonName, this.onTap});
 final String? bottonName;
 VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap ,
      child: Container(
        width: double.infinity,
        height: 50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: Color(0xff8E97FE),
          
        ),
        child: Center(
          child: Text(bottonName!),
        ),
      ),
    );
  }
}