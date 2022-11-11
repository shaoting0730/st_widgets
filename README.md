一些按钮集合 : https://pub.dev/packages/st_widgets

用法：
在`pubspec.yaml`中引入
  ```
   dependencies:
      st_widgets: ^0.0.1
  ```

1、果冻按钮使用

  ```
    import 'package:flutter/material.dart';
import 'package:st_btn/st_btn.dart';

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
         
  ```
![image](https://github.com/pheromone/st_widget/blob/main/jellyButton.gif) <br/>

2、验证码输入框 。
```
import 'package:flutter/material.dart';
import 'package:st_btn/st_btn.dart';

class CodeInputPage extends StatefulWidget {
  const CodeInputPage({Key? key}) : super(key: key);

  @override
  State<CodeInputPage> createState() => _CodeInputPageState();
}

class _CodeInputPageState extends State<CodeInputPage> {
  final TextEditingController _fieldOne = TextEditingController();
  final TextEditingController _fieldTwo = TextEditingController();
  final TextEditingController _fieldThree = TextEditingController();
  final TextEditingController _fieldFour = TextEditingController();

  final TextEditingController _field1 = TextEditingController();
  final TextEditingController _field2 = TextEditingController();
  final TextEditingController _field3 = TextEditingController();
  final TextEditingController _field4 = TextEditingController();
  final TextEditingController _field5 = TextEditingController();
  final TextEditingController _field6 = TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Code输入框'),
      ),
      body: Column(
        children: [
          Row(
            children: [
              CodeInput(controller: _fieldOne, autoFocus: true, allBorder: true),
              CodeInput(controller: _fieldTwo, autoFocus: true, allBorder: true),
              CodeInput(controller: _fieldThree, autoFocus: true, allBorder: true),
              CodeInput(controller: _fieldFour, autoFocus: true, allBorder: true),
            ],
          ),
          Row(
            children: [
              CodeInput(controller: _field1, autoFocus: true, allBorder: false),
              CodeInput(controller: _field2, autoFocus: true, allBorder: false),
              CodeInput(controller: _field3, autoFocus: true, allBorder: false),
              CodeInput(controller: _field4, autoFocus: true, allBorder: false),
              CodeInput(controller: _field5, autoFocus: true, allBorder: false),
              CodeInput(controller: _field6, autoFocus: true, allBorder: false),
            ],
          ),
        ],
      ),
    );
  }
}

```
![image](https://github.com/pheromone/st_widget/blob/main/codeInput.gif) <br/>

。。。。。。
