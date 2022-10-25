import 'package:flutter/material.dart';
import 'package:flutter_ncsnxthck_sust_ghle/screens/search_screen.dart';
import 'package:flutter_ncsnxthck_sust_ghle/services/auth.dart';
import 'package:flutter_ncsnxthck_sust_ghle/services/database.dart';
import 'package:provider/provider.dart';
import 'package:flutter_ncsnxthck_sust_ghle/models/brew.dart';

class SearchPage extends StatelessWidget {
  SearchPage({super.key});

  final AuthService _auth = AuthService();

  @override
  Widget build(BuildContext context) {
    return StreamProvider<List<Brew>>.value(
      value: DatabaseService().brews,
      initialData: [],
      child: Scaffold(
        backgroundColor: Colors.indigo[50],
        appBar: AppBar(
          title: Text('MunchPouch'),
          backgroundColor: Colors.indigo[400],
          elevation: 0.0,
        ),
        body: SearchScreen(),
      ),
    );
  }
}
