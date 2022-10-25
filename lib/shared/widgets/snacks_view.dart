import 'package:flutter/material.dart';
import 'package:flutter_ncsnxthck_sust_ghle/shared/utils.dart';
import 'package:gap/gap.dart';

class SnackView extends StatelessWidget {
  final Map<String, dynamic> snack;
  const SnackView({Key? key, required this.snack}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);

    final ButtonStyle buyNowStyle = ElevatedButton.styleFrom(
        textStyle: const TextStyle(fontSize: 10, color: Colors.white),
        backgroundColor: Colors.blueGrey);

    final ButtonStyle moreInformationStyle = ElevatedButton.styleFrom(
        textStyle: const TextStyle(fontSize: 10, color: Colors.white),
        backgroundColor: Colors.blueGrey);

    return Container(
        width: size.width * 0.90,
        height: AppLayout.getWidth(350),
        decoration: BoxDecoration(
          color: Color(0xFFEC6545),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // image
              Container(
                  height: AppLayout.getWidth(100),
                  width: AppLayout.getWidth(100),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: Colors.indigo[100],
                      image: DecorationImage(
                          fit: BoxFit.fill,
                          image: AssetImage("assets/images/${snack['image']}")))),
              Gap(AppLayout.getHeight(5)),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "${snack['product']}",
                    style: TextStyle(color: Colors.black87, fontSize: 15),
                  ),
                  Text("${snack['supplier']}",
                      style: TextStyle(color: Colors.black87, fontSize: 15)),
                  Text("\$${snack['price']}",
                      style: TextStyle(color: Colors.black87, fontSize: 15)),
                ],
              ),
              ElevatedButton(
                  style: moreInformationStyle,
                  child: Text('More information',
                      style: TextStyle(
                        color: Colors.white,
                      )),
                  onPressed: () async {}),
              ElevatedButton(
                  style: buyNowStyle,
                  child: Text('Buy now',
                      style: TextStyle(
                        color: Colors.white,
                      )),
                  onPressed: () async {}),
              snack['discounted'] == true
                  ? Text("You have a discount code!",
                  style: TextStyle(color: Colors.white70, fontSize: 15))
                  : Text(""),
            ],
          ),

        ]));
  }
}
