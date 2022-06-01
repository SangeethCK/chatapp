import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../models/chatbubble.dart';
import 'chat_data.dart';


class ChatLists extends StatefulWidget {
 ChatLists({Key? key,required this.chatMessgae}) : super(key: key);
   ChatMessage chatMessgae;
  @override
  State<ChatLists> createState() => _ChatListsState();
}

class _ChatListsState extends State<ChatLists> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Align(
        alignment: (widget.chatMessgae.type == MessageType.reciver?Alignment.topRight:Alignment.topLeft),
        child: Padding(
          
          padding: const EdgeInsets.all(16.0),
          child: Container(
        padding: EdgeInsets.all(16),
            child: Text(widget.chatMessgae.message,),
            decoration: BoxDecoration(
              image: DecorationImage(image: NetworkImage(widget.chatMessgae.image,),
              fit: BoxFit.cover),
              color:(widget.chatMessgae.type == MessageType.reciver?Colors.white:Colors.grey.shade200), 
              borderRadius: BorderRadius.circular(10)
            ),
           
          ),
        ),
      ),
    )
    ;
  }
}