import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:flutter_ncsnxthck_sust_ghle/shared/utils.dart';
import 'package:flutter_ncsnxthck_sust_ghle/shared/widgets/example_polls.dart';
import 'package:gap/gap.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Scaffold(
        backgroundColor: Colors.indigo[100],
        body: ListView(
          padding: EdgeInsets.symmetric(
              horizontal: AppLayout.getWidth(20),
              vertical: AppLayout.getHeight(20)),
          children: [
            Gap(AppLayout.getHeight(40)),
            Text("What are you craving for?", style: TextStyle(fontSize: 35)),
            Gap(AppLayout.getHeight(20)),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: const Color(0xFFF4F6FD)),
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
              child: Row(
                children: [
                  const Icon(Icons.search, color: Color(0xFFBFC205)),
                  Text("Search")
                ],
              ),
            ),
            //const AppIconText(
            //    icon: Icons.flight_takeoff_rounded, text: "Departure"),
            //Gap(AppLayout.getHeight(20)),
            //const AppIconText(icon: Icons.flight_land_rounded, text: "Arrival"),
            Gap(AppLayout.getHeight(25)),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                    height: 45,
                    width: 120,
                    padding: EdgeInsets.symmetric(
                        vertical: AppLayout.getWidth(15),
                        horizontal: AppLayout.getWidth(15)),
                    decoration: BoxDecoration(
                      color: Color(0xD91130CE),
                      borderRadius:
                          BorderRadius.circular(AppLayout.getWidth(10)),
                    ),
                    child: Center(
                        child: Text(
                      "Find",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ))),
                SizedBox(width: 50),
                Container(
                    height: 45,
                    width: 120,
                    padding: EdgeInsets.symmetric(
                        vertical: AppLayout.getWidth(15),
                        horizontal: AppLayout.getWidth(15)),
                    decoration: BoxDecoration(
                      color: Color(0xD91130CE),
                      borderRadius:
                          BorderRadius.circular(AppLayout.getWidth(10)),
                    ),
                    child: Center(
                        child: Text(
                      "Recommend",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ))),
              ],
            ),
            Gap(AppLayout.getHeight(40)),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              Container(
                child: Text(
                  'Deals',
                  style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
                ),
              )
            ]),
            Gap(AppLayout.getHeight(15)),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              Container(
                  height: AppLayout.getHeight(370),
                  width: size.width * 0.5,
                  padding: EdgeInsets.symmetric(
                      horizontal: AppLayout.getHeight(15),
                      vertical: AppLayout.getWidth(15)),
                  decoration: BoxDecoration(
                      borderRadius:
                          BorderRadius.circular(AppLayout.getHeight(20)),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.shade200,
                          blurRadius: 1,
                          spreadRadius: 1,
                        )
                      ]),
                  child: Column(children: [
                    Container(
                      height: AppLayout.getHeight(160),
                      decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.circular(AppLayout.getHeight(12)),
                      ),
                    ),
                    Gap(AppLayout.getHeight(12)),
                    Text(
                      "20% discount off monthly subscription for ABC's potato chips. Subscribe now!",
                    )
                  ])),
              Column(
                children: [
                  Stack(
                    children: [
                      Container(
                        width: size.width * 0.32,
                        height: AppLayout.getHeight(200),
                        decoration: BoxDecoration(
                            color: Color(0xFF3AB8B8),
                            borderRadius:
                                BorderRadius.circular(AppLayout.getHeight(15))),
                        padding: EdgeInsets.symmetric(
                            vertical: AppLayout.getHeight(12),
                            horizontal: AppLayout.getWidth(12)),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Discount for survey",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                            Gap(AppLayout.getHeight(10)),
                            Text(
                              "Take the survey now",
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white,
                                  fontSize: 19),
                            )
                          ],
                        ),
                      ),
                      Positioned(
                        right: -45,
                        top: -40,
                        child: Container(
                            padding: EdgeInsets.all(AppLayout.getHeight(28)),
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(
                                    width: 8, color: Color(0xFF189999)),
                                color: Colors.transparent)),
                      ),
                    ],
                  ),
                  Gap(AppLayout.getHeight(5)),
                  Container(
                      width: size.width * 0.33,
                      height: AppLayout.getHeight(165),
                      padding: EdgeInsets.symmetric(
                          vertical: AppLayout.getHeight(12),
                          horizontal: AppLayout.getWidth(12)),
                      decoration: BoxDecoration(
                          borderRadius:
                              BorderRadius.circular(AppLayout.getHeight(12)),
                          color: const Color(0xFFEC6545)),
                      child: Column(children: [
                        Text(
                          "Vote for your favourite snacks!",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        Gap(AppLayout.getHeight(5)),
                        RichText(
                            text: const TextSpan(children: [
                          TextSpan(
                            text: '😋',
                            style: TextStyle(fontSize: 20),
                          ),
                          TextSpan(
                            text: '😝',
                            style: TextStyle(fontSize: 25),
                          ),
                          TextSpan(
                            text: '😆',
                            style: TextStyle(fontSize: 20),
                          )
                        ]))
                      ])),
                ],
              ),
            ])
          ],
        ));
  }
}
