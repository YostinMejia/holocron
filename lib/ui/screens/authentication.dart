import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:star_wars/cubit/user_cubit.dart';
import 'package:star_wars/ui/screens/login.dart';
import 'package:star_wars/ui/screens/main_template.dart';
import 'package:star_wars/ui/screens/signup.dart';

class Authentication extends StatefulWidget {
  const Authentication({super.key});

  @override
  State<Authentication> createState() => _AuthenticationState();
}

class _AuthenticationState extends State<Authentication> {
  bool _isLogin = true;
  User? user;
  @override
  void initState() {
    super.initState();

    FirebaseAuth.instance.authStateChanges().listen((User? firebaseUser) {
      setState(() {
        user = firebaseUser;
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
    if (user != null) {
      BlocProvider.of<UserCubit>(context).logInUser(
          id:  user!.uid,
          email: user!.email!,
          name: user!.displayName );
      return const MainTemplateState();
    } else {
      return Scaffold(
          backgroundColor: Theme.of(context).colorScheme.surface,
          body: _isLogin
              ? LogIn(changeAuthMode: _toggleAuthMode)
              : SignUp(changeAuthMode: _toggleAuthMode));
    }
  }
}
