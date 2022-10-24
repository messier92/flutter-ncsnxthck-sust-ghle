import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ncsnxthck_sust_ghle/shared/utils.dart';
import 'package:gap/gap.dart';
import 'package:provider/provider.dart';
import 'package:flutter_ncsnxthck_sust_ghle/models/brew.dart';
import '../home/brew_tile.dart';

class OrderList extends StatefulWidget {
  const OrderList({super.key});

  @override
  State<OrderList> createState() => _OrderListState();
}

class _OrderListState extends State<OrderList> {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(top: 8.0),
        child: ListView(
          children: [
            Container(
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.black87),
                  color: Colors.white60),
              padding: EdgeInsets.symmetric(
                  horizontal: AppLayout.getHeight(15),
                  vertical: AppLayout.getHeight(20)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 20,
                    backgroundImage: AssetImage("images/facesilhouette.jpg"),
                    child: Padding(
                      padding: EdgeInsets.all(5),
                    ),
                  ),
                  Gap(AppLayout.getHeight(12)),
                  Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Container(
                                padding: EdgeInsets.all(3),
                                decoration:
                                    const BoxDecoration(shape: BoxShape.circle),
                                child: Icon(
                                  FluentSystemIcons.ic_fluent_shield_filled,
                                  color: Color(0xFFEC6545),
                                  size: 15,
                                )),
                            Text("[Premium] 904 points",
                                style: TextStyle(
                                    color: Colors.black54,
                                    fontWeight: FontWeight.w600)),
                          ],
                        ),
                        Gap(AppLayout.getHeight(5)),
                        Text("Hello, Eugene",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black54,
                            )),
                        Text("eugene@hotmail.com",
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              color: Colors.black54,
                            )),
                      ])
                ],
              ),
            ),
            Card(
              margin: EdgeInsets.fromLTRB(20.0, 6.0, 20.0, 0.0),
              child: ListTile(
                leading: CircleAvatar(
                  radius: 20,
                  backgroundImage: AssetImage("images/driedpeaches.jpg"),
                  child: Padding(
                    padding: EdgeInsets.all(5),
                  ),
                ),
                title: Text('Dried Sliced Peaches'),
                subtitle: Padding(
                  padding: EdgeInsets.only(top: 10),
                  child: Container(
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              "Invoice Date: 6/10/2022, 10:06",
                            ),
                            SizedBox(width: 10),
                            Text("Source of Purchase: Healthy Eating Co."),
                            SizedBox(width: 10),
                            Text("Ref ID: #IIIJJJKKKLLL0123456789"),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                visualDensity: VisualDensity.compact,
                dense: true,
                trailing: Text("\$7.70",
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.black54,
                        fontWeight: FontWeight.bold)),
              ),
            ),
            Card(
              margin: EdgeInsets.fromLTRB(20.0, 6.0, 20.0, 0.0),
              child: ListTile(
                leading: CircleAvatar(
                  radius: 20,
                  backgroundImage: AssetImage("images/pappadam.jpg"),
                  child: Padding(
                    padding: EdgeInsets.all(5),
                  ),
                ),
                title: Text('Pappadams'),
                subtitle: Padding(
                  padding: EdgeInsets.only(top: 10),
                  child: Container(
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              "Invoice Date: 3/10/2022, 11:11",
                            ),
                            SizedBox(width: 10),
                            Text("Source of Purchase: Awesome Confectionary"),
                            SizedBox(width: 10),
                            Text("Ref ID: #EEEFFFGGGHHH0123456789"),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                visualDensity: VisualDensity.compact,
                dense: true,
                trailing: Text("\$8.40",
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.black54,
                        fontWeight: FontWeight.bold)),
              ),
            ),
            Card(
              margin: EdgeInsets.fromLTRB(20.0, 6.0, 20.0, 0.0),
              child: ListTile(
                leading: CircleAvatar(
                  radius: 20,
                  backgroundImage: AssetImage("images/kuehlapis.jpg"),
                  child: Padding(
                    padding: EdgeInsets.all(5),
                  ),
                ),
                title: Text('Kueh Lapis'),
                subtitle: Padding(
                  padding: EdgeInsets.only(top: 10),
                  child: Container(
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              "Invoice Date: 1/10/2022, 15:05",
                            ),
                            SizedBox(width: 10),
                            Text("Source of Purchase: Friendly Cake Shop"),
                            SizedBox(width: 10),
                            Text("Ref ID: #AAABBBCCCDDD0123456789"),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                visualDensity: VisualDensity.compact,
                dense: true,
                trailing: Text("\$5.60",
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.black54,
                        fontWeight: FontWeight.bold)),
              ),
            ),
            Card(
              margin: EdgeInsets.fromLTRB(20.0, 6.0, 20.0, 0.0),
              color: Colors.white,
              child: ListTile(
                leading: Text("Grand Total to date:",
                    style: TextStyle(
                        fontSize: 21,
                        color: Colors.black87,
                        fontWeight: FontWeight.bold)),
                visualDensity: VisualDensity.compact,
                dense: true,
                trailing: Text("\$21.70",
                    style: TextStyle(
                        fontSize: 21,
                        color: Colors.black87,
                        fontWeight: FontWeight.bold)),
              ),
            ),
          ],
        ));
  }
}
