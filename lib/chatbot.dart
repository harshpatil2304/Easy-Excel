// import 'package:flutter/material.dart';

// void main() {
//   runApp(ChatbotApp());
// }

// class ChatbotApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: ChatScreen(),
//     );
//   }
// }

// class ChatScreen extends StatefulWidget {
//   @override
//   _ChatScreenState createState() => _ChatScreenState();
// }

// class _ChatScreenState extends State<ChatScreen> {
//   final TextEditingController _textController = TextEditingController();
//   final List<ChatMessage> _messages = [];

//   void _handleSubmitted(String text) {
//     _textController.clear();
//     setState(() {
//       _messages.insert(0, ChatMessage(text: text));
//     });
//   }

//   Widget _buildTextComposer() {
//     return Container(
//       margin: EdgeInsets.symmetric(horizontal: 8.0),
//       child: Row(
//         children: <Widget>[
//           Flexible(
//             child: Padding(
//               padding: EdgeInsets.only(bottom: 60.0),
//               child: TextField(
//                 controller: _textController,
//                 onSubmitted: _handleSubmitted,
//                 maxLines: null,
//                 keyboardType: TextInputType.multiline,
//                 decoration: InputDecoration.collapsed(
//                   hintText: "Send a message",
//                 ),
//               ),
//             ),
//           ),
//           IconButton(
//             padding: EdgeInsets.only(bottom: 55.0),
//             icon: Icon(Icons.send),
//             onPressed: () => _handleSubmitted(_textController.text),
//           ),
//         ],
//       ),
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         leading: IconButton(
//           icon: Icon(Icons.arrow_back),
//           onPressed: () {
//             Navigator.pop(context);
//           },
//         ),
//       ),
//       body: Column(
//         children: <Widget>[
//           Flexible(
//             child: ListView.builder(
//               padding: EdgeInsets.all(8.0),
//               reverse: true,
//               itemBuilder: (_, int index) => _messages[index],
//               itemCount: _messages.length,
//             ),
//           ),
//           Divider(height: 10.0),
//           Container(
//             decoration: BoxDecoration(color: Theme.of(context).cardColor),
//             child: _buildTextComposer(),
//           ),
//         ],
//       ),
//     );
//   }
// }

// class ChatMessage extends StatelessWidget {
//   final String text;

//   ChatMessage({required this.text});

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       margin: EdgeInsets.symmetric(vertical: 10.0),
//       child: Row(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: <Widget>[
//           Container(
//             margin: EdgeInsets.only(right: 16.0),
//             child: CircleAvatar(
//               child: Icon(Icons.person), // Basic user icon
//             ),
//           ),
//           Expanded(
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: <Widget>[
//                 Text('Me', style: Theme.of(context).textTheme.subtitle1),
//                 Container(
//                   margin: EdgeInsets.only(top: 5.0),
//                   child: Text(text),
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:speech_to_text/speech_to_text.dart' as stt;

void main() {
  runApp(ChatbotApp());
}

class ChatbotApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ChatScreen(),
    );
  }
}

class ChatScreen extends StatefulWidget {
  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  final TextEditingController _textController = TextEditingController();
  final List<ChatMessage> _messages = [];
  stt.SpeechToText _speech = stt.SpeechToText();

  void _handleSubmitted(String text) {
    _textController.clear();
    setState(() {
      _messages.insert(0, ChatMessage(text: text));
    });
  }

  Widget _buildTextComposer() {
    return Row(
      children: <Widget>[
        Flexible(
          child: Padding(
            padding: EdgeInsets.only(bottom: 60.0),
            child: TextField(
              controller: _textController,
              onSubmitted: _handleSubmitted,
              maxLines: null,
              keyboardType: TextInputType.multiline,
              decoration: InputDecoration.collapsed(
                hintText: "    Send a message",
              ),
            ),
          ),
        ),
        IconButton(
          padding: EdgeInsets.only(bottom: 55.0),
          icon: Icon(Icons.send),
          onPressed: () => _handleSubmitted(_textController.text),
        ),
        IconButton(
          padding: EdgeInsets.only(bottom: 55.0),
          icon: Icon(Icons.mic),
          onPressed: () {
            _startListening();
          },
        ),
      ],
    );
  }

  void _startListening() async {
    bool available = await _speech.initialize(
      onStatus: (val) => print('status: $val'),
      onError: (val) => print('error: $val'),
    );
    if (available) {
      _speech.listen(
        onResult: (val) => setState(() {
          _textController.text = val.recognizedWords;
        }),
      );
    } else {
      print('The user has denied the use of speech recognition.');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Column(
        children: <Widget>[
          Flexible(
            child: ListView.builder(
              padding: EdgeInsets.all(8.0),
              reverse: true,
              itemBuilder: (_, int index) => _messages[index],
              itemCount: _messages.length,
            ),
          ),
          Divider(height: 10.0),
          Container(
            decoration: BoxDecoration(color: Theme.of(context).cardColor),
            child: _buildTextComposer(),
          ),
        ],
      ),
    );
  }
}

class ChatMessage extends StatelessWidget {
  final String text;

  ChatMessage({required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(right: 16.0),
            child: CircleAvatar(
              child: Icon(Icons.person), // Basic user icon
            ),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text('Me', style: Theme.of(context).textTheme.subtitle1),
                Container(
                  margin: EdgeInsets.only(top: 5.0),
                  child: Text(text),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
