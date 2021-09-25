import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/material.dart';
import './Dash_Board.dart';

class home_page extends StatefulWidget {
  @override
  _home_pageState createState() => _home_pageState();
}

class _home_pageState extends State<home_page> {
  int current_Index = 0;
  List listOfcolors = [
    dashBoard(),
    Container(
      color: Colors.blue,
    ),
    Container(
      color: Colors.deepOrangeAccent,
    ),
    Container(
      color: Colors.redAccent,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: Text('Calculator App', style: TextStyle(color: Colors.white),),
            backgroundColor: Colors.blue[300],
            actions: [
              StreamBuilder<Object>(
                  stream: null,
                  builder: (context, snapshot) {
                    return IconButton(
                      icon: Icon(Icons.supervised_user_circle_sharp),
                      onPressed: null,
                      iconSize: 40,
                    );
                  }
              ),
            ],
            bottom: TabBar(
              indicatorColor: Colors.white,
              indicatorWeight: 3,
              tabs: [
                Tab(
                  icon: Icon(Icons.wallet_giftcard),
                  text: 'Quantity',
                ),
                Tab(
                  icon: Icon(Icons.fastfood_outlined),
                  text: 'Calories',
                ),
                Tab(
                  icon: Icon(Icons.attach_money),
                  text: 'Currency',
                ),
              ],
            ),
          ),
          drawer: Drawer(
            child: ListView(
              children: <Widget>[
                UserAccountsDrawerHeader(
                  accountName: Text('Saravanan Ganesan'),
                  accountEmail: Text('Saravanan.Ganesan@htcindia.com'),
                  currentAccountPicture: CircleAvatar(
                    backgroundImage: NetworkImage('https://scontent.fmaa6-1.fna.fbcdn.net/v/t1.0-9/104885767_2695268590793919_6304595648528700307_o.jpg?_nc_cat=106&ccb=1-3&_nc_sid=09cbfe&_nc_ohc=nXz910t8wJQAX8qeisQ&_nc_ht=scontent.fmaa6-1.fna&oh=c230cf592e1f1f5923ed912bd488a6c9&oe=60804848'),
                  ),
                ),
              ],
            ),
          ),
          body: listOfcolors[current_Index],
          bottomNavigationBar: BottomNavyBar(
            iconSize: 34,
            selectedIndex: current_Index,
            onItemSelected: (index) {
              setState(() {
                current_Index = index;
              },
              );
            },
            items: <BottomNavyBarItem>[
              BottomNavyBarItem(
                icon: Icon(Icons.calculate_outlined),
                title: Text('Calculator'),
                activeColor: Colors.deepPurple,
                inactiveColor: Colors.black54,
              ),
              BottomNavyBarItem(
                icon: Icon(Icons.search),
                title: Text('Search'),
                activeColor: Colors.blue,
                inactiveColor: Colors.black54,
              ),
              BottomNavyBarItem(
                icon: Icon(Icons.calendar_today_rounded),
                title: Text('Calendar'),
                activeColor: Colors.deepOrangeAccent,
                inactiveColor: Colors.black54,
              ),
              BottomNavyBarItem(
                icon: Icon(Icons.qr_code_scanner),
                title: Text('Scan'),
                activeColor: Colors.redAccent,
                inactiveColor: Colors.black54,
              ),
            ],
          ),
        ),
      ),
    );
  }
}