import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:tictoc/Custom%20Widgets/custom_icon.dart';
import 'package:tictoc/Views/add_post_screen.dart';
import 'package:tictoc/Views/feed_screen.dart';
import 'package:tictoc/Views/message_screen.dart';
import 'package:tictoc/Views/profile_screen.dart';
import 'package:tictoc/Views/search_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
    int currentIndex = 0;
  final screens = [ FeedScreen(),  SearchScreen(),   const AddPost(), MessageScreen(),ProfileScreen(uid: FirebaseAuth.instance.currentUser!.uid,)];
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: screens[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
          currentIndex: currentIndex,
          onTap: ((value) {
            setState(() {
              currentIndex = value;
            });
          }),
          elevation: 10,
          
          unselectedItemColor: Colors.white,
          selectedItemColor: Colors.red,
        
        items:const  [
        BottomNavigationBarItem(icon: Icon(Icons.home),label: 'Home'),
        BottomNavigationBarItem(icon: Icon(Icons.search),label: 'Search'),
        BottomNavigationBarItem(icon: CustomIcon(),label:''),
        BottomNavigationBarItem(icon: Icon(Icons.message),label:'Messages'),
        BottomNavigationBarItem(icon: Icon(Icons.person),label:'Profile')
      ]),
    );
  }
}
