import 'package:flutter/material.dart';
import 'package:flutter_ncsnxthck_sust_ghle/screens/home/order_list.dart';
import 'package:flutter_ncsnxthck_sust_ghle/shared/utils.dart';

class OrderScreen extends StatelessWidget {
  const OrderScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Scaffold(backgroundColor: Colors.indigo[100], body: OrderList());
  }
}
