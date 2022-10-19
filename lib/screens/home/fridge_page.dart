import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class FridgePage extends StatefulWidget {
  const FridgePage({super.key});

  @override
  State<FridgePage> createState() => _FridgePageState();
}

class _FridgePageState extends State<FridgePage> {
  final CollectionReference _fridges =
      FirebaseFirestore.instance.collection('fridges');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: StreamBuilder(
      stream: _fridges.snapshots(),
      builder: (context, AsyncSnapshot<QuerySnapshot> streamSnapshot) {
        if (streamSnapshot.hasData) {
          return ListView.builder(
              itemCount: streamSnapshot.data!.docs.length,
              itemBuilder: (context, index) {
                final DocumentSnapshot documentSnapshot =
                    streamSnapshot.data!.docs[index];
                return Card(
                    margin: const EdgeInsets.all(10),
                    child: ListTile(
                        title: Row(
                          children: <Widget>[
                            Expanded(child: Text(documentSnapshot['product'])),
                            Expanded(child: Text(documentSnapshot['belongsTo']))
                          ],
                        ),
                        subtitle: Row(
                          children: <Widget>[
                            Expanded(
                                child: Text(documentSnapshot['dateOfPlacement']
                                    .toString()))
                          ],
                        )));
              });
        } else {
          return const Center(
            child: Text("Test"),
          );
        }
      },
    ));
  }
}
