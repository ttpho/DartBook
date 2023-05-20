import 'package:chatgpt/views/widget_helper.dart';
import 'package:flutter/material.dart';

class ReplyMessageWidget extends StatelessWidget {
  final Widget child;
  const ReplyMessageWidget({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    final primaryColor = Theme.of(context).colorScheme.primary;
    return Row(
      children: [
        Expanded(
          child: Container(
            padding: WidgetHelper.contentPadding,
            decoration: BoxDecoration(
              borderRadius: WidgetHelper.borderRadius.copyWith(
                topLeft: const Radius.circular(0),
              ),
              border: Border.all(color: primaryColor),
            ),
            child: child,
          ),
        ),
        const SizedBox(width: 26),
      ],
    );
  }
}

class ChatGPTMessageWidget extends StatelessWidget {
  final String message;
  const ChatGPTMessageWidget({
    super.key,
    required this.message,
  });

  @override
  Widget build(BuildContext context) {
    return ReplyMessageWidget(
      child: SelectableText(message),
    );
  }
}

class TypingMessageWidget extends StatefulWidget {
  const TypingMessageWidget({super.key});

  @override
  State<TypingMessageWidget> createState() => _TypingMessageWidgetState();
}

class _TypingMessageWidgetState extends State<TypingMessageWidget>
    with TickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    duration: const Duration(seconds: 10),
    vsync: this,
  )..repeat();

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ReplyMessageWidget(
      child: AnimatedBuilder(
        animation: _controller,
        builder: (BuildContext context, Widget? child) {
          final int countingDot = (_controller.value * 20).toInt() + 1;
          final String dot = "·" * countingDot;
          final String space = " " * (20 - countingDot);
          return Text("$dot$space");
        },
      ),
    );
  }
}
