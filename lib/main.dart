import 'package:flutter/material.dart';
import 'package:flutter_ncsnxthck_sust_ghle/screens/bottom_bar.dart';
import 'package:flutter_ncsnxthck_sust_ghle/screens/wrapper.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_ncsnxthck_sust_ghle/services/auth.dart';
import 'package:provider/provider.dart';
import 'firebase_options.dart';
import './models/user.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return StreamProvider<AppUser?>.value(
      value: AuthService().user,
      initialData: null,
      child: MaterialApp(
        home: BottomBar(),
      ),
    );
  }
}
