import 'package:flutter/material.dart';
import 'package:flutter_ncsnxthck_sust_ghle/shared/constants.dart';
import 'package:gap/gap.dart';

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
                  radius: 30,
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
                            Row(
                              children: [
                                Text("Item expires in 9 days",
                                    style: reminderStyle.copyWith(color: Colors.red[500])),
                                Icon(Icons.doorbell, size: 15),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                visualDensity: VisualDensity.compact,
                dense: true,
                trailing: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 75,
                      height: 18,
                      child: ElevatedButton(child: Text('Donate'), style: qrLinkStyle,
                          onPressed: () async {}),
                    ),
                    Gap(2),
                    SizedBox(
                      width: 75,
                      height: 18,
                      child: ElevatedButton(child: Text('Remove'), style: qrLinkStyle,
                          onPressed: () async {}),
                    )
                  ],
                ),
              ),
            ),
            Card(
              color: Colors.red[100],
              margin: EdgeInsets.fromLTRB(20.0, 6.0, 20.0, 0.0),
              child: ListTile(
                leading: CircleAvatar(
                  radius: 30,
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
                            Row(
                              children: [
                                Text("Item expires in 5 days",
                                    style: TextStyle(color: Colors.red[800], fontSize: 10)),
                                Icon(Icons.doorbell, size: 15),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                visualDensity: VisualDensity.compact,
                dense: true,
                trailing: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 75,
                      height: 18,
                      child: ElevatedButton(child: Text('Donated'), style: donatedStyle,
                          onPressed: () async {}),
                    ),
                    Gap(2),
                    SizedBox(
                      width: 75,
                      height: 18,
                      child: ElevatedButton(child: Text('Remove'), style: qrLinkStyle,
                          onPressed: () async {}),
                    ),
                  ],
                ),
              ),
            ),
            Card(
              margin: EdgeInsets.fromLTRB(20.0, 6.0, 20.0, 0.0),
              child: ListTile(
                leading: CircleAvatar(
                  radius: 30,
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
                            Row(
                              children: [
                                Text("Item expires in 5 days",
                                    style: TextStyle(color: Colors.red[800], fontSize: 10)),
                                Icon(Icons.doorbell, size: 15),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                visualDensity: VisualDensity.compact,
                dense: true,
                trailing: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 75,
                      height: 18,
                      child: ElevatedButton(child: Text('Donate'), style: qrLinkStyle,
                          onPressed: () async {}),
                    ),
                    Gap(2),
                    SizedBox(
                      width: 75,
                      height: 18,
                      child: ElevatedButton(child: Text('Remove'), style: qrLinkStyle,
                          onPressed: () async {}),
                    )
                  ],
                ),
              ),
            ),

            Card(
              margin: EdgeInsets.fromLTRB(20.0, 6.0, 20.0, 0.0),
              child: ListTile(
                leading: CircleAvatar(
                  radius: 30,
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
                                style: reminderStyle.copyWith(color: Colors.red[100]))
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                visualDensity: VisualDensity.compact,
                dense: true,
                trailing: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 75,
                      height: 18,
                      child: ElevatedButton(child: Text('Donate'), style: qrLinkStyle,
                          onPressed: () async {}),
                    ),
                    Gap(2),
                    SizedBox(
                      width: 75,
                      height: 18,
                      child: ElevatedButton(child: Text('Remove'), style: qrLinkStyle,
                          onPressed: () async {}),
                    )
                  ],
                ),
              ),
            ),
          ],
        ));
  }
}
