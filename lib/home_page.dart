import 'package:flutter/material.dart';
import 'product_page.dart';
import 'contact_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  final List<Widget> _pages = <Widget>[
    const HomePage(),
    const Product(),
    const Contact(),
  ];

  void _onItemTapped(int index) {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => _pages[index]));
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
          length: 3,
          child: Scaffold(
            appBar: AppBar(
              bottom: const TabBar(
                indicatorColor: Colors.white,
                indicatorSize: TabBarIndicatorSize.tab,
                labelColor: Colors.white,
                unselectedLabelColor: Color.fromARGB(255, 219, 219, 219),
                tabs: [
                  Tab(
                    text: 'Home',
                  ),
                  Tab(
                    text: 'Product',
                  ),
                  Tab(
                    text: 'Contact',
                  ),
                ],
              ),
              title: const Text(
                'Assessment 2',
                style: TextStyle(color: Colors.white),
              ),
              backgroundColor: Colors.blue,
              iconTheme: const IconThemeData(color: Colors.white),
            ),
            drawer: Drawer(
              
              child: ListView(
                // Important: Remove any padding from the ListView.
                padding: EdgeInsets.zero,
                
                children: [
                  const DrawerHeader(
                    decoration: BoxDecoration(
                      color: Colors.blue,
                    ),
                    child: Text('Assessment 2'),
                  ),
                  ListTile(
                    title: const Text('Home'),
                    onTap: () {
                      // Update the state of the app.
                      // ...
                    },
                  ),
                  ListTile(
                    title: const Text('Product'),
                    onTap: () {
                      // Update the state of the app.
                      // ...
                    },
                  ),
                  ListTile(
                    title: const Text('Contact'),
                    onTap: () {
                      // Update the state of the app.
                      // ...
                    },
                  ),
                ],
              ),
            ),
            body: const TabBarView(children: [
              Center(
                child: Text('Home Pages'),
              ),
              Center(
                child: Text('Product Pages'),
              ),
              Center(
                child: Text('Contact Pages'),
              ),
            ]),
            bottomNavigationBar: BottomNavigationBar(
              items: const <BottomNavigationBarItem>[
                BottomNavigationBarItem(
                  icon: Icon(Icons.home),
                  label: 'Home',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.shopping_cart),
                  label: 'Product',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.phone),
                  label: 'Contact',
                ),
              ],
              currentIndex: _selectedIndex,
              selectedItemColor: Colors.blue,
              onTap: _onItemTapped,
            ),
          )),
    );
  }
}

// class Home extends StatelessWidget {
//   const Home({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: DefaultTabController(
//           length: 3,
//           child: Scaffold(
//             appBar: AppBar(
//               bottom: const TabBar(tabs: [
//                 Tab(icon: Icon(Icons.home)),
//                 Tab(icon: Icon(Icons.shopping_cart)),
//                 Tab(icon: Icon(Icons.phone)),
//               ]),
//               title: const Text('Assessment 2'),
//             ),
//             body: const TabBarView(children: [
//               Icon(Icons.home),
//               Icon(Icons.shopping_cart),
//               Icon(Icons.phone),
//             ]),
//           )),
//     );
//   }
// }