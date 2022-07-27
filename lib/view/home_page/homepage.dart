import 'package:e_commerce_app/view/display_products/display_products.dart';
import 'package:e_commerce_app/view/sign_in.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder(
          stream: FirebaseAuth.instance.authStateChanges(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            } else if (snapshot.hasData) {
              return const DisplayProducts();
            } else if (snapshot.hasError) {
              return const Center(
                child: Text('Error Logging in'),
              );
            } else {
              return const Signin();
            }
          }),
    );
  }
}
