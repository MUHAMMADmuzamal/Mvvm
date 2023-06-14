import 'package:flutter/material.dart';

class Layout extends StatelessWidget {
  final child;
  final title;
  Layout({Key? key, this.title, @required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          iconTheme: const IconThemeData(color: Colors.blue),
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: Text(title ?? "Rooheman"),
          // leading: IconButton(
          //   icon: Icon(
          //     Icons.menu,
          //     color: Colors.blue,
          //   ),
          //   onPressed: () {},
          // ),
          actions: [
            IconButton(
              icon: const Icon(
                Icons.dark_mode_outlined,
                color: Colors.blue,
              ),
              onPressed: () {},
            )
          ],
        ),
        body: child,
        backgroundColor: Colors.brown,
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: Padding(
          padding: const EdgeInsets.only(bottom: 30),
          child: Container(
            width: 250,
            height: 40,
            decoration: const BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.all(Radius.circular(20))),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  Icon(Icons.menu),
                  Icon(Icons.home),
                  Icon(Icons.search),
                  Icon(Icons.add),
                ],
              ),
            ),
          ),
        ));
  }
}
