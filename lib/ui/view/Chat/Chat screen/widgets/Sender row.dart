import 'package:flutter/material.dart';

class SenderRowView extends StatelessWidget {
  const SenderRowView({Key? key, required this.senderMessage}) : super(key: key);

  final String senderMessage;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Container(
          margin: const EdgeInsets.only(
              left: 8.0, right: 5.0, top: 8.0, bottom: 2.0),
          padding: const EdgeInsets.only(
              left: 5.0, right: 5.0, top: 9.0, bottom: 9.0),
          decoration: const BoxDecoration(
              shape: BoxShape.rectangle,
              color: Color(0xFF7CE994),
              borderRadius: BorderRadius.all(Radius.circular(10.0))),
          child: Text(
            senderMessage,
            textAlign: TextAlign.center,
          ),
        ),
        CircleAvatar(
          child: Text(
              'mo'
          ),
        ),
      ],
    );
  }
}
