import 'package:chatgpt/views/widget_helper.dart';
import 'package:flutter/material.dart';

class UserMessageWidget extends StatelessWidget {
  final String message;
  const UserMessageWidget({
    super.key,
    required this.message,
  });

  @override
  Widget build(BuildContext context) {
    final primaryColor = Theme.of(context).colorScheme.primary;
    return Row(
      children: [
        const SizedBox(width: 26),
        Expanded(
          child: Container(
            padding: WidgetHelper.contentPadding,
            decoration: BoxDecoration(
              borderRadius: WidgetHelper.borderRadius.copyWith(
                topRight: const Radius.circular(0),
              ),
              border: Border.all(color: primaryColor),
            ),
            child: SelectableText(
              message,
              style: const TextStyle(color: Colors.black),
            ),
          ),
        ),
      ],
    );
  }
}
