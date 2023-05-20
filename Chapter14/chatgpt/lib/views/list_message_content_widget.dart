import 'package:chatgpt/views/chat_gpt_message_widget.dart';
import 'package:chatgpt/views/user_message_widget.dart';
import 'package:flutter/material.dart';

class ListMessageContentWidget extends StatelessWidget {
  final String? messageRely;
  final String? userMessage;
  const ListMessageContentWidget({
    super.key,
    this.messageRely,
    this.userMessage,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: 3,
      separatorBuilder: (context, index) {
        return const Divider(
          height: 26,
          color: Colors.transparent,
        );
      },
      itemBuilder: (context, index) {
        if (index == 0) {
          return Padding(
            padding: const EdgeInsets.only(
              left: 26,
              right: 26,
              top: 26,
            ),
            child: UserMessageWidget(message: userMessage ?? ""),
          );
        }
        if (index == 1) {
          return Padding(
            padding: const EdgeInsets.only(left: 26, right: 26),
            child: (messageRely?.isNotEmpty == true)
                ? ChatGPTMessageWidget(message: messageRely ?? "")
                : const TypingMessageWidget(),
          );
        }
        return const SizedBox(height: 56);
      },
    );
  }
}
