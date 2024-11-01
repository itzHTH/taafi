import 'package:flutter/material.dart';

import 'package:taafi/widgets/doctor_message.dart';
import 'package:taafi/widgets/messages_appbar.dart';

class MessagesView extends StatelessWidget {
  const MessagesView({super.key});
  static String id = "MessagesView";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const MessagesAppBar(),
          Expanded(
              child: ListView.builder(
            itemCount: 1,
            itemBuilder: (context, index) {
              return const DoctorMessage();
            },
          ))
        ],
      ),
    );
  }
}
