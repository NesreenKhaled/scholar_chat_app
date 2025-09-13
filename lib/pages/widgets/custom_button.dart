import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton ({super.key, this.bottonName});
 final String? bottonName;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 50,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Color(0xff8E97FE),
        
      ),
      child: Center(
        child: Text(bottonName!),
      ),
    );
  }
}