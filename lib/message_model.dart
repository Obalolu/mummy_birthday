// To parse this JSON data, do
//
//     final messageResponse = messageResponseFromJson(jsonString);

import 'dart:convert';

MessageResponse messageResponseFromJson(String str) => MessageResponse.fromJson(json.decode(str));

String messageResponseToJson(MessageResponse data) => json.encode(data.toJson());

class MessageResponse {
  MessageResponse({
    this.formResponses1,
  });

  List<FormResponses1> formResponses1;

  factory MessageResponse.fromJson(Map<String, dynamic> json) => MessageResponse(
    formResponses1: List<FormResponses1>.from(json["formResponses1"].map((x) => FormResponses1.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "formResponses1": List<dynamic>.from(formResponses1.map((x) => x.toJson())),
  };
}

class FormResponses1 {
  FormResponses1({
    this.timestamp,
    this.name,
    this.birthdayMessage,
    this.id,
  });

  String timestamp;
  String name;
  String birthdayMessage;
  int id;

  factory FormResponses1.fromJson(Map<String, dynamic> json) => FormResponses1(
    timestamp: json["timestamp"],
    name: json["name"],
    birthdayMessage: json["birthdayMessage"],
    id: json["id"],
  );

  Map<String, dynamic> toJson() => {
    "timestamp": timestamp,
    "name": name,
    "birthdayMessage": birthdayMessage,
    "id": id,
  };
}
