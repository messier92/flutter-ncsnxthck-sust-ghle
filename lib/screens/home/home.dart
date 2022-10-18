import 'package:flutter/material.dart';
import 'package:flutter_ncsnxthck_sust_ghle/screens/home/brew_list.dart';
import 'package:flutter_ncsnxthck_sust_ghle/screens/home/settings_form.dart';
import 'package:flutter_ncsnxthck_sust_ghle/services/auth.dart';
import 'package:flutter_ncsnxthck_sust_ghle/services/database.dart';
import 'package:provider/provider.dart';
import 'package:flutter_ncsnxthck_sust_ghle/models/brew.dart';

class Home extends StatelessWidget {
  Home({super.key});

  final AuthService _auth = AuthService();

  @override
  Widget build(BuildContext context) {
    void _showSettingsPanel() {
      showModalBottomSheet(
          context: context,
          builder: (context) {
            return Container(
              padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 60.0),
              child: SettingsForm(),
            );
          });
    }

    return StreamProvider<List<Brew>>.value(
      value: DatabaseService().brews,
      initialData: [],
      child: Scaffold(
        backgroundColor: Colors.brown[50],
        appBar: AppBar(
            title: Text('MunchPouch'),
            backgroundColor: Colors.brown[400],
            elevation: 0.0,
            actions: <Widget>[
              TextButton.icon(
                  icon: Icon(Icons.person),
                  label: Text('logout'),
                  onPressed: () async {
                    await _auth.signOut();
                  }),
              // flatbutton
              TextButton.icon(
                icon: Icon(Icons.settings),
                label: Text('Settings'),
                onPressed: () => _showSettingsPanel(),
              )
            ]),
        body: BrewList(),
      ),
    );
  }
}
