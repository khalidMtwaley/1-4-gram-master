import 'package:flutter/material.dart';
import 'package:gram/presentation/main_veiw/chatbot/chatBot0.dart';
import 'package:gram/presentation/main_veiw/home/Home.dart';
import 'package:gram/presentation/main_veiw/profile/profile.dart';

class MainVeiw extends StatefulWidget {
  const MainVeiw({Key? key}) : super(key: key);

  @override
  State<MainVeiw> createState() => _MainVeiwState();
}

class _MainVeiwState extends State<MainVeiw> {

  List<Widget> pages = [
    Home(),
    Profile(),
    ChatBot0(),
  ];
  var _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages.elementAt(_currentIndex),
      bottomNavigationBar: BottomNavigationBar(
          unselectedItemColor:Colors.grey,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          backgroundColor: Colors.white,
          currentIndex: _currentIndex,
          items:[
            BottomNavigationBarItem(icon:Icon(Icons.home_outlined),label: "home"),
            BottomNavigationBarItem(icon:Icon(Icons.person),label: "account"),
            BottomNavigationBarItem(icon:Icon(Icons.chat),label: "chat"),
          ],
        onTap: (index){
            setState(() {
              _currentIndex= index;
            });
        },
        ),
    );
  }
}
