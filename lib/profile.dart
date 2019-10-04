import 'package:flutter/material.dart';

class ProfileView extends StatefulWidget {
  @override
  ProfileViewState createState() => ProfileViewState();
}

class ProfileViewState extends State<ProfileView> {

  String name = "Beat";
  String description = "A chill guy who likes video games";

  Widget build(BuildContext context) {                              
    return Scaffold(
      appBar: AppBar(
        title: new Text("./profile"),
        elevation: Theme.of(context).platform == TargetPlatform.iOS ? 0.0 : 4.0,
      ),
      body: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Row(                                                        // profile image in this row
          children: <Widget>[
            Container(
              margin: const EdgeInsets.all(15.0),
              padding: const EdgeInsets.all(3.0),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.orange),
              ),
              child: Image.asset(
                'assets/MugiQT.png',
                height: 200,
              ),
            ),
          ],
        ),
        Row(                                                       // name is this row
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(left: 14),
              child: Text(
                name,
                style: TextStyle(fontSize: 28.0,),
              ),
            ),
          ],
        ),
        Row(                                                       // description is this row
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(left: 14),
              child: Text(description, style: TextStyle(fontSize: 24.0))),
          ],
        ),
        Divider(
          indent: 10,
        ),
        Container(                                                // the post, like and reroot tabs
          decoration: BoxDecoration(color: Colors.greenAccent),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,     
            children: <Widget>[
              Container(
                decoration: BoxDecoration(color: Colors.blueAccent),
                child: Text(
                  "Post",
                  style: TextStyle(fontSize: 25),
                ),
              ),
              Container(
                decoration: BoxDecoration(color: Colors.redAccent),
                  child: Text(
                    "Like",
                    style: TextStyle(fontSize: 25),
                  ),
              ),
              Container(
                  child: Text(
                    "Reroot",
                    style: TextStyle(fontSize: 25),
                  ),
              ),
            ],
          ),
        ),
        // new Flexible(                                       // generate the listview from firebase how ever the data is hard coded in firebase
        //   child: StreamBuilder(
        //     stream: Firestore.instance.collection('post').snapshots,
        //     builder: (context, snapshots) {
        //       if (!snapshots.hasData) return const Text('Loading...');
        //       return ListView.builder(
        //         itemExtent: 80,
        //         itemCount: snapshots.data.documents.length,
        //         itemBuilder: (context, index) => _notificationTab(
        //             'assets/MugiQT.png', snapshots.data.documents[index]),
        //       );
        //     }),
        // )
      ],
      ),
    );
  }

  // @override
  // Widget build(BuildContext context) {
  //   return Scaffold(
  //     appBar: new AppBar(
  //         backgroundColor: Colors.black,
  //         elevation: Theme.of(context).platform == TargetPlatform.iOS ? 0.0 : 4.0,
  //         title: Text('./profile'),
  //       ),
  //     body: new Text("Hello world! Profile"),
  //   );
  // }

}