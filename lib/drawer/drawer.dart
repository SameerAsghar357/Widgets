import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:widgets/drawer/homescreen.dart';
import 'package:widgets/drawer/profilescreen.dart';
import 'package:widgets/drawer/settingscreen.dart';
import 'package:widgets/drawer/themescreen.dart';

class myDrawer extends StatefulWidget {
  const myDrawer({super.key});

  @override
  State<myDrawer> createState() => _myDrawerState();
}

class _myDrawerState extends State<myDrawer> {
  GlobalKey<ScaffoldState> globalKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: globalKey,
      appBar: AppBar(
        /// if i want to manage drawer by myself then i have to make a globalkey with 
        /// scaffold state & give it to scaffold as key then use below code to access it
        leading: IconButton(
          onPressed: () {
            globalKey.currentState?.openDrawer();
          },
          icon: Icon(Icons.menu),
        ),
        title: Text('Drawer'),
        centerTitle: true,
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: Colors.transparent,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
      ),
      drawer: Drawer(
        child: Column(
          children: [
            UserAccountsDrawerHeader(
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage('assets/images/boy_logo.jpeg'),
              ),
              accountName: Text(
                'Mirza Sameer Asghar',
                // style: TextStyle(color: Colors.black),
              ),
              accountEmail: Text(
                'sameerasghar018@gmail.com',
                // style: TextStyle(color: Colors.black),
              ),
              decoration: BoxDecoration(
                /// way to add background image
                // image: DecorationImage(
                // image: AssetImage('assets/images/flutter_icon_jpg.jpeg'),
                // fit: BoxFit.cover,
                // ),
                gradient: LinearGradient(
                  colors: [
                    Colors.blue.shade700,
                    Colors.blue.shade500,
                    Colors.blue.shade200,
                  ],
                ),
              ),
            ),
            ListTile(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HomeScreen()),
                );
              },
              leading: Icon(Icons.home),
              title: Text('Home'),
            ),
            ListTile(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ProfileScreen()),
                );
              },
              leading: Icon(Icons.person),
              title: Text('Profile'),
            ),
            ListTile(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ThemeScreen()),
                );
              },
              leading: Icon(Icons.light_mode),
              title: Text('Themes'),
            ),
            ListTile(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SettingScreen()),
                );
              },
              leading: Icon(Icons.settings),
              title: Text('Settings'),
            ),
          ],
        ),
      ),
      body: Center(child: Text('Drawer Widget')),
    );
  }
}
