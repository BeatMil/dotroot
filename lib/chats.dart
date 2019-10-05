import 'package:dotroot/messages.dart';
import 'package:flutter/material.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';

final sampleMessages = [
  {"name": "Phillip", "message": "Hey, sorry I missed your call"},
  {"name": "Apiporn", "message": "do you hate flutter yet?"},
  {"name": "Chaky", "message": "What amazing homework you submitted!"},
  {"name": "Nick", "message": "You wanna get shabu later?"},
  {"name": "Justin", "message": "Baby, baby, baby!"},
];

class ChatsView extends StatefulWidget {
  @override
  _ChatsViewState createState() {
    return _ChatsViewState();
  }
}

class _ChatsViewState extends State<ChatsView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('./chats'),
      ),
      body: Text('this also doesnt work WHYY')
    );
  }

  // Widget _buildBody(BuildContext context) {
  //   // return StreamBuilder<QuerySnapshot>(
  //   //   stream: Firestore.instance.collection('baby').snapshots(),
  //   //   builder: (context, snapshot) {
  //   //     if (!snapshot.hasData) return LinearProgressIndicator();

  //   //     return _buildList(context, snapshot.data.documents);
  //   //   },
  //   // );

  //   return _buildList(context, sampleMessages);
  // }

  // Widget _buildList(BuildContext context, List<Map> snapshot) {
  //   return ListView(
  //     padding: const EdgeInsets.only(top: 20.0),
  //     children: snapshot.map((data) => _buildListItem(context, data)).toList(),
  //   );
  // }

//   Widget _buildListItem(BuildContext context, Map data) {
//     final record = Record.fromMap(data);

//     return Padding(
//       key: ValueKey(record.name),
//       padding: const EdgeInsets.symmetric(horizontal: 0.0, vertical: 2.0),
//       child: Container(
//         decoration: BoxDecoration(
//           border: Border.all(color: Colors.grey),
//           borderRadius: BorderRadius.circular(5.0),
//         ),
//         child: ListTile(
//             title: Text(record.name),
//             trailing: Text(record.message),
//             onTap: () {
//               Navigator.push(
//                 context,
//                 MaterialPageRoute(builder: (context) => MessageView()),
//               );
//             }
//             //  onTap: () => Firestore.instance.runTransaction((transaction) async {
//             //   final freshSnapshot = await transaction.get(record.reference);
//             //   final fresh = Record.fromSnapshot(freshSnapshot);

//             //   await transaction
//             //       .update(record.reference, {'votes': fresh.votes + 1});
//             // }),
//             ),
//       ),
//     );
//   }
// }

// class Record {
//   final String name;
//   final String message;
//   final DocumentReference reference;

//   Record.fromMap(Map<String, String> map, {this.reference})
//       : assert(map['name'] != null),
//         assert(map['message'] != null),
//         name = map['name'],
//         message = map['message'];

//   Record.fromSnapshot(DocumentSnapshot snapshot)
//       : this.fromMap(snapshot.data, reference: snapshot.reference);

//   @override
//   String toString() => "Record<$name:$message>";
// }
}