import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

/// This is the main application widget.
class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  static const String _title = 'Lab 2 Kaplynskyi';

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: _title,
      home: MyStatefulWidget(),
    );
  }
}

/// This is the stateful widget that the main application instantiates.
class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key key}) : super(key: key);

  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

/// This is the private State class that goes with MyStatefulWidget.
class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final tabs = [
    // Chats page
    Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
      Container(
          height: 60,
          padding: EdgeInsets.all(10.0),
          child: TextField(
            autocorrect: true,
            decoration: InputDecoration(
              hintText: 'Search',
              contentPadding:
                  const EdgeInsets.only(left: 14.0, bottom: 18.0, top: 0.0),
              prefixIcon: Icon(Icons.search),
              hintStyle: TextStyle(color: Colors.grey[600]),
              filled: true,
              fillColor: Colors.grey[200],
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(60.0)),
                  borderSide: BorderSide.none),
            ),
          )),
      Container(
        margin: EdgeInsets.symmetric(horizontal: 10),
        height: 200.0,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(10.0),
              child: Column(
                children: [
                  Container(
                    child: Ink(
                      decoration: ShapeDecoration(
                        color: Colors.green,
                        shape: CircleBorder(),
                      ),
                      child: IconButton(
                        icon: Icon(Icons.person_rounded),
                        color: Colors.white,
                        onPressed: () => {},
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(10.0),
              child: Column(
                children: [
                  Container(
                    child: Ink(
                      decoration: ShapeDecoration(
                        color: Colors.blue,
                        shape: CircleBorder(),
                      ),
                      child: IconButton(
                        icon: Icon(Icons.person_rounded),
                        color: Colors.white,
                        onPressed: () => {},
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    child: Ink(
                      decoration: ShapeDecoration(
                        color: Colors.red,
                        shape: CircleBorder(),
                      ),
                      child: IconButton(
                        icon: Icon(Icons.person_rounded),
                        color: Colors.white,
                        onPressed: () => {},
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    ]),

    // People page
    Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              flex: 2,
              child: Container(
                height: 100,
              ),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.teal,
                onPrimary: Colors.white,
                onSurface: Colors.grey[300],
                padding: EdgeInsets.all(10.0),
              ),
              onPressed: () {},
              child: const Text(
                'Active',
                style: TextStyle(
                  shadows: [
                    Shadow(
                      blurRadius: 10.0,
                      color: Colors.black,
                      offset: Offset(5.0, 5.0),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                height: 100,
              ),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.teal,
                onPrimary: Colors.white,
                onSurface: Colors.grey[300],
              ),
              onPressed: () {},
              child: const Text(
                'Stories',
                style: TextStyle(
                  shadows: [
                    Shadow(
                      blurRadius: 10.0,
                      color: Colors.black,
                      offset: Offset(5.0, 5.0),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                height: 100,
              ),
            ),
          ],
        )
      ],
    ),
  ];

  final bars = [
    // Chats bar
    AppBar(
      elevation: 0.0,
      backgroundColor: Colors.white,
      title: Text(
        'Chats',
        style: TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
      ),
      leading: GestureDetector(
        onTap: () {},
        child: CircleAvatar(
          backgroundColor: Colors.grey[200],
          radius: 20,
          child: Icon(
            Icons.person_rounded,
            color: Colors.black,
          ),
        ),
      ),
      actions: <Widget>[
        Padding(
            padding: EdgeInsets.only(right: 20.0),
            child: GestureDetector(
              onTap: () {},
              child: CircleAvatar(
                backgroundColor: Colors.grey[200],
                radius: 20,
                child: Icon(
                  Icons.camera_alt_rounded,
                  color: Colors.black,
                ),
              ),
            )),
      ],
    ),

    // People bar
    AppBar(
      backgroundColor: Colors.white,
      elevation: 0.0,
      title: Text(
        'People',
        style: TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
      ),
      leading: GestureDetector(
        onTap: () {},
        child: CircleAvatar(
          backgroundColor: Colors.grey[200],
          radius: 10,
          child: Icon(
            Icons.person_rounded,
            color: Colors.black,
          ),
        ),
      ),
      actions: <Widget>[
        Padding(
            padding: EdgeInsets.only(right: 20.0),
            child: GestureDetector(
              onTap: () {},
              child: CircleAvatar(
                backgroundColor: Colors.grey[200],
                radius: 20,
                child: Icon(
                  Icons.contacts_rounded,
                  color: Colors.black,
                ),
              ),
            )),
        Padding(
            padding: EdgeInsets.only(right: 20.0),
            child: GestureDetector(
              onTap: () {},
              child: CircleAvatar(
                backgroundColor: Colors.grey[200],
                radius: 20,
                child: Icon(
                  Icons.person_add_rounded,
                  color: Colors.black,
                ),
              ),
            )),
      ],
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: bars[_selectedIndex],
      body: tabs[_selectedIndex],
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () => {},
            tooltip: 'Add new',
            child: Icon(Icons.create),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.chat),
            label: 'Chats',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.people),
            label: 'People',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }
}
