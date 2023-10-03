import 'package:flutter/material.dart';
import 'package:kurirkuapp/view/delivery.dart';

class DeliveryDetail extends StatefulWidget {
  const DeliveryDetail({super.key});

  @override
  State<DeliveryDetail> createState() => _DeliveryDetailState();
}

class _DeliveryDetailState extends State<DeliveryDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: const Icon(Icons.art_track),
          title: const Text('KurirKu'),
          backgroundColor: const Color.fromRGBO(33, 150, 243, 1)),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            SizedBox(
              child: Text('Current Stop Name'),
            ),
            SizedBox(
              child: Text('Address'),
            ),
            SizedBox(
              child: Text('Time Window'),
            ),
            Divider(
              color: Colors.black,
            ),
            SizedBox(
              child: Text('Next Stop'),
            ),
            SizedBox(
              child: Text('Address'),
            ),
            SizedBox(
              child: Text('Time Window'),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        height: 65,
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        decoration:
            const BoxDecoration(color: Color.fromARGB(255, 234, 231, 231)),
        child: Row(
          // Wrap the IconButton in a Row
          mainAxisAlignment:
              MainAxisAlignment.center, // Center the IconButton horizontally
          children: <Widget>[
            TextButton(
              onPressed: () {},
              child: const Text('Stop Current Stop'),
            ),
            TextButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Delivery()));
              },
              child: const Text('Reorder Stops'),
            ),
          ],
        ),
      ),
    );
  }
}
