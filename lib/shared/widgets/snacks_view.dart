import 'package:flutter/material.dart';
import 'package:flutter_ncsnxthck_sust_ghle/shared/utils.dart';
import 'package:gap/gap.dart';

class SnackView extends StatelessWidget {
  final Map<String, dynamic> snack;
  const SnackView({Key? key, required this.snack}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);

    return Container(
        width: AppLayout.getWidth(475),
        height: AppLayout.getHeight(125),
        padding: const EdgeInsets.symmetric(horizontal: 7, vertical: 2),
        margin: const EdgeInsets.only(right: 7),
        decoration: BoxDecoration(
          color: Color(0xFFEC6545),
          borderRadius: BorderRadius.circular(4),
        ),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Container(
              height: 85,
              width: 250,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6),
                  color: Color(0xFFEC6545),
                  image: DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage("images/${snack['image']}")))),
          const Gap(1),
          Text("${snack['product']}",
              style: TextStyle(color: Colors.black54, fontSize: 10)),
          const Gap(1),
          Text("${snack['supplier']}",
              style: TextStyle(color: Colors.black54, fontSize: 10)),
          const Gap(1),
          Text("\$${snack['price']}",
              style: TextStyle(color: Colors.black54, fontSize: 10)),
        ]));
  }
}
