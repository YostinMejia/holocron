import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:star_wars/ui/screens/login.dart';
import 'package:star_wars/ui/screens/main_template.dart';
import 'package:star_wars/ui/screens/signup.dart';

class Authentication extends StatefulWidget {
  const Authentication({super.key});

  @override
  State<Authentication> createState() => _AuthenticationState();
}

class _AuthenticationState extends State<Authentication> {
  bool _logged = false;
  bool _isLogin = true;
  @override
  void initState() {
    super.initState();

    FirebaseAuth.instance.authStateChanges().listen((User? user) {
      setState(() {
        user == null ? _logged = false : _logged = true;
      });
    });
  }

  _toggleAuthMode() {
    setState(() {
      _isLogin = !_isLogin;
    });
  }

  @override
  Widget build(BuildContext context) {
    return _logged
        ? const MainTemplateState()
        : Scaffold(
            backgroundColor: Theme.of(context).colorScheme.surface,
            body: _isLogin
                ? LogIn(changeAuthMode: _toggleAuthMode)
                : SignUp(changeAuthMode: _toggleAuthMode));
  }
}
