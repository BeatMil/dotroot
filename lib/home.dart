import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
// import 'dart:async';
// import 'main.dart';

final samplePosts = [
  {"name": "Ariana", "message": "Hey guys, new music coming soon!"},
  {"name": "John", "message": "I'm an old guy now"},
  {"name": "Donald", "message": "It's gonna be greeeeeat!"},
  {"name": "Miley", "message": "Sorry for the weird music I was doing"},
  {"name": "Justin", "message": "Baby, baby, baby!"},
  {"name": "Mike", "message": "Just talking random stuff"},
  {"name": "Frank", "message": "Blah blah blah"},
  {"name": "Anonymous", "message": "These messages look pretty real hm?"},
  {"name": "Anonymous", "message": "We will hack you."},
  {"name": "Anonymous", "message": "Luke, I am your father."},
  {"name": "Anonymous", "message": "Something else witty"},
];

class HomeView extends StatefulWidget {
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> /*with AutomaticKeepAliveClientMixin<HomeView>*/ {

//   List<Post> feedData;

  buildPosts() {
    // if (postData != null) {
    //   return ListView(
    //     children: postData,
    //   );
    // } else {
      return Container(
        alignment: FractionalOffset.center,
        child: CircularProgressIndicator(),
      );
    // }
  }

  Widget _buildBody(BuildContext context) {
    return _buildList(context, samplePosts);
  }

  Widget _buildList(BuildContext context, List<Map> snapshot) {
    return ListView(
      padding: const EdgeInsets.only(top: 20.0),
      children: snapshot.map((data) => _buildListItem(context, data)).toList(),
    );
  }

  Widget _buildListItem(BuildContext context, Map data) {
    final record = Record.fromMap(data);

    return Padding(
      key: ValueKey(record.name),
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 10.0),
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey),
          borderRadius: BorderRadius.circular(1.0),
        ),
        
        child: Row(
          children: <Widget>[
            Column(
              children: <Widget>[
                Image.asset(
                'assets/MugiQT.png',
                height: 50,
                ),
                Text(record.name),
                // ListTile(
                //     title: Text(record.name),
                //     trailing: Text(record.message),
                //     onTap: () => print("User tapped post")
                //     //  onTap: () => Firestore.instance.runTransaction((transaction) async {
                //     //   final freshSnapshot = await transaction.get(record.reference);
                //     //   final fresh = Record.fromSnapshot(freshSnapshot);

                //     //   await transaction
                //     //       .update(record.reference, {'votes': fresh.votes + 1});
                //     // }),
                //     ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              textDirection: TextDirection.rtl,
              children: <Widget>[
                Text(record.message)
              ],
            ),
          ],
        ),
      ),
    );
  }

//   _loadPosts() async {
//     SharedPreferences prefs = await SharedPreferences.getInstance();
//     String json = prefs.getString("posts");

//     if (json != null) {
//       List<Map<String, dynamic>> data =
//         jsonDecode(json).cast<Map<String, dynamic>>();
//       List<Post> listOfPosts = _generatePosts(data);
//       setState(() {
//         postData = listOfPosts;
//       });
//     } else {
//       _getPosts;
//     }

//   }

//   _getPosts() {
//     SharedPreferences preferences = await SharedPreferences.getInstance();

//     String userID = googleSignIn.currentUser.id.toString();
//     var url = 
//     '';
//     var httpClient = HttpClient();

//     List<Posts> listOfPosts;
//     String result;
//     try {
//       var request = await httpClient.getUrl(Uri.parse(url));
//       var response = await request.close();
//       if (response.statusCode == HttpStatus.ok) {
//         String json = await response.transform(utf8.decoder).join();

//       }
//     }
//   }

  Future<void> _refresh() {

    // await _getPosts();
    // setState(() {
    // });

      print("Refresh preformed");
      // return;

  }

//   List<Posts> _generateFeed() {
//     List<Posts> listOfPosts = []

//     for (var postTata in feedData) {
//       // read posts from Firebase
//     }

//     return listOfPosts;
//   }

  @override
  Widget build(BuildContext context) {
    // super.build(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('./dotRoot'),
        // centerTitle: true,
      ),
      body: RefreshIndicator(
        onRefresh: _refresh,
        child: _buildBody(context),
      ),
    );
  }

//   // Boilerplate stuff for 'AutomaticKeepAlive':
//   @override
//   bool get wantKeepAlive => true;

//   @override
//   void initState() {
//     super.initState();
//     this._loadPosts();
//   }

// }


}

class Record {
  final String name;
  final String message;
  final DocumentReference reference;

  Record.fromMap(Map<String, String> map, {this.reference})
      : assert(map['name'] != null),
        assert(map['message'] != null),
        name = map['name'],
        message = map['message'];

  Record.fromSnapshot(DocumentSnapshot snapshot)
      : this.fromMap(snapshot.data, reference: snapshot.reference);

  @override
  String toString() => "Record<$name:$message>";
}