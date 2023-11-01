import 'package:flutter/material.dart';

class DrawerWidget extends StatefulWidget {
  const DrawerWidget({super.key});

  @override
  State<DrawerWidget> createState() => _DrawerWidgetState();
}

class _DrawerWidgetState extends State<DrawerWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Container(
          color: Colors.deepPurpleAccent,
          child: ListView(children: [
            DrawerHeader(
              padding: EdgeInsets.zero,
              child: Container(
                color: Colors.purpleAccent,
                padding: EdgeInsets.all(10),
                child: Row(children: [
                  CircleAvatar(
                    radius: 60,
                    backgroundImage: NetworkImage(
                        'https://imgv3.fotor.com/images/cover-photo-image/a-beautiful-girl-with-gray-hair-and-lucxy-neckless-generated-by-Fotor-AI.jpg'),
                  ),
                  SizedBox(width: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Ai alena',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                      Text('AI@gmail.com')
                    ],
                  )
                ]),
              ),
            ),
            ListTile(
              leading: Icon(Icons.folder),
              title: Text('My Files'),
            ),
            ListTile(
              leading: Icon(Icons.send_and_archive),
              title: Text('Share With Me'),
            ),
            ListTile(
              leading: Icon(Icons.star_border),
              title: Text('starred'),
            ),
            ListTile(
              leading: Icon(Icons.group_add),
              title: Text('trash'),
            ),
            ListTile(
              leading: Icon(Icons.add),
              title: Text('trash'),
            ),
            ListTile(
              leading: Icon(Icons.image),
              title: Text('image'),
            ),
            ListTile(
              leading: Icon(Icons.open_in_browser),
              title: Text('open'),
            ),
            ListTile(
              leading: Icon(Icons.pin_drop),
              title: Text('drop'),
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.share),
              title: Text('share'),
            ),
            ListTile(
              leading: Icon(Icons.logout),
              title: Text('log out'),
            ),
          ]),
        ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.deepPurpleAccent,
        title: Text("Drawer"),
      ),
      body: Container(
        child: Center(
          child: Text('Hey there'),
        ),
      ),
    );
  }
}
