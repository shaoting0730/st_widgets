import 'package:flutter/material.dart';
import 'package:st_widgets/st_widgets.dart';

class JellyButtonPage extends StatefulWidget {
  const JellyButtonPage({Key? key}) : super(key: key);

  @override
  State<JellyButtonPage> createState() => _JellyButtonPageState();
}

class _JellyButtonPageState extends State<JellyButtonPage> {
  int _currenIndex = 0;

  final List<Widget> _list = [
    Scaffold(
      appBar: AppBar(
        title: const Text('首页'),
      ),
      body: ListView(
        children: [
          JellyButton(
            onTap: () {},
            size: const Size(44, 44),
            unCheckedImgAsset: 'assets/good.png',
            checkedImgAsset: 'assets/good.png',
          ),
        ],
      ),
    ),
    Scaffold(
      appBar: AppBar(
        title: const Text('我的'),
      ),
      body: ListView(
        children: [],
      ),
    ),
  ];

  itemOnclick(index) {
    setState(() {
      _currenIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _list[_currenIndex],
      bottomNavigationBar: PreferredSize(
        preferredSize: const Size.fromHeight(69),
        child: Container(
          decoration: const BoxDecoration(
            border: Border(
              top: BorderSide(width: 1, color: Color.fromRGBO(0, 0, 0, 0.1)),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // 首页
              Expanded(
                child: SizedBox(
                  height: 69,
                  child: Column(
                    children: [
                      JellyButton(
                        onTap: () {
                          setState(() {
                            _currenIndex = 0;
                          });
                        },
                        checked: _currenIndex == 0 ? true : false,
                        size: const Size(44, 44),
                        unCheckedImgAsset: 'assets/good.png',
                        checkedImgAsset: 'assets/good_red.png',
                      ),
                      Text(
                        '首页',
                        style: TextStyle(
                          color: _currenIndex == 0 ? Colors.red : Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              //  我的
              Expanded(
                child: SizedBox(
                  height: 69,
                  child: Column(
                    children: [
                      JellyButton(
                        onTap: () {
                          setState(() {
                            _currenIndex = 1;
                          });
                        },
                        checked: _currenIndex == 1 ? true : false,
                        size: const Size(44, 44),
                        unCheckedImgAsset: 'assets/good.png',
                        checkedImgAsset: 'assets/good_red.png',
                      ),
                      Text(
                        '我的',
                        style: TextStyle(
                          color: _currenIndex == 1 ? Colors.red : Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
