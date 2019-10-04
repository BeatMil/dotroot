// // import 'package:flutter/material.dart';

// class Post extends StatefulWidget {
//   const Post({
//     this.postId,
//     this.ownerId,
//     this.username,
//     this.text,
//   });

//   factory Post.fromDocument(DocumentSnapshot document) {
//     return Post(
//       postId: document.documentID,
//       ownerId: document['ownerId'],
//       username: document['username'],
//       text: document['text'],
//     );

//   final String postId;
//   final String ownerId;
//   final String username;
//   final String text;

//   _Post createState() => _Post(
//       postId: this.postId,
//       ownerID: this.ownerID,
//       username: this.username,
//       text: this.text,
//     );
//   }
// }

// class _Post extends State<Post> {
//   final String postId;
//   final String ownerID;
//   final String username;
//   final String text;

//   _Post({
//     this.postId,
//     this.ownerID,
//     this.username,
//     this.text,
//   });

//   @override
//   Widget build(BuildContext context) {

//   }
// }