import 'package:flutter/material.dart';
import 'package:kurirkuapp/view/delivery.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    final ButtonStyle style =
        ElevatedButton.styleFrom(textStyle: const TextStyle(fontSize: 20));

    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.art_track),
        title: Text('KurirKu'),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        // Center widget added here
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Container(
                  padding: const EdgeInsets.all(8),
                  child: TextField(),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                    style: style,
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Delivery()));
                    },
                    child: const Text('Track your mail'),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
