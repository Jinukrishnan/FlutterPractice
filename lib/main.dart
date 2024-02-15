import 'package:flutter/material.dart';
import 'package:scafoldwidget/Asd.dart';

void main() {
  runApp(MaterialApp(
    home: SacfoldWidget(),
  ));
}

class SacfoldWidget extends StatelessWidget {
  const SacfoldWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Scafold',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        //add icons on left side
        // leading: IconButton(onPressed: () {}, icon: Icon(Icons.menu)),

        // add iocpons on right side
        // actions: [
        //   IconButton(
        //     onPressed: () {},
        //     icon: Icon(Icons.chat),
        //   ),
        //   IconButton(onPressed: () {}, icon: Icon(Icons.search)),
        // ],
        backgroundColor: Colors.blue,
      ),

      // body section
      body: ListView(
        children: [
          Asd(),
          Asd(),
          Asd(),
          Asd(),
          Asd(),
        ],
      ),

      backgroundColor: Colors.white,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
        shape: CircleBorder(),
        backgroundColor: Colors.yellow,
      ),

      // create a menu bar
      endDrawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              child: Text('Novavi'),
              decoration: BoxDecoration(color: Colors.lightBlueAccent),
            ),
            ListTile(
              title: Text('Favorites'),
              subtitle: Text('click her to goto favorite page'),
              onTap: () {
                print('goto favorates');
              },
              onLongPress: () {
                print('More');
              },
              leading: Icon(Icons.favorite),
              trailing: Icon(Icons.arrow_forward),
            ),
            ListTile(
              title: Text('Accounts'),
              subtitle: Text('click her to goto favorite page'),
              onTap: () {
                print('goto favorates');
              },
              onLongPress: () {
                print('More');
              },
              leading: Icon(Icons.account_box),
              trailing: Icon(Icons.arrow_forward),
            ),
            ListTile(
              title: Text('Settings'),
              subtitle: Text('click her to goto favorite page'),
              onTap: () {
                print('goto favorates');
              },
              onLongPress: () {
                print('More');
              },
              leading: Icon(Icons.settings),
              trailing: Icon(Icons.arrow_forward),
            ),
          ],
        ),
      ),
    );
  }
}
