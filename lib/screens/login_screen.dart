import 'package:flutter/material.dart';
import 'package:whatsapp_clone/CustomUI/button_card.dart';
import 'package:whatsapp_clone/model/chat_model.dart';

import 'home_screen.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({Key key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  ChatModel sourceChat;
  List<ChatModel> chatModels = [
    ChatModel(
      name: "Jay ",
      isGroup: false,
      currentMessage: "Hi Everyone",
      time: "4:00",
      icon: "person.svg",
      id: 1,
    ),
    ChatModel(
      name: "Meet",
      isGroup: false,
      currentMessage: "Hi Meet",
      time: "13:00",
      icon: "person.svg",
      id: 2,
    ),

    ChatModel(
      name: "Mohit",
      isGroup: false,
      currentMessage: "Hi Jay!",
      time: "8:00",
      icon: "person.svg",
      id: 3,
    ),

    ChatModel(
      name: "ABC",
      isGroup: false,
      currentMessage: "Hi Jay",
      time: "2:00",
      icon: "person.svg",
      id: 4,
    ),

    // ChatModel(
    //   name: "NodeJs Group",
    //   isGroup: true,
    //   currentMessage: "New NodejS Post",
    //   time: "2:00",
    //   icon: "group.svg",
    // ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          itemCount: chatModels.length,
          itemBuilder: (contex, index) => InkWell(
                onTap: () {
                  sourceChat = chatModels.removeAt(index);
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (builder) => HomeScreen(
                                chatModels: chatModels,
                                sourceChat: sourceChat,
                              )));
                },
                child: ButtonCard(
                  name: chatModels[index].name,
                  icon: Icons.person,
                ),
              )),
    );
  }
}
