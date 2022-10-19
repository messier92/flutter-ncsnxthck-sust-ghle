import 'package:flutter/material.dart';
import 'package:flutter_ncsnxthck_sust_ghle/models/user.dart';
import 'package:flutter_ncsnxthck_sust_ghle/services/database.dart';
import 'package:flutter_ncsnxthck_sust_ghle/shared/constants.dart';
import 'package:flutter_ncsnxthck_sust_ghle/shared/loading.dart';
import 'package:provider/provider.dart';

class SettingsForm extends StatefulWidget {
  const SettingsForm({super.key});

  @override
  State<SettingsForm> createState() => _SettingsFormState();
}

class _SettingsFormState extends State<SettingsForm> {
  final _formKey = GlobalKey<FormState>();
  final List<String> sugars = ['0', '1', '2', '3', '4', '5'];

  final ButtonStyle signInStyle = ElevatedButton.styleFrom(
      textStyle: const TextStyle(fontSize: 20, color: Colors.white),
      backgroundColor: Colors.pink[400]);

  String? _currentName;
  String? _currentSugars;
  int? _currentStrength;

  @override
  Widget build(BuildContext context) {
    final user = Provider.of<AppUser>(context);

    return StreamBuilder<UserData>(
        stream: DatabaseService(uid: user.uid).userData,
        builder: (context, snapshot) {
          // do a check that Flutter has received the data
          if (snapshot.hasData) {
            UserData? userData = snapshot.data;
            return Form(
              key: _formKey,
              child: Column(children: <Widget>[
                const Text(
                  'Update your brew settings.',
                  style: TextStyle(fontSize: 18.0),
                ),
                const SizedBox(height: 20.0),
                TextFormField(
                  initialValue: userData?.name,
                  decoration: textInputDecoration,
                  validator: (val) =>
                      val!.isEmpty ? 'Please enter a name' : null,
                  onChanged: (val) => setState(() => _currentName = val),
                ),
                SizedBox(height: 20),
                // dropdown
                DropdownButtonFormField(
                    // value of the dropdown button form
                    decoration: textInputDecoration,
                    value: _currentSugars ?? userData?.sugars,
                    onChanged: (val) => setState(() => {_currentSugars = val}),
                    items: sugars.map((sugar) {
                      return DropdownMenuItem(
                        value: sugar,
                        child: Text('$sugar sugars'),
                      );
                    }).toList()),
                Slider(
                  value: (_currentStrength ?? userData?.strength)!.toDouble(),
                  activeColor: Colors.indigo[_currentStrength ?? 100],
                  inactiveColor: Colors.indigo[_currentStrength ?? 900],
                  min: 100,
                  max: 900,
                  divisions: 8,
                  onChanged: (val) => setState(() {
                    _currentStrength = val.round();
                  }),
                ),
                ElevatedButton(
                    style: signInStyle,
                    child: Text('Update',
                        style: TextStyle(
                          color: Colors.white,
                        )),
                    onPressed: () async {
                      if (_formKey.currentState!.validate()) {
                        await DatabaseService(uid: user.uid).updateUserData(
                            _currentSugars ?? userData?.sugars,
                            _currentName ?? userData?.name,
                            _currentStrength ?? userData?.strength);
                        Navigator.pop(context);
                      }
                    })
              ]),
            );
          } else {
            return Loading();
          }
        });
  }
}
