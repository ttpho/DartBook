import 'package:chatgpt/views/widget_helper.dart';
import 'package:flutter/material.dart';

typedef GestureSendCallback = void Function(String message);

class InputMessageWidget extends StatefulWidget {
  final GestureSendCallback? onSend;
  const InputMessageWidget({
    super.key,
    this.onSend,
  });

  @override
  State<InputMessageWidget> createState() => _InputMessageWidgetState();
}

class _InputMessageWidgetState extends State<InputMessageWidget> {
  final _textMessageController = TextEditingController();

  bool _isEmpty() => _textMessageController.text.trim().isEmpty;

  @override
  void dispose() {
    _textMessageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final primaryColor = Theme.of(context).colorScheme.primary;
    return Row(
      children: [
        Expanded(
          flex: 1,
          child: TextField(
            onChanged: (_) {
              setState(() {});
            },
            controller: _textMessageController,
            keyboardType: TextInputType.multiline,
            maxLines: null,
            decoration: InputDecoration(
              hintText: "Message",
              contentPadding: WidgetHelper.contentPadding,
              enabledBorder: OutlineInputBorder(
                borderRadius: WidgetHelper.borderRadius,
                borderSide: const BorderSide(
                  color: Colors.black,
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: WidgetHelper.borderRadius,
                borderSide: BorderSide(
                  color: primaryColor,
                ),
              ),
            ),
          ),
        ),
        const SizedBox(width: 26),
        InkWell(
          onTap: () {
            // hide keyboard
            FocusScope.of(context).requestFocus(FocusNode());
            widget.onSend?.call(_textMessageController.text.trim());
            setState(() {
              _textMessageController.clear();
            });
          },
          child: Icon(
            Icons.send,
            color: _isEmpty() ? Colors.black : primaryColor,
            size: 36.0,
          ),
        ),
      ],
    );
  }
}
