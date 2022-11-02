import 'package:flutter/material.dart';
import 'package:flutter_ncsnxthck_sust_ghle/screens/home/add_items_form.dart';
import 'package:flutter_ncsnxthck_sust_ghle/screens/home/fridge_inventory_list.dart';
import 'package:flutter_ncsnxthck_sust_ghle/services/auth.dart';
import 'package:flutter_ncsnxthck_sust_ghle/services/database.dart';
import 'package:provider/provider.dart';
import 'package:flutter_ncsnxthck_sust_ghle/models/brew.dart';

class FridgePage extends StatelessWidget {
  FridgePage({super.key});

  final AuthService _auth = AuthService();

  @override
  Widget build(BuildContext context) {
    void _showSettingsPanel() {
      showModalBottomSheet(
          context: context,
          isScrollControlled:true,
          builder: (context) {
            return Container(
              padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 30.0),
              child: AddItemsForm(),
            );
          });
    }

    return StreamProvider<List<Brew>>.value(
      value: DatabaseService().brews,
      initialData: [],
      child: Scaffold(
        backgroundColor: Colors.indigo[50],
        appBar: AppBar(
            title: Text('MunchPouch'),
            backgroundColor: Colors.indigo[400],
            elevation: 0.0,
            actions: <Widget>[
              TextButton.icon(
                icon: Icon(Icons.settings),
                label: Text('Add items'),
                onPressed: () => _showSettingsPanel(),
              )
            ]),
        body: FridgeInventoryList(),
      ),
    );
  }
}