import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:memories_app/resources/colors.dart';
import 'package:memories_app/screens/login_screen.dart';
import 'package:memories_app/screens/profile_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen(this.uid, this.email, {Key? key}) : super(key: key);

  final String? uid;
  final String? email;

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kColorDark,
        leading: GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => ProfileScreen(uid: widget.uid, email: widget.email,)),
            );
          },
          child: Icon(
            Icons.person,
            color: Colors.white,
          ),
        ),
      ),
      body: Center(
      ),
    );
  }

}
