import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_2/package/models/NotesOperation.dart';
import 'package:provider/provider.dart';

class AddScreen extends StatelessWidget {
  const AddScreen({super.key});

  @override
  Widget build(BuildContext context) {
    String? titleText;
    // ignore: non_constant_identifier_names
    String? DescriptionText;
    return Scaffold(
      backgroundColor: const Color(0xff34495E),
      // Color.fromARGB(255, 96, 84, 232),
      appBar: AppBar(
        title: const Text('Notes Helpers', style: TextStyle(fontSize: 17)),
        centerTitle: true,
        elevation: 0,
        backgroundColor: const Color(0xff22313F),
        //  Color.fromARGB(255, 96, 84, 232),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextField(
              onTap: () {},
              decoration: const InputDecoration(
                // border: OutlineInputBorder(
                //     borderRadius: BorderRadius.all(Radius.circular(10))),
                hintText: 'Enter Title',
                // alignLabelWithHint: ,
                // labelText: 'title',
                hintStyle: TextStyle(fontSize: 15, color: Colors.grey),
              ),
              style: const TextStyle(fontSize: 20, color: Colors.white),
              onChanged: (value) {
                titleText = value;
              },
            ),
            const SizedBox(height: 8),
            Expanded(
              child: TextField(
                decoration: const InputDecoration(
                  // border: InputBorder.none,
                  hintText: 'Enter Description',
                  hintStyle: TextStyle(fontSize: 15, color: Colors.grey),
                ),
                style: const TextStyle(fontSize: 15, color: Colors.white),
                onChanged: (value) {
                  DescriptionText = value;
                },
              ),
            ),
            TextButton(
              onPressed: () {
                Provider.of<NotesOperation>(context, listen: false)
                    .AddNewNotes(titleText!, DescriptionText!);
                Navigator.pop(context);
              },
              // ignore: prefer_const_constructors
              style: ButtonStyle(
                  backgroundColor: ButtonStyleButton.allOrNull<Color>(
                const Color(0xff22313F),
                // const Color.fromARGB(255, 96, 84, 232)
              )),
              child: const Text(
                'Add New Note',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                ),
              ),
            ),
            // FlatButton(
            //     onPressed: () {
            //       Provider.of<NotesOperation>(context, listen: false)
            //           .AddNewNotes(titleText!, DescriptionText!);
            //       Navigator.pop(context);
            //     },
            //     color: const Color.fromARGB(255, 96, 84, 232),
            //     child: const Text(
            //       'Add Note',
            //       style: TextStyle(
            //         fontSize: 20,
            //         // fontWeight: FontWeight.bold,
            //         color: Colors.white,
            //       ),
            //     ))
          ],
        ),
      ),
    );
  }
}
