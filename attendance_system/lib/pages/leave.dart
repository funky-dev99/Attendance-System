
import 'package:flutter/material.dart';

import 'home_page.dart';


class ListItem {
  final String title;
  final String subTitle;
  final String description;

  ListItem({ this.title,  this.subTitle,  this.description});
}

class LeavePage extends StatelessWidget {
  final List<ListItem> items = [
    ListItem(
      title: 'Item 1',
      subTitle: 'Sub Title 1',
      description: 'Description 1',
    ),
    ListItem(
      title: 'Item 2',
      subTitle: 'Sub Title 2',
      description: 'Description 2',
    ),
    ListItem(
      title: 'Item 3',
      subTitle: 'Sub Title 3',
      description: 'Description 3',
    ),
    ListItem(
      title: 'Item 4',
      subTitle: 'Sub Title 4',
      description: 'Description 4',
    ),
    ListItem(
      title: 'Item 5',
      subTitle: 'Sub Title 5',
      description: 'Description 5',
    ),
    ListItem(
      title: 'Item 6',
      subTitle: 'Sub Title 6',
      description: 'Description 6',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: const Text(
          "Leave Approval",
          style: TextStyle(color: Colors.black, fontSize: 22),
        ),
        leading: IconButton(
          icon: Image.asset("images/back.png"),
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => HomePage()));
          },
        ),

      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: Icon(Icons.person),
            title: Text(items[index].title),
            subtitle: Text(items[index].subTitle),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                ElevatedButton(
                  onPressed: () {
                    // Perform approve action
                    print('Approve button pressed');
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(Colors.black),
                  ),
                  child: Text('Approve'),
                ),
                SizedBox(width: 8.0),
                ElevatedButton(
                  onPressed: () {
                    // Perform reject action
                    print('Reject button pressed');
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(Colors.red),
                  ),
                  child: Text('Reject'),
                ),

              ],
            ),
            onTap: () {
              // Handle item tap
              print('Item $index tapped');
            },
          );
        },
      ),
    );
  }
}

