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
        backgroundColor: Color(0xFFEC6545));

    final ButtonStyle moreInformationStyle = ElevatedButton.styleFrom(
        textStyle: const TextStyle(fontSize: 10, color: Colors.white),
        backgroundColor: Color(0xFFEC6545));

    return Container(
        width: size.width * 0.40,
        height: AppLayout.getWidth(350),
        decoration: BoxDecoration(
          color: Colors.indigo[100],
          borderRadius: BorderRadius.circular(8),
        ),
        child: Row(children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                  height: AppLayout.getWidth(250),
                  width: AppLayout.getWidth(250),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: Colors.indigo[100],
                      image: DecorationImage(
                          fit: BoxFit.fill,
                          image: AssetImage("images/${snack['image']}")))),
              Gap(AppLayout.getHeight(5)),
              ElevatedButton(
                  style: moreInformationStyle,
                  child: Text('More information',
                      style: TextStyle(
                        color: Colors.white,
                      )),
                  onPressed: () async {}),
            ],
          ),
          Gap(AppLayout.getWidth(90)),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                children: [
                  Text("Product: ",
                      style: TextStyle(color: Colors.black87, fontSize: 15)),
                  Text(
                    "${snack['product']}",
                    style: TextStyle(color: Colors.black87, fontSize: 15),
                  ),
                ],
              ),
              const Gap(1),
              Row(
                children: [
                  Text("Supplier: ",
                      style: TextStyle(color: Colors.black87, fontSize: 15)),
                  Text("${snack['supplier']}",
                      style: TextStyle(color: Colors.black87, fontSize: 15)),
                ],
              ),
              const Gap(1),
              Row(
                children: [
                  Text("Price: ",
                      style: TextStyle(color: Colors.black87, fontSize: 15)),
                  Text("\$${snack['price']}",
                      style: TextStyle(color: Colors.black87, fontSize: 15)),
                ],
              ),
              const Gap(1),
              ElevatedButton(
                  style: buyNowStyle,
                  child: Text('Buy now',
                      style: TextStyle(
                        color: Colors.white,
                      )),
                  onPressed: () async {}),
              // display the text if discounted = true, else display nothing
              snack['discounted'] == true
                  ? Text("You have a discount code!",
                      style: TextStyle(color: Colors.red[700], fontSize: 15))
                  : Text(""),
            ],
          ),
        ]));
  }
}
