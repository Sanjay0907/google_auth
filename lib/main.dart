import 'package:e_commerce_app/controller/provider/signin_provider.dart';
import 'package:e_commerce_app/view/home_page/homepage.dart';
import 'package:e_commerce_app/view/sign_in.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const Ecommerce());
}

class Ecommerce extends StatelessWidget {
  const Ecommerce({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, _, __) {
      return MultiProvider(
        providers: [
          ChangeNotifierProvider<GoogleSignInProvider>(
              create: (context) => GoogleSignInProvider()),
        ],
        child: const MaterialApp(
          debugShowCheckedModeBanner: false,
          home: HomePage(),
        ),
      );
      // return
    });
  }
}
