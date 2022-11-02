import 'dart:io';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:image_picker/image_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ncsnxthck_sust_ghle/shared/constants.dart';
import 'package:intl/intl.dart';
import 'package:flutter_ncsnxthck_sust_ghle/services/database.dart';


class AddItemsForm extends StatefulWidget {
  const AddItemsForm({super.key});

  @override
  State<AddItemsForm> createState() => _AddItemsFormState();
}

class _AddItemsFormState extends State<AddItemsForm> {
  @override
  final _formKey = GlobalKey<FormState>();

  File? image;
  String _nameofProduct = "";
  String _nameofUser =  "";
  String _storageLocation = "";
  DateTime _selectedDateofExpiry = DateTime.now();
  DateTime _selectedDateofPlacement = DateTime.now();

  final CollectionReference fridgeInventoryList = FirebaseFirestore.instance.collection('fridges');

  Future<void> createFridgeInventoryItem(String nameOfUser, String nameOfProduct, String storageLocation, String dateOfExpiry, String dateOfPlacement, String uid) async {
    final result = await DatabaseService().addUser(
      fullName: 'Test',
      age: '123',
      email: 'Test2',
    );
    print(result);
  }

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

  Future<void> _selectDateofPlacement(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: _selectedDateofPlacement,
        firstDate: DateTime(2015, 8),
        lastDate: DateTime(2101));
    if (picked != null && picked != _selectedDateofPlacement) {
      setState(() {
        _selectedDateofPlacement = picked;
      });
    }
  }

  Future<void> _selectDateofExpiry(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: _selectedDateofExpiry,
        firstDate: DateTime(2015, 8),
        lastDate: DateTime(2101));
    if (picked != null && picked != _selectedDateofExpiry) {
      setState(() {
        _selectedDateofExpiry = picked;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(children: <Widget>[
        const Text(
          'Add a new item',
          style: TextStyle(fontSize: 15.0),
        ),
        const SizedBox(height: 20.0),
        Row(
          children: [
            image != null
                ? ClipOval(
                    child: Image.file(image!,
                        width: 40, height: 40, fit: BoxFit.cover))
                : CircleAvatar(
                    radius: 20,
                    backgroundImage: AssetImage("assets/images/bananas.jpg"),
                    child: Padding(
                      padding: EdgeInsets.all(5),
                    ),
                  ),
            Spacer(),
            SizedBox(
              width: 100,
              height: 40,
              child: ElevatedButton.icon(
                // <-- ElevatedButton
                onPressed: () => pickImage(ImageSource.gallery),
                icon: Icon(
                  Icons.image_outlined,
                  size: 10.0,
                ),
                label: Text('Gallery'),
              ),
            ),
            const SizedBox(width: 10.0),
            SizedBox(
              width: 100,
              height: 40,
              child: ElevatedButton.icon(
                // <-- ElevatedButton
                onPressed: () => pickImage(ImageSource.camera),
                icon: Icon(
                  Icons.camera,
                  size: 10.0,
                ),
                label: Text('Camera'),
              ),
            ),
          ],
        ),
        const SizedBox(height: 10.0),
        SizedBox(
          child: TextFormField(
            decoration: textInputDecoration.copyWith(hintText: 'Name of item'),
            validator: (val) =>
                val!.isEmpty ? 'Please enter the name of this product' : null,
            onChanged: (val) => setState(() => _nameofProduct = val),
          ),
        ),
        SizedBox(height: 5),
        // dropdown
        TextFormField(
          decoration: textInputDecoration.copyWith(hintText: 'Name of owner'),
          validator: (val) =>
              val!.isEmpty ? 'Please enter a name of the owner' : null,
          onChanged: (val) => setState(() => _nameofUser = val),
        ),
        SizedBox(height: 5),
        TextFormField(
          decoration:
              textInputDecoration.copyWith(hintText: 'Storage location'),
          validator: (val) =>
              val!.isEmpty ? 'Please enter the storage location' : null,
          onChanged: (val) => setState(() => _storageLocation = val),
        ),
        SizedBox(height: 10),
        Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                //apply margin and padding using Container Widget.
                margin: EdgeInsets.symmetric(vertical: 15),
                child: Text("Date of placement: "),
              ),
              Spacer(),
              Container(
                //apply margin and padding using Container Widget.
                margin: EdgeInsets.symmetric(vertical: 15),
                child:
                    Text("${_selectedDateofPlacement.toLocal()}".split(' ')[0]),
              ),
              SizedBox(
                width: 10.0,
              ),
              SizedBox(
                width: 90,
                height: 40,
                child: ElevatedButton(
                  onPressed: () => _selectDateofPlacement(context),
                  child: Text('Select date'),
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 10),
        Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                //apply margin and padding using Container Widget.
                margin: EdgeInsets.symmetric(vertical: 15),
                child: Text("Date of expiry: "),
              ),
              Spacer(),
              Container(
                //apply margin and padding using Container Widget.
                margin: EdgeInsets.symmetric(vertical: 15),
                child: Text("${_selectedDateofExpiry.toLocal()}".split(' ')[0]),
              ),
              SizedBox(
                width: 20.0,
              ),
              SizedBox(
                width: 90,
                height: 40,
                child: ElevatedButton(
                  onPressed: () => _selectDateofExpiry(context),
                  child: Text('Select date'),
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 10),
        ElevatedButton(
            style: signInStyle,
            child: Text('Add',
                style: TextStyle(
                  color: Colors.white,
                )),
            onPressed: () async {
              if (_formKey.currentState!.validate()) {
                final result = await DatabaseService().addUser(
                  fullName: 'Test',
                  age: '123',
                  email: 'Test2',
                );
                print("Added" + result.toString());
                Navigator.pop(context);
              }
            })
      ]),
    );
  }
}
