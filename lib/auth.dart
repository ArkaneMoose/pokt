import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:pokt/screens/login/login_screen.dart';
import 'package:pokt/transitions.dart';

abstract class AuthGatedStatelessWidget extends StatefulWidget {
  AuthGatedStatelessWidget({Key key}) : super(key: key);
  Widget build(BuildContext context);

  @override
  _AuthGatedStatelessWidgetState createState() =>
      _AuthGatedStatelessWidgetState(this);
}

class _AuthGatedStatelessWidgetState extends State<AuthGatedStatelessWidget> {
  final AuthGatedStatelessWidget _widget;
  StreamSubscription<User> _subscription;
  bool _pushedLoginScreen;
  bool _loggedIn;

  _AuthGatedStatelessWidgetState(this._widget);

  @override
  void initState() {
    super.initState();
    _pushedLoginScreen = false;
    _loggedIn = FirebaseAuth.instance.currentUser != null;
    _subscription = FirebaseAuth.instance.authStateChanges().listen((user) {
      bool loggedIn = (user != null);
      setState(() {
        _loggedIn = loggedIn;
      });
      if (!loggedIn && !_pushedLoginScreen) {
        _pushedLoginScreen = true;
        Navigator.push(
                context, FadePageRoute(builder: (context) => LoginScreen()))
            .whenComplete(() {
          _pushedLoginScreen = false;
        });
      }
    });
  }

  @override
  void dispose() {
    super.dispose();
    _subscription.cancel();
  }

  @override
  Widget build(BuildContext context) {
    if (!_loggedIn) {
      return Scaffold(body: Center(child: CircularProgressIndicator()));
    }
    return this._widget.build(context);
  }
}

Future<UserCredential> signInWithGoogle() async {
  // Trigger the authentication flow
  final GoogleSignInAccount googleUser = await GoogleSignIn().signIn();

  // Return if sign-in cancelled
  if (googleUser == null) {
    return null;
  }

  // Obtain the auth details from the request
  final GoogleSignInAuthentication googleAuth = await googleUser.authentication;

  // Create a new credential
  final GoogleAuthCredential credential = GoogleAuthProvider.credential(
    accessToken: googleAuth.accessToken,
    idToken: googleAuth.idToken,
  );

  // Once signed in, return the UserCredential
  return await FirebaseAuth.instance.signInWithCredential(credential);
}

Future<void> signOut() async {
  await FirebaseAuth.instance.signOut();
  await GoogleSignIn().signOut();
}
