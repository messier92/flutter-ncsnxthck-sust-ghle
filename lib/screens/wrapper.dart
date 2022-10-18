import 'package:flutter/material.dart';
import 'package:flutter_ncsnxthck_sust_ghle/screens/authenticate/authenticate.dart';
import 'package:flutter_ncsnxthck_sust_ghle/screens/home/home.dart';
import './/models/user.dart';
import 'package:provider/provider.dart';

class Wrapper extends StatelessWidget {
  const Wrapper({super.key});

  @override
  Widget build(BuildContext context) {
    // return either Home or Authenticate widget
    final user = Provider.of<AppUser?>(context);
    if (user == null) {
      return Authenticate();
    } else {
      return Home();
    }
  }
}
