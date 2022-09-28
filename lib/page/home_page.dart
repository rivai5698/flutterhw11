import 'package:flutter/material.dart';
import 'package:flutterhw11/screen/func_screen.dart';
import 'package:flutterhw11/screen/result_screen.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Widget> screens = [];
  List<BottomNavigationBarItem> items = [];
  int currentIndex = 0;
  @override
  void initState() {
    // TODO: implement initState
    screens.addAll([
        const FuncScreen(),
        const ResultScreen(),
    ]);
    items.addAll([
      const BottomNavigationBarItem(
          icon: Icon(Icons.calculate,color: Colors.grey,),
          activeIcon: Icon(Icons.calculate,color: Colors.blue,),
          label: 'Func',
      ),
      const BottomNavigationBarItem(
        icon: Icon(Icons.circle,color: Colors.grey,),
        activeIcon: Icon(Icons.circle,color: Colors.blue,),
        label: 'Result',
      ),
    ]);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      body: IndexedStack(
        index: currentIndex,
        children: screens,
      ),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: currentIndex,
          items: items,
          onTap: (index){
            setState((){
              currentIndex = index;
            });
          },
        ),
    );
  }
}
