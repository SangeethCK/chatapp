
// To parse this JSON data, do
//
//     final chatMessage = chatMessageFromJson(jsonString);

import 'dart:convert';

import '../chatpages/chat_data.dart';

ChatMessage chatMessageFromJson(String str) => ChatMessage.fromJson(json.decode(str));

String chatMessageToJson(ChatMessage data) => json.encode(data.toJson());

class ChatMessage {
    ChatMessage({
        required this.image,
        required this.message,
        required this.type,
    });

    String image;
    String message;
    MessageType type;

    factory ChatMessage.fromJson(Map<String, dynamic> json) => ChatMessage(
        image: json["image"],
        message: json["message"],
        type: json["type"],
    );

    Map<String, dynamic> toJson() => {
        "image": image,
        "message": message,
        "type": type,
    };
}