import 'package:flutter/material.dart';
import 'package:kurirkuapp/model/item_list.dart';
import 'package:kurirkuapp/view/deliverydetail.dart';

class Delivery extends StatefulWidget {
  const Delivery({super.key});

  @override
  State<Delivery> createState() => _DeliveryState();
}

class _DeliveryState extends State<Delivery> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: const Icon(Icons.art_track),
          title: const Text('KurirKu'),
          backgroundColor: Colors.blue),
      body: const ItemList(),
      bottomNavigationBar: Container(
        height: 65,
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        decoration:
            const BoxDecoration(color: Color.fromARGB(255, 234, 231, 231)),
        child: ElevatedButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const DeliveryDetail()));
            },
            child: const Text("Start Delivery / Submit Stop Delivery")),
      ),
    );
  }
}
