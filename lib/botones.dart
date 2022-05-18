import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
class GoogleSingIn extends StatefulWidget {
  const GoogleSingIn({Key? key}) : super(key: key);

  @override
  State<GoogleSingIn> createState() => _GoogleSingInState();
}

class _GoogleSingInState extends State<GoogleSingIn> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: MaterialButton(
              color: Colors.teal[100],
              elevation: 10,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    height: 30.0,
                    width: 30.0,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image:
                          AssetImage('imgs/google.jpg'),
                          fit: BoxFit.cover),
                      shape: BoxShape.circle,
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text("Sign In with Google")
                ],
              ),
              // by onpressed we call the function signup function
              onPressed: () {

              },
            ),
          )
        ],
      ),
    );
  }
}


final FirebaseAuth auth = FirebaseAuth.instance;

Future<void> singup(BuildContext context) async {
  final GoogleSingIn googleSingIn = GoogleSingIn();
  final GoogleSignInAccount googleSinginAccount = await googleSingIn.singIn();

}
