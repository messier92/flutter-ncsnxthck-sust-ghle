import 'package:flutter/material.dart';
import 'package:flutter_ncsnxthck_sust_ghle/shared/app_info_list.dart';
import 'package:flutter_ncsnxthck_sust_ghle/shared/utils.dart';
import 'package:flutter_ncsnxthck_sust_ghle/shared/widgets/example_polls.dart';
import 'package:flutter_ncsnxthck_sust_ghle/shared/widgets/snacks_view.dart';
import 'package:gap/gap.dart';
import 'package:flutter_ncsnxthck_sust_ghle/shared/constants.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);

    return Scaffold(
        backgroundColor: Colors.indigo[100],
        body: ListView(
          padding: EdgeInsets.symmetric(
              horizontal: AppLayout.getWidth(10),
              vertical: AppLayout.getHeight(10)),
          children: [
            Gap(AppLayout.getHeight(10)),
            Text("What are you craving for?", style: TextStyle(fontSize: 35)),
            Gap(AppLayout.getHeight(10)),
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
                    decoration: BoxDecoration(
                      borderRadius:
                          BorderRadius.circular(AppLayout.getWidth(10)),
                    ),
                    child: ElevatedButton(
                        style: takeSurveyStyle,
                        child: Text('Find',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 13,
                            )),
                        onPressed: () async {})),
                SizedBox(width: 50),
                Container(
                    height: 45,
                    width: 120,
                    decoration: BoxDecoration(
                      borderRadius:
                          BorderRadius.circular(AppLayout.getWidth(10)),
                    ),
                    child: ElevatedButton(
                        style: takeSurveyStyle,
                        child: Text('Recommend',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 13,
                            )),
                        onPressed: () async {})),
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

            Column(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              Container(
                  height: AppLayout.getHeight(370),
                  width: size.width * 0.95,
                  padding: EdgeInsets.symmetric(
                      horizontal: AppLayout.getHeight(15),
                      vertical: AppLayout.getWidth(15)),
                  decoration: BoxDecoration(
                      borderRadius:
                          BorderRadius.circular(AppLayout.getHeight(12)),
                      color: Color(0xFFEC6545),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.shade200,
                          blurRadius: 1,
                          spreadRadius: 1,
                        )
                      ]),
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
                    ])),
                    Expanded(child: ExamplePolls()),
                    Gap(5),
                    Row(
                      children: [
                        Text(
                          "Take a survey, get a discount",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.white),
                        ),
                        Spacer(),
                        ElevatedButton(
                            style: takeSurveyStyle,
                            child: Text('Take survey now',
                                style: TextStyle(
                                  color: Colors.white,
                                )),
                            onPressed: () async {}),
                      ],
                    )
                  ])),
              Column(
                children: [
                  Container(
                      height: AppLayout.getHeight(370),
                      width: size.width * 0.95,
                      padding: EdgeInsets.symmetric(
                          horizontal: AppLayout.getHeight(15),
                          vertical: AppLayout.getWidth(15)),
                      decoration: BoxDecoration(
                          borderRadius:
                              BorderRadius.circular(AppLayout.getHeight(12)),
                          color: Color(0xFFEC6545),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.shade200,
                              blurRadius: 1,
                              spreadRadius: 1,
                            )
                          ]),
                      child: Column(children: [
                        Text(
                          "Trending snacks this month",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        Gap(AppLayout.getHeight(5)),
                        Expanded(
                          child: SingleChildScrollView(
                              scrollDirection: Axis.vertical,
                              child: Column(
                                  children: snackList
                                      .map((singleSnack) =>
                                          SnackView(snack: singleSnack))
                                      .toList())),
                        ),
                      ])),
                ],
              ),
            ])
          ],
        ));
  }
}
