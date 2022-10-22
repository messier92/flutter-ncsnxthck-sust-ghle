import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_ncsnxthck_sust_ghle/models/brew.dart';
import '../home/brew_tile.dart';

class FridgeInventoryList extends StatefulWidget {
  const FridgeInventoryList({super.key});

  @override
  State<FridgeInventoryList> createState() => _FridgeListState();
}

class _FridgeListState extends State<FridgeInventoryList> {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(top: 8.0),
        child: ListView(
          children: [
            Card(
              margin: EdgeInsets.fromLTRB(20.0, 6.0, 20.0, 0.0),
              child: ListTile(
                leading: CircleAvatar(
                  radius: 20,
                  backgroundImage: AssetImage("images/bananas.jpg"),
                  child: Padding(
                    padding: EdgeInsets.all(5),
                  ),
                ),
                title: Text('Bananas'),
                subtitle: Padding(
                  padding: EdgeInsets.only(top: 10),
                  child: Container(
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text("Placed by: John"),
                            SizedBox(width: 10),
                            Text(
                              "Date of Placement: 13/10/2022",
                            ),
                            SizedBox(width: 10),
                            Text("Date of Expiry: 22/10/2022"),
                            SizedBox(width: 10),
                            Text("Item expires in 9 days",
                                style: TextStyle(color: Colors.red[500]))
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                visualDensity: VisualDensity.compact,
                dense: true,
                trailing: Icon(Icons.more_vert),
              ),
            ),
            Card(
              margin: EdgeInsets.fromLTRB(20.0, 6.0, 20.0, 0.0),
              child: ListTile(
                leading: CircleAvatar(
                  radius: 20,
                  backgroundImage: AssetImage("images/chocolatecake.jpg"),
                  child: Padding(
                    padding: EdgeInsets.all(5),
                  ),
                ),
                title: Text('Chocolate cake'),
                subtitle: Padding(
                  padding: EdgeInsets.only(top: 10),
                  child: Container(
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text("Placed by: Mary"),
                            SizedBox(width: 10),
                            Text(
                              "Date of Placement: 15/10/2022",
                            ),
                            SizedBox(width: 10),
                            Text("Date of Expiry: 20/10/2022"),
                            SizedBox(width: 10),
                            Text("Item expires in 5 days",
                                style: TextStyle(color: Colors.red[800]))
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                visualDensity: VisualDensity.compact,
                dense: true,
                trailing: Icon(Icons.more_vert),
              ),
            ),
            Card(
              margin: EdgeInsets.fromLTRB(20.0, 6.0, 20.0, 0.0),
              child: ListTile(
                leading: CircleAvatar(
                  radius: 20,
                  backgroundImage: AssetImage("images/potatochips.jpg"),
                  child: Padding(
                    padding: EdgeInsets.all(5),
                  ),
                ),
                title: Text('Potato Chips'),
                subtitle: Padding(
                  padding: EdgeInsets.only(top: 10),
                  child: Container(
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text("Placed by: Sue"),
                            SizedBox(width: 10),
                            Text(
                              "Date of Placement: 22/10/2022",
                            ),
                            SizedBox(width: 10),
                            Text("Date of Expiry: 30/10/2023"),
                            SizedBox(width: 10),
                            Text("Item expires in 373 days",
                                style: TextStyle(color: Colors.red[100]))
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                visualDensity: VisualDensity.compact,
                dense: true,
                trailing: Icon(Icons.more_vert),
              ),
            ),
          ],
        ));
  }
}
