import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_ncsnxthck_sust_ghle/models/brew.dart';

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
                  backgroundImage: AssetImage("assets/images/bananas.jpg"),
                ),
                title: Column(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text('Bananas'),
                      ],
                    ),
                  ],
                ),
                subtitle: Padding(
                  padding: EdgeInsets.only(top: 5),
                  child: Container(
                    child: Column(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text("Placed by: Eugene"),
                            SizedBox(width: 10),
                            Text("Location: Home Fridge"),
                            SizedBox(width: 10),
                            Text(
                              "Placed On: 13/10/2022",
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
                trailing: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Icon(Icons.more_vert),
                  ],
                ),
              ),
            ),
            Card(
              margin: EdgeInsets.fromLTRB(20.0, 6.0, 20.0, 0.0),
              child: ListTile(
                leading: CircleAvatar(
                  radius: 20,
                  backgroundImage: AssetImage("assets/images/chocolatecake.jpg"),
                ),
                title: Column(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text('Chocolate Cake'),
                      ],
                    ),
                  ],
                ),
                subtitle: Padding(
                  padding: EdgeInsets.only(top: 5),
                  child: Container(
                    child: Column(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text("Placed by: Anwar"),
                            SizedBox(width: 10),
                            Text("Location: Fridge #1516, Blk A3"),
                            SizedBox(width: 10),
                            Text(
                              "Placed On: 15/10/2022",
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
                trailing: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Icon(Icons.more_vert),
                  ],
                ),
              ),
            ),
            Card(
              margin: EdgeInsets.fromLTRB(20.0, 6.0, 20.0, 0.0),
              child: ListTile(
                leading: CircleAvatar(
                  radius: 20,
                  backgroundImage: AssetImage("assets/images/chocolatecake.jpg"),
                ),
                title: Column(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text('Chocolate Cake'),
                      ],
                    ),
                  ],
                ),
                subtitle: Padding(
                  padding: EdgeInsets.only(top: 5),
                  child: Container(
                    child: Column(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text("Placed by: Anwar"),
                            SizedBox(width: 10),
                            Text("Location: Fridge #1516, Blk A3"),
                            SizedBox(width: 10),
                            Text(
                              "Placed On: 15/10/2022",
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
                trailing: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Icon(Icons.more_vert),
                  ],
                ),
              ),
            ),
            Card(
              margin: EdgeInsets.fromLTRB(20.0, 6.0, 20.0, 0.0),
              child: ListTile(
                leading: CircleAvatar(
                  radius: 20,
                  backgroundImage: AssetImage("assets/images/potatochips.jpg"),
                ),
                title: Column(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text('Potato Chips'),
                      ],
                    ),
                  ],
                ),
                subtitle: Padding(
                  padding: EdgeInsets.only(top: 5),
                  child: Container(
                    child: Column(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text("Placed by: Kevin"),
                            SizedBox(width: 10),
                            Text("Location: Pantry C7"),
                            SizedBox(width: 10),
                            Text(
                              "Placed On: 22/10/2022",
                            ),
                            SizedBox(width: 10),
                            Text("Date of Expiry: 30/10/2022"),
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
                trailing: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Icon(Icons.more_vert),
                  ],
                ),
              ),
            ),
          ],
        ));
  }
}
