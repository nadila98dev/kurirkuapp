import 'package:flutter/material.dart';

class ItemList extends StatelessWidget {
  const ItemList({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 24, left: 16, right: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          InkWell(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                const CircleAvatar(
                  radius: 10,
                  backgroundColor: Colors.blueGrey,
                ),
                Expanded(
                  child: Container(
                    margin: const EdgeInsets.only(left: 12),
                    child: const Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Row(
                          children: [
                            Text(
                              'Shop Name',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            SizedBox(width: 8),
                            Flexible(
                              // Use Flexible to allow "Window Time" to wrap
                              child: Text(
                                'Window Time',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Text(
                          'Address',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 12),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      SizedBox.fromSize(
                        size: const Size(56, 56),
                        child: ClipOval(
                          child: Material(
                            color: Colors.amberAccent,
                            child: InkWell(
                              splashColor: Colors.green,
                              onTap: () {},
                              child: const Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Icon(Icons
                                      .arrow_downward_outlined), // <-- Icon<-- Text
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox.fromSize(
                        size: const Size(56, 56),
                        child: ClipOval(
                          child: Material(
                            color: Colors.amberAccent,
                            child: InkWell(
                              splashColor: Colors.green,
                              onTap: () {},
                              child: const Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Icon(Icons
                                      .arrow_upward_outlined), // <-- Icon<-- Text
                                ],
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
