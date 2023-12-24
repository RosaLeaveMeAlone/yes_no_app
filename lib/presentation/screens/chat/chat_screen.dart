// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:yes_no_app/presentation/widgets/chat/her_message_bubble.dart';
import 'package:yes_no_app/presentation/widgets/chat/my_message_bubble.dart';
import 'package:yes_no_app/presentation/widgets/shared/message_field_box.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.all(4.0),
          child: const CircleAvatar(
            backgroundImage: NetworkImage('https://avatars.githubusercontent.com/u/27587379?s=400&u=73cee7ade4c3d46ca926341a9ada05cef2b482af&v=4'),
          ),
        ),
        title: const Text('YesNoGPT'),
        centerTitle: true,
      ),
      body: _ChatView(),
    );
  }
}

class _ChatView extends StatelessWidget {
  const _ChatView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: 100,
                itemBuilder: (context, index) {
                  return (index % 2 == 0) ? const MyMessageBubble() : const HerMessageBubble();
              }),
            ),
            //caja de texto
            MessageFieldBox(),
          ],
        ),
      ),
    );
  }
}

