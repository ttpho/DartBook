import 'package:chatgpt/bloc/chat_bloc.dart';
import 'package:chatgpt/views/input_message_widget.dart';
import 'package:chatgpt/views/list_message_content_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

Future<void> main() async {
  await dotenv.load(fileName: ".env");
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Chat GPT',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.amber),
        useMaterial3: true,
      ),
      home: BlocProvider(
        create: (_) => ChatBloc(),
        child: const MyHomePage(title: 'Chat GPT'),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(
          widget.title,
          style: const TextStyle(color: Colors.white),
        ),
      ),
      body: Stack(
        children: <Widget>[
          BlocBuilder<ChatBloc, ChatState>(
            builder: (context, state) {
              if (state is ChatInitial) {
                return const SizedBox();
              }

              if (state is TypingState) {
                return ListMessageContentWidget(
                  messageRely: "",
                  userMessage: state.message,
                );
              }
              if (state is ResponseState) {
                return ListMessageContentWidget(
                  messageRely: state.messageRely,
                  userMessage: state.userMessage,
                );
              }

              if (state is ErrorResponseState) {
                return ListMessageContentWidget(
                  messageRely: state.errorMessage,
                  userMessage: state.userMessage,
                );
              }

              return const SizedBox();
            },
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              color: Theme.of(context).colorScheme.background,
              padding: const EdgeInsets.only(left: 26, right: 26, bottom: 16),
              child: InputMessageWidget(
                onSend: (message) {
                  final ChatBloc bloc = context.read<ChatBloc>();
                  // reset
                  bloc.add(ResetEvent());

                  // new chat
                  bloc.add(UserMessageEvent(message));
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
