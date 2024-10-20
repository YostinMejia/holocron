import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class SignUp extends StatelessWidget {
  final VoidCallback changeAuthMode;
  SignUp({super.key, required this.changeAuthMode});

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    TextEditingController email = TextEditingController();
    TextEditingController password = TextEditingController();

    return Padding(
      padding: const EdgeInsets.only(top: kToolbarHeight),
      child: Form(
          key: _formKey,
          child: Column(
            
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Sign Up",
                style: Theme.of(context).textTheme.titleLarge,
              ),
              TextFormField(
                  controller: email,
                  decoration: const InputDecoration(
                    hintText: 'Enter your email',
                  ),
                  validator: (String? value) => value == null || value.isEmpty
                      ? 'Enter the Email'
                      : null),
              TextFormField(
                  controller: password,
                  decoration: const InputDecoration(
                    hintText: 'Enter your password',
                  ),
                  validator: (String? value) => value == null || value.isEmpty
                      ? 'Enter the password'
                      : null),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    FirebaseAuth.instance.createUserWithEmailAndPassword(
                        email: email.text, password: password.text);
                  }
                },
                child: const Text('Submit'),
              ),
              TextButton(
                  onPressed: changeAuthMode,
                  child: Text(
                    "Already have an account? Log in",
                    style: TextStyle(
                        color: Theme.of(context).colorScheme.onPrimary),
                  )),
            ],
          )),
    );
  }
}
