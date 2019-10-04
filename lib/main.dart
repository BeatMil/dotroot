// Import required packages and libraries
import 'package:flutter/material.dart';

// Import local pages:
import './home.dart';
import './messages.dart';
import './profile.dart';
import 'chats.dart';
// import './user.dart';

// PageController pageController = PageController(initialPage: 0, keepPage: true);
// User currentUser;

final ThemeData defaultTheme = new ThemeData(
  primaryColor: Colors.black,
  accentColor: Colors.orangeAccent[400],
);

void main() => runApp(DotRoot());

class DotRoot extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: './DotRoot',
      theme: defaultTheme,
      home: DefaultPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class DefaultPage extends StatefulWidget {
  @override
  _DefaultPageState createState() => _DefaultPageState();
}

class _DefaultPageState extends State<DefaultPage> {
  // Index for current page user is viewing
  int currentIndex = 0;

  // MessageView messageView;
  // ProfileView profileView;
  // List<Widget> pages;
  // Widget currentPage;

  // bool triedSilentLogin = false;

  // The login window (TODO: Finish creating login window)
  // Scaffold showLoginPage() {
  //   return Scaffold(
  //     body: Center(
  //       child: Padding(
  //         padding: const EdgeInsets.only(top: 240.0),
  //         child: Column(
  //           children: <Widget>[
  //             Text('DotRoot Login'),
  //           ],
  //         ),
  //       ),
  //     ),
  //   );
  // }

  // The buttons for the bottom navigation bar
  final bottomBarItems = [
    BottomNavigationBarItem(
      icon: Icon(Icons.home),
      title: Text('Feed'),
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.message),
      title: Text('Messages'),
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.person),
      title: Text('Profile'),
    ),
  ];

  final pages = [
    HomeView(),
    ChatsView(),
    // MessageView(),
    ProfileView(),
  ];

  PageController pageController = new PageController();



  // Build the scene
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: pages[currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: currentIndex,
          onTap: (index) {
            // Change index if user clicks on new page
            setState(() {
              currentIndex = index;
            });
          },
          items: bottomBarItems,
        ),
    );
  }

  // Handle page navigation
  // void onPageChanged(int page) {
  //   pageController.jumpToPage(page);
  // }

  // Required boilerplate code for pageController:
  // @override
  // void initState() {
  //   // messageView = MessageView();
  //   // profileView = ProfileView();

  //   // pages = [messageView, messageView, profileView];

  //   // currentPage = messageView;

  //   super.initState();
  // }

  // @override
  // void dispose() {
  //   super.dispose();
  //   // pageController.dispose();
  // }

}
