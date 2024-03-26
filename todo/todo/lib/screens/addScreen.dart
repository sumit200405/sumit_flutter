import 'dart:js_util';

import 'package:flutter/material.dart';

class AddScreen extends StatefulWidget {
  const AddScreen({super.key});

  @override
  State<AddScreen> createState() => _AddScreenState();
}

class _AddScreenState extends State<AddScreen> {

  final TextEditingController _controller = TextEditingController();
  @override
  Widget build(BuildContext context) {

    Map data = ModalRoute.of(context)?.settings.arguments as Map;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Add ToDo"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            TextField(
              controller: _controller,
              onChanged: (String s){
                setState(() {
                  
                });
              },
            ),
            Visibility(
              visible: not(_controller.text.contains("/")) &&  not(_controller.text.contains("\\")),
              child: IconButton(
                icon: const Icon(Icons.save), 
                onPressed: (){
                  debugPrint(_controller.text);
                  if (_controller.text.contains("/")){
                    debugPrint("There is a forward slash in the text");
                  }
                  else if (_controller.text.contains("\\")){
                    debugPrint("There is a backward slash in the text");
                  }
                  // Navigator.pop(context);
                }
              ),
            ),
            Text("You already have ${data["no"]} tasks"),
          ],
        )
      ),
    );
  }
}