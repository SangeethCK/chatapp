import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../models/chatbubble.dart';
import 'chatLists.dart';


enum MessageType{
  sender,
  reciver,
}

class ChatData extends StatelessWidget {
List<ChatMessage> chatNormal = [
   ChatMessage(image: '', message:"Hi", type:MessageType.reciver),
   ChatMessage(image: '', message:"Hi How are you ", type:MessageType.sender),
   ChatMessage(image: '', message:"Hi madam", type:MessageType.sender),
     ChatMessage(image: '', message:"Hi send message to others", type:MessageType.reciver),
          ChatMessage(image: 'https://www.hollywoodreporter.com/wp-content/uploads/2019/03/avatar-publicity_still-h_2019.jpg', message:"", type:MessageType.sender),
   


];




  ChatData({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text("Mr.X"),
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back)),

          
      ),
           body:Stack(
             children :[ ListView.builder(
               itemCount: chatNormal.length,
               physics: NeverScrollableScrollPhysics(),
               shrinkWrap: true,
               itemBuilder: (context,index){
               return ChatLists(chatMessgae:chatNormal[index] );
              
             },
            ),
            Align(
              alignment: Alignment.bottomLeft,
              child: Container(
                
                height: 80,
                width: double.infinity,
                color: Colors.white,
                child: Row(
                  children: [
                    Row(
                      children: [
                        Container(
                          height: 40,
                          width: 40,
                         
                          child: Icon(Icons.image,size: 21,),
                        ),
                        Icon(Icons.emoji_emotions)
                      ],
                    ),
                    SizedBox(width: 16,),
                    Expanded(
                      child: TextField(decoration: InputDecoration(
                        hintText: 'Type your message..',
                        border: InputBorder.none
                      ),),
                    )
                  ],
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: Padding(
                padding: const EdgeInsets.all(18.0),
                child: Container(
                  child: Icon(Icons.send_sharp),
                ),
              ),
            )
             ]
             ),
           );
      

      
   
 
  }
}

