import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MainScreens extends StatefulWidget {
  @override
  State<MainScreens> createState() => _MainScreensState();
}

// TODO - 매우 중요한 부분은 앞으로 TODO 주석으로 남길께!
// TODO - IndexedStack을 사용하게 되면, ConsumerWidget이 아닌, StatefulWidget을 사용해야한다.
// TODO - 아직 명확한 이유를 알지 못하지만, 일단은 사용해야한다는 개념만 확실히 잡아두자
// TODO - IndexedStack은 한 번에 하위 항목 하나만을 보여주는 스택
// TODO - index에 사용자가 클릭한 값이 들어가고 setState를 이용해서 그 값이 _selectedIndex값에 상태를 변경하고
// TODO - currentIndex로 현재 상태의 인덱스를 나타냄으로 현재 상태에 대한 값이 그대로 임을 알려준다.
class _MainScreensState extends State<MainScreens> {
  int _selectedIndex = 0; // 디폴트값이 0인걸 기억해!

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _selectedIndex,
        children: [
          Container(
            color: Colors.orange[100],
            child: Center(
              child: Text(
                "indexedStack 1",
                style: TextStyle(fontSize: 20, color: Colors.black),
              ),
            ),
          ),
          Container(
            color: Colors.redAccent[100],
            child: Center(
              child: Text(
                "IndexedStack 2",
                style: TextStyle(fontSize: 20, color: Colors.black),
              ),
            ),
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.home),
            label: "홈",
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.chat_bubble),
            label: "채팅",
          ),
        ],
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        currentIndex: _selectedIndex,
      ),
    );
  }
}
