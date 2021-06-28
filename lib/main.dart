import 'package:flutter/material.dart';

import 'home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyBottomNavigationBar(),
    );
  }
}

class MyBottomNavigationBar extends StatefulWidget {
  const MyBottomNavigationBar({Key key}) : super(key: key);

  @override
  _MyBottomNavigationBarState createState() => _MyBottomNavigationBarState();
}

class _MyBottomNavigationBarState extends State<MyBottomNavigationBar> {
  int currentIndex = 0;
  Widget screen = Home();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screen,
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.search),
        backgroundColor: Colors.purple,
        onPressed: () {},
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        color: Colors.white,
        child: Container(
          height: 50,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              MaterialButton(
                  minWidth: 50,
                  onPressed: () {
                    setState(() {
                      screen = Home();
                      currentIndex = 0;
                    });
                  },
                  child: Icon(
                    Icons.home,
                    size: 30,
                    color: currentIndex == 0 ? Colors.purple : Colors.black12,
                  )),
              MaterialButton(
                  minWidth: 50,
                  onPressed: () {
                    setState(() {
                      screen = Home();
                      currentIndex = 1;
                    });
                  },
                  child: Icon(
                    Icons.favorite,
                    size: 30,
                    color: currentIndex == 1 ? Colors.purple : Colors.black12,
                  )),
              MaterialButton(
                  minWidth: 50,
                  onPressed: () {
                    setState(() {
                      screen = Home();
                      currentIndex = 2;
                    });
                  },
                  child: Icon(
                    Icons.shopping_basket,
                    size: 30,
                    color: currentIndex == 2 ? Colors.purple : Colors.black12,
                  )),
              MaterialButton(
                  minWidth: 50,
                  onPressed: () {
                    setState(() {
                      screen = Home();
                      currentIndex = 3;
                    });
                  },
                  child: Icon(
                    Icons.person,
                    size: 30,
                    color: currentIndex == 3 ? Colors.purple : Colors.black12,
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
