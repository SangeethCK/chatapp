import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../models/chatMod.dart';
import '../models/models.dart';
import 'chat_data.dart';


class ChatPgae extends StatelessWidget {
  ChatPgae({Key? key,required this.chats}) : super(key: key);
    Welcome chats;
    
   
  @override
  Widget build(BuildContext context) {

   
    
      return ListTile(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context){
               return ChatData();
              }));
            },
               title: SizedBox(child: Text(chats.name)),
               subtitle: Text(chats.message),
               leading: CircleAvatar(backgroundImage: NetworkImage(chats.avatar),
               
               
               ),
                 trailing: Text(chats.time),


          );
        
      


    
    
  }
}

List<Welcome> chatlist=[
  Welcome(avatar: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRO-p9ThJctQTssrg3-NP4nUFYT_BH-AVQXOw&usqp=CAU",
   name: "Mr.X", message: "in this video ,i'm demonstrating protopie for mobile app animation and intraction..", time: "10:30", isgroup: "true"),

   Welcome(avatar: "https://cdn.pixabay.com/photo/2018/08/28/13/29/avatar-3637561_1280.png",
   name: "Mr.Y", message: "Hi  happy to see after long time", time: "10:50", isgroup: "true"),

    Welcome(avatar: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQnPGqX4s6HDBoVTLwIhy3fFmdxvMiDIfUtdA&usqp=CAU",
   name: "Mr.Y", message: "Hi its me Cristna", time: "10:20", isgroup: "true"),

    Welcome(avatar: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRdzwVTM2Qz3A7SqUsdzLsUBfjtz4y5xgAyZw&usqp=CAU",
   name: "Mr.Y", message: "Hi welcome", time: "8:30", isgroup: "true"),

    Welcome(avatar: "https://cdn.pixabay.com/photo/2018/08/28/13/29/avatar-3637561_1280.png",
   name: "Mr.Y", message: "Hi CV for Telegram.pdf", time: "6:10", isgroup: "true"),
    Welcome(avatar: "https://cdn.pixabay.com/photo/2018/08/28/13/29/avatar-3637561_1280.png",
   name: "Mr.Y", message: "Hi  its photo zip file", time: "9:30", isgroup: "true"),
];

List<MessageModel> chatsMe = [
MessageModel(message: "Hi", time: "10:30", issent: true, isread: false)
  
];