import 'package:flutter/material.dart';
class ChatBubble extends StatelessWidget {
  const ChatBubble({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Container(
 
        padding: EdgeInsets.only(left: 16, top: 10, bottom: 10, right: 16),
          margin: EdgeInsets.symmetric(vertical: 8, horizontal:8),
   
        decoration: BoxDecoration(
          color: Color( 0xff8E97FE),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
      bottomRight: Radius.circular(30),
          
          )
      
        ),
        child: Text("data", style: TextStyle(color: Colors.white),),
       ),
    );
  }
}
