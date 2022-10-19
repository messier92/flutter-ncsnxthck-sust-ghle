import 'package:flutter/material.dart';
import 'package:flutter_ncsnxthck_sust_ghle/services/auth.dart';
import 'package:flutter_ncsnxthck_sust_ghle/shared/constants.dart';
import 'package:flutter_ncsnxthck_sust_ghle/shared/loading.dart';

// RaisedButton replaced by ElevatedButton
class SignIn extends StatefulWidget {
  final Function toggleView;

  const SignIn({super.key, required this.toggleView});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final ButtonStyle signInStyle = ElevatedButton.styleFrom(
      textStyle: const TextStyle(fontSize: 20, color: Colors.white),
      backgroundColor: Colors.pink[400]);

  final AuthService _auth = AuthService();
  final _formKey = GlobalKey<FormState>();
  bool loading = false;

  // text field state
  String email = '';
  String password = '';
  String error = '';

  @override
  Widget build(BuildContext context) {
    return loading
        ? const Loading()
        : Scaffold(
            backgroundColor: Colors.indigo[100],
            appBar: AppBar(
                backgroundColor: Colors.indigo[400],
                elevation: 0.0,
                title: Text('Sign in to MunchPouch'),
                actions: <Widget>[
                  TextButton.icon(
                    icon: Icon(Icons.person),
                    label: Text('Register'),
                    onPressed: () {
                      widget.toggleView();
                    },
                  )
                ]),
            body: Container(
              padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 50.0),
              child: Form(
                  key: _formKey,
                  child: Column(
                    children: <Widget>[
                      SizedBox(height: 20.0),
                      TextFormField(
                          decoration:
                              textInputDecoration.copyWith(hintText: 'Email'),
                          validator: (val) =>
                              val!.isEmpty ? 'Enter an email' : null,
                          onChanged: (val) {
                            setState(() => email = val);
                          }),
                      SizedBox(height: 20.0),
                      TextFormField(
                          decoration: textInputDecoration.copyWith(
                              hintText: 'Password'),
                          validator: (val) => val!.length < 6
                              ? 'Enter a password 6+ characters long'
                              : null,
                          obscureText: true,
                          onChanged: (val) {
                            setState(() => password = val);
                          }),
                      SizedBox(height: 20.0),
                      ElevatedButton(
                        style: signInStyle,
                        child: Text(
                          'Sign In',
                          style: TextStyle(color: Colors.white),
                        ),
                        onPressed: () async {
                          if (_formKey.currentState!.validate()) {
                            setState(() => loading = true);
                            dynamic result = await _auth
                                .signInWithEmailAndPassword(email, password);
                            if (result == null) {
                              setState(() => error =
                                  'Unable to sign in with those credentials');
                              loading = false;
                            }
                          }
                        },
                      ),
                      SizedBox(height: 20.0),
                      ElevatedButton(
                          style: signInStyle,
                          child: Text(
                            'Sign In Anonymously',
                            style: TextStyle(color: Colors.white),
                          ),
                          onPressed: () async {
                            dynamic result = await _auth.signInAnon();
                            if (result == null) {
                              setState(() => error =
                                  'Unable to sign in with those credentials');
                              loading = false;
                            }
                          }),
                      SizedBox(height: 12.0),
                      Text(error,
                          style: TextStyle(color: Colors.red, fontSize: 14.0)),
                    ],
                  )),
            ),
          );
  }
}
