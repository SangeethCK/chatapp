import 'package:chatapp/theme.dart';
import 'package:flutter/material.dart';

import 'HomePages/drawer.dart';
import 'chatpages/chatpage.dart';




void main() {
  runApp(Home());
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      theme: lightThemeData(context),
      
      debugShowCheckedModeBanner: false, home: HomeScreen());
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

int _selectedindex = 1;

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      

    
      
      bottomNavigationBar:
  
       BottomNavigationBar(
      
          currentIndex: _selectedindex,
          onTap: (value) {
            _selectedindex = value;
          },
          items: const [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.person
              
              ),
              label: "Contacts",
            ),
            BottomNavigationBarItem(icon: Icon(Icons.call), label: "Call"),
            BottomNavigationBarItem(
                icon: Icon(Icons.chat), label: "Chats"),
            BottomNavigationBarItem(
                icon: Icon(Icons.change_history), label: "Channels"),
                 BottomNavigationBarItem(
                icon: Icon(Icons.settings), label: "Settings"),
          ],
          
          
          ),
          
        
      appBar: AppBar(
          elevation: 0,
          toolbarHeight: 75,
        
          title: Text(
            "Chats",
            style: TextStyle(color: Colors.black),
          ),
          actions: const [
            Icon(
              Icons.auto_fix_high_sharp,
            )
          ],
          leading: InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return Drawers();
                  },
                ));
              },
              child: Padding(
                padding: EdgeInsets.all(16.0),
                child: Center(
                    child: Text(
                  "Edit",
                  style: TextStyle(color: Colors.blue),
                )),
              ))),
      body: ListView.separated(
        itemBuilder: ((context, index) {
          return ChatPgae(chats: chatlist[index]);
        }),
        itemCount: chatlist.length,
        separatorBuilder: (BuildContext context, int index) {
          return Divider(
            indent: 19,
          );
        },
      ),
    );
  }
}
