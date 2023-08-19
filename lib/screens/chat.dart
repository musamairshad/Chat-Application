import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:chat_app/widgets/chat_messages.dart';
import 'package:chat_app/widgets/new_message.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xff008069),
          title: const Text(
            'WhatsApp',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          actions: [
            TextButton.icon(
              label: const Text(
                'Logout',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              onPressed: () {
                FirebaseAuth.instance.signOut();
              },
              icon: const Icon(
                Icons.exit_to_app,
                // color: Theme.of(context).colorScheme.primary,
                color: Colors.white,
              ),
            ),
          ],
        ),
        body: const Column(
          children: [
            Expanded(child: ChatMessages()),
            NewMessage(),
          ],
        ));
  }
}
