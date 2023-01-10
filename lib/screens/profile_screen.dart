import 'package:memories_app/resources/colors.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
class ProfileScreen extends StatefulWidget {
  const ProfileScreen({this.uid,this.email, Key? key}) : super(key: key);
  final String? uid;
  final String? email;

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kColorDark,
        title: Text("Profile"),
      ),
      backgroundColor: kThemeColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Signed in as:", style: TextStyle(color: Colors.black87)),
            SizedBox(height: 10),
            Text(widget.email!, style: TextStyle(color: kColorDark, fontSize: 21)),
            Padding(
              padding:
              const EdgeInsets.symmetric(vertical: 40.0, horizontal: 20.0),
              child: Align(
                alignment: Alignment.bottomCenter,
                child: ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor:
                        MaterialStateProperty.all(kColorDark)),
                    onPressed: () {
                      _signOut();
                    },
                    child: Container(
                        child: const Text(
                          "Sign Out",
                          style: TextStyle(color: kColorLight),
                        ))),
              ),
            ),
          ],
        ),
      ),
    );
  }


  Future<void> _signOut() async {
    await FirebaseAuth.instance.signOut();
    Navigator.pop(context);
  }


}
