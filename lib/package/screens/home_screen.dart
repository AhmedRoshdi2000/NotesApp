// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_application_2/package/screens/add_screen.dart';
import 'package:provider/provider.dart';

import 'package:flutter_application_2/package/models/NotesOperation.dart';

// import '../../app_styles.dart';
// import '../../size_config.dart';
// import '../models/Note.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const AddScreen(),
              ));
        },
        backgroundColor: const Color.fromARGB(255, 70, 101, 130),
        child: const Icon(
          Icons.add,
          color: Color(0xff22313F),
          size: 30,
        ),
      ),
      backgroundColor: const Color(0xff34495E),
      appBar: AppBar(
        title: const Text(
          'Notes ',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
        centerTitle: true,
        elevation: 0,
        backgroundColor: const Color(0xff22313F),
        //  const Color.fromARGB(255, 89, 75, 237),
      ),
      body: Consumer<NotesOperation>(
        builder: (context, NotesOperation data, child) => ListView.builder(
          itemCount: data.getNotes.length,
          padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
          itemBuilder: (context, index) {
            return NotesCard(data.getNotes[index]);
          },
        ),
      ),
    );
  }
}

// ignore: must_be_immutable
class NotesCard extends StatelessWidget {
  final note2;
  NotesCard(this.note2);
  // ignore: empty_constructor_bodies
  @override
  Widget build(BuildContext context) {
    var notee = Provider.of<NotesOperation>(context);
    String currentTitle = note2.title;
    String currentDescription = note2.description;
    return Expanded(
      child:
          //     Card(
          //   elevation: 4,
          //   margin: const EdgeInsets.all(8),
          //   shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
          //   child:
          //   ListTile(
          //     title: Text(note2),
          //     trailing: IconButton(
          //       icon: Icon(Icons.delete_forever_rounded, color: Colors.white),
          //       onPressed: () {},
          //     ),
          //   ),
          // )
          Container(
        margin: const EdgeInsets.all(10),
        padding: const EdgeInsets.all(15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: const Color(0xff22313F),
          //  const Color(0xff7AA5D2),
          //  const Color.fromARGB(255, 96, 84, 232),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  note2.title,
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  ),
                ),
                const Spacer(),
                IconButton(
                  alignment: Alignment.topLeft,
                  onPressed: () {
                    notee.DeleteNotes(currentTitle, currentDescription);
                  },
                  icon: const Icon(Icons.delete, color: Colors.white),
                )
              ],
            ),
            const SizedBox(
              height: 8,
            ),
            Text(
              note2.description,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 14,
              ),
            )
          ],
        ),
      ),
    );
  }
}
