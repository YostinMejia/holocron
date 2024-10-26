import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:star_wars/cubit/user_cubit.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UserCubit, UserState>(
      builder: (context, state) {
        if (state is UserLoggedIn) {
          final user = state.user;
          return Padding(
            padding: const EdgeInsets.only(top: kToolbarHeight),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text("Profile"),
                Text(user.name),
                const SizedBox(height: 10),
                const Text("Email"),
                Text(user.email),
                ElevatedButton(
                  onPressed: () {
                    FirebaseAuth.instance.signOut();
                  },
                  child: const Text("Sign Out"),
                ),
              ],
            ),
          );
        }
        return const Text("No user data available");
      },
    );
  }
}

