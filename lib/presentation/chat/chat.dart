// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:http/http.dart';
//
// import '../../domain/bloc/chat_bloc.dart';
//
// class ChatScreen extends StatelessWidget {
//   final TextEditingController _textEditingController = TextEditingController();
//
//   @override
//   Widget build(BuildContext context) {
//     final ChatbotBloc chatbotBloc = BlocProvider.of<ChatbotBloc>(context);
//
//     return Scaffold(
//       appBar: AppBar(title: Text('Chatbot')),
//       body: BlocBuilder<ChatbotBloc, ChatbotState>(
//         builder: (context, state) {
//           if (state is InitialState) {
//             return  throw Exception('Failed to send request.');;
//           } else if (state is LoadingState) {
//             return Center(child: CircularProgressIndicator());
//           } else if (state is BotResponseState) {
//             return Column(
//               children: [
//                 Expanded(
//                   child: ListView.builder(
//                     itemCount: 1, // Display only the latest bot response
//                     itemBuilder: (context, index) {
//                       return ListTile(
//                         title: Text('Bot: ${state.response}'),
//                       );
//                     },
//                   ),
//                 ),
//                 TextField(
//                   controller: _textEditingController,
//                   decoration: InputDecoration(
//                     hintText: 'Type a message...',
//                     suffixIcon: IconButton(
//                       icon: Icon(Icons.send),
//                       onPressed: () {
//                         String message = _textEditingController.text.trim();
//                         if (message.isNotEmpty) {
//                           chatbotBloc.add(UserMessageEvent(message));
//                           _textEditingController.clear();
//                         }
//                       },
//                     ),
//                   ),
//                 ),
//               ],
//             );
//           } else if (state is ErrorState) {
//             return Center(child: Text('Error: ${state.errorMessage}'));
//           } else {
//             return Container();
//           }
//         },
//       ),
//     );
//   }
// }
// // import 'package:flutter/material.dart';
// // import 'package:http/http.dart' as http;
// // import 'package:speech_to_text/speech_to_text.dart' as stt;
// // import 'package:flutter_tts/flutter_tts.dart';
// //
// // class ChatScreen extends StatefulWidget {
// //   @override
// //   _ChatScreenState createState() => _ChatScreenState();
// // }
// //
// // class _ChatScreenState extends State<ChatScreen> {
// //   late stt.SpeechToText _speechToText;
// //   late FlutterTts _flutterTts;
// //   late TextEditingController _textEditingController;
// //   late List<String> _messages;
// //
// //   @override
// //   void initState() {
// //     super.initState();
// //     _speechToText = stt.SpeechToText();
// //     _flutterTts = FlutterTts();
// //     _textEditingController = TextEditingController();
// //     _messages = [];
// //   }
// //
// //   Future<String> sendRequest(String message) async {
// //     final url = 'https://general-runtime.voiceflow.com/state/user/%7Buser_id%7D/interact'; // Replace with your Voiceflow API endpoint
// //     final response = await http.post(
// //       Uri.parse(url),
// //       body: {'message': message},
// //         headers: {"Authorization": "VF.DM.6481eebfbdbbb80007301008.Wm2ywyyfL7S5EYoN",}
// //     );
// //     if (response.statusCode == 200) {
// //       return response.body;
// //     } else {
// //       throw Exception('Failed to send request.');
// //     }
// //   }
// //
// //   Future<void> handleUserInput(String message) async {
// //     _messages.add('message: $message');
// //     setState(() {});
// //
// //     final botResponse = await sendRequest(message);
// //
// //     _messages.add('Bot: $botResponse');
// //     _speak(botResponse);
// //     _textEditingController.clear();
// //     setState(() {});
// //   }
// //
// //   Future<void> _speak(String message) async {
// //     await _flutterTts.setLanguage('en-US');
// //     await _flutterTts.speak(message);
// //   }
// //
// //   Future<void> _listen() async {
// //     if (!_speechToText.isListening) {
// //       bool available = await _speechToText.initialize();
// //       if (available) {
// //         _speechToText.listen(
// //           onResult: (result) {
// //             if (result.finalResult) {
// //               String message = result.recognizedWords;
// //               _textEditingController.text = message;
// //               handleUserInput(message);
// //             }
// //           },
// //         );
// //       }
// //     } else {
// //       _speechToText.stop();
// //     }
// //   }
// //
// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //        appBar: AppBar(title: Text('Chatbot',style: TextStyle(color: Colors.black),),backgroundColor: Colors.white,),
// //       // appBar: AppBar(
// //       //   automaticallyImplyLeading: false,
// //       //   title: Text('Chatbot'),
// //       //   centerTitle: true,
// //       //   leading: IconButton(
// //       //     icon: Icon(Icons.arrow_back_ios_new, color: Colors.black,),
// //       //     onPressed: () {
// //       //       Navigator.pop(context);
// //       //     },
// //       //   ),
// //       //   elevation: 0,
// //       //   backgroundColor: Colors.white,
// //       // ),
// //       body: Column(
// //         children: [
// //           Expanded(
// //             child: ListView.builder(
// //               itemCount: _messages.length,
// //               itemBuilder: (context, index) {
// //                 return ListTile(
// //                   title: Text(_messages[index]),
// //                 );
// //               },
// //             ),
// //           ),
// //           Padding(
// //             padding: const EdgeInsets.symmetric(
// //               horizontal: 5),
// //             child: TextField(
// //               controller: _textEditingController,
// //               decoration: InputDecoration(
// //                 border:  InputBorder.none,
// //                 hintText: 'write your message',
// //                 suffixIcon: IconButton(
// //                   icon: Icon(Icons.send),
// //                   onPressed: () {
// //                     String message = _textEditingController.text.trim();
// //                     if (message.isNotEmpty) {
// //                       handleUserInput(message);
// //                     }
// //                   },
// //                 ),
// //               ),
// //             ),
// //           ),
// //           // IconButton(
// //           //   icon: Icon(Icons.mic),
// //           //   onPressed: _listen,
// //           // ),
// //         ],
// //       ),
// //     );
// //   }
// // }