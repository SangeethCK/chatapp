import 'package:chatapp/HomePages/color/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';



class Drawers extends StatelessWidget {
  const Drawers({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ListView(
          children: [
            const UserAccountsDrawerHeader(
                decoration: BoxDecoration(
                  color:kPrimaryColor
                ),
                accountName: Text("Sangeeth"),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://static.toiimg.com/thumb/resizemode-4,msid-76729750,imgsize-249247,width-720/76729750.jpg"),
                ),
                accountEmail: Text("Flutter Developer")),
            ListTile(
              onTap: () {
                Navigator.pop(context);
              },
              leading: const Icon(Icons.markunread_mailbox),
              title: const Text("Mailinbox"),
              trailing: TextButton(
                child: const Text("5"),
                onPressed: () {},
              ),
            ),
            ListTile(
              leading: const Icon(Icons.face),
              title: const Text("Friends"),
              trailing: TextButton(
                child: const Text("6"),
                onPressed: () {},
              ),
            ),
            ListTile(
              leading: const Icon(Icons.inventory),
              title: const Text("Invites"),
              trailing: TextButton(
                child: const Text("1"),
                onPressed: () {},
              ),
            ),
            const ListTile(
              leading: Icon(Icons.bookmarks),
              title: Text("Booksmark"),
            ),
            const ListTile(
              leading: Icon(Icons.settings),
              title: Text("Accounts Settings"),
            ),
            const ListTile(
              title: Icon(
                Icons.assignment_turned_in,
                size: 40,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class DrawerList extends StatelessWidget {
  DrawerList(
      {Key? key,
      this.iconData,
      required this.onTilepressed,
      required this.title})
      : super(key: key);

  final iconData;
  String title;
  final VoidCallback onTilepressed;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTilepressed,
      dense: true,
      leading: Icon(iconData),
      title: Text(title),
    );
  }
}
