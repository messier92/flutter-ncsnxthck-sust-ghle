import 'dart:io';

import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:image_picker/image_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ncsnxthck_sust_ghle/models/user.dart';
import 'package:flutter_ncsnxthck_sust_ghle/services/database.dart';
import 'package:flutter_ncsnxthck_sust_ghle/shared/constants.dart';
import 'package:flutter_ncsnxthck_sust_ghle/shared/widgets/loading.dart';
import 'package:provider/provider.dart';

class AddItemsForm extends StatefulWidget {
  const AddItemsForm({super.key});

  @override
  State<AddItemsForm> createState() => _AddItemsFormState();
}

class _AddItemsFormState extends State<AddItemsForm> {
  @override
  final _formKey = GlobalKey<FormState>();

  final ButtonStyle signInStyle = ElevatedButton.styleFrom(
      textStyle: const TextStyle(fontSize: 20, color: Colors.white),
      backgroundColor: Colors.pink[400]);

  File? image;
  String? _nameofProduct;
  String? _nameofUser;

  Future pickImage(ImageSource source) async {
    try {
      final image = await ImagePicker().pickImage(source: source);
      if (image == null) return;

      final imageTemporary = File(image.path);
      setState(() => this.image = imageTemporary);
    } on PlatformException catch (e) {
      print('Failed to pick image: $e');
    }
  }

  DateTime selectedDate = DateTime.now();

  Future<void> _selectDateofPlacement(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: selectedDate,
        firstDate: DateTime(2015, 8),
        lastDate: DateTime(2101));
    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked;
      });
    }
  }

  Future<void> _selectDateofExpiry(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: selectedDate,
        firstDate: DateTime(2015, 8),
        lastDate: DateTime(2101));
    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(children: <Widget>[
        const Text(
          'Add a new item to this fridge',
          style: TextStyle(fontSize: 18.0),
        ),
        const SizedBox(height: 20.0),
        Row(
          children: [
            image != null
                ? ClipOval(
                    child: Image.file(image!,
                        width: 80, height: 80, fit: BoxFit.cover))
                : CircleAvatar(
                    radius: 20,
                    backgroundImage: AssetImage("images/bananas.jpg"),
                    child: Padding(
                      padding: EdgeInsets.all(5),
                    ),
                  ),
            Spacer(),
            ElevatedButton.icon(
              // <-- ElevatedButton
              onPressed: () => pickImage(ImageSource.gallery),
              icon: Icon(
                Icons.image_outlined,
                size: 18.0,
              ),
              label: Text('Pick Gallery'),
            ),
            const SizedBox(width: 10.0),
            ElevatedButton.icon(
              // <-- ElevatedButton
              onPressed: () => pickImage(ImageSource.camera),
              icon: Icon(
                Icons.camera,
                size: 18.0,
              ),
              label: Text('Pick Camera'),
            ),
          ],
        ),
        const SizedBox(height: 10.0),
        TextFormField(
          decoration: textInputDecoration.copyWith(hintText: 'Name of item'),
          validator: (val) =>
              val!.isEmpty ? 'Please enter the name of this product' : null,
          onChanged: (val) => setState(() => _nameofProduct = val),
        ),
        SizedBox(height: 20),
        // dropdown
        TextFormField(
          decoration: textInputDecoration.copyWith(hintText: 'Name of owner'),
          validator: (val) =>
              val!.isEmpty ? 'Please enter a name of the owner' : null,
          onChanged: (val) => setState(() => _nameofUser = val),
        ),
        SizedBox(height: 20),
        Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text("Date of placement:"),
              Spacer(),
              Text("${selectedDate.toLocal()}".split(' ')[0]),
              SizedBox(
                width: 20.0,
              ),
              ElevatedButton(
                onPressed: () => _selectDateofPlacement(context),
                child: Text('Select date'),
              ),
            ],
          ),
        ),
        SizedBox(height: 20),
        Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text("Date of expiry:"),
              Spacer(),
              Text("${selectedDate.toLocal()}".split(' ')[0]),
              SizedBox(
                width: 20.0,
              ),
              ElevatedButton(
                onPressed: () => _selectDateofExpiry(context),
                child: Text('Select date'),
              ),
            ],
          ),
        ),
        SizedBox(height: 20),
        ElevatedButton(
            style: signInStyle,
            child: Text('Add',
                style: TextStyle(
                  color: Colors.white,
                )),
            onPressed: () async {
              if (_formKey.currentState!.validate()) {
                Navigator.pop(context);
              }
            })
      ]),
    );
  }
}
