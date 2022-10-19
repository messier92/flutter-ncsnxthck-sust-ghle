import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

/* 
Firestore.instance.collection("you_Collection_Path").add({
  "key":value //your data which will be added to the collection and collection will be created after this
}).then((_){
  print("collection created");
}).catchError((_){
  print("an error occured");
});
*/

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
        appBar: AppBar(
            title: Text('MunchPouch'),
            backgroundColor: Colors.indigo[400],
            elevation: 0.0,
            actions: <Widget>[
              TextButton.icon(
                  icon: Icon(Icons.person),
                  label: Text('logout'),
                  onPressed: () async {
                    print("Logout pressed");
                  }),
              TextButton.icon(
                icon: Icon(Icons.settings),
                label: Text('Settings'),
                onPressed: () async {
                  print("Settings pressed");
                },
              )
            ]),
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
                                Expanded(
                                    child: Text(documentSnapshot['product'])),
                                Expanded(
                                    child: Text(documentSnapshot['belongsTo']))
                              ],
                            ),
                            subtitle: Row(
                              children: <Widget>[
                                Expanded(
                                    child: Text(
                                        documentSnapshot['dateOfPlacement']
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
