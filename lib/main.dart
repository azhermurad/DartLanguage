import 'package:flutter/material.dart';
import 'widgets/question_widget.dart';
import './widgets/answer_button.dart';

void main() => runApp(MaterialApp(
      home: MyApp(),
    ));

class MyApp extends StatefulWidget {
  // const MyApp({super.key});
  @override
  State<MyApp> createState() => MyAppState();
}

class MyAppState extends State<MyApp> {
  var questionIndex = 0;
  void _handler() {
    setState(() {
      questionIndex = questionIndex + 1;
    });
    print(questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    var question = [
      "Which Language Your using for this Application",
      "Is It a State management"
    ];
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        title: const Text('Example title'),
      ),
      drawer: const Drawer(
        child: Center(child: Text("Drawer")),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        // mainAxisSize: MainAxisSize.min,
        // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Question(question: question[questionIndex]),
          AnswerButton(click: _handler, content: "Answer one"),
          AnswerButton(click: _handler, content: "Answer two"),
          AnswerButton(click: _handler, content: "Answer three"),
        ],
      ),
    );
  }
}
  // MyApp({super.key});
  
















































// import 'package:flutter/material.dart';

// void main() => runApp(MaterialApp(
//       home: MyApp(),
//     ));

// class MyApp extends StatelessWidget {
//   // MyApp({super.key});
//   var questionIndex = 0;
//   void _handler() {
//     questionIndex = questionIndex + 1;
//     print(questionIndex);
//   }

//   @override
//   Widget build(BuildContext context) {
//     var question = [
//       "Which Language Your using for this Application",
//       "Is It a State management"
//     ];
//     return Scaffold(
//         appBar: AppBar(
//           toolbarHeight: 100,
//           title: const Text('Example title'),
//         ),
//         drawer: const Drawer(
//           child: Center(child: Text("Drawer")),
//         ),
//         backgroundColor: Colors.white,
//         body: Column(
//           crossAxisAlignment: CrossAxisAlignment.stretch,
//           // mainAxisSize: MainAxisSize.min,
//           children: [
//             Center(
//               child: Text(question[questionIndex]),
//             ),
//             ElevatedButton(
//               onPressed: _handler,
//               child: const Text("Answer 1"),
//             ),
//             ElevatedButton(
//               onPressed: () => (print("this is anominals function")),
//               child: const Text("Answer 2"),
//             ),
//             ElevatedButton(
//               onPressed: () {
//                 print("function is calling.......");
//               },
//               child: const Text("Answer 3"),
//             ),
//           ],
//         ));
//   }
// }

