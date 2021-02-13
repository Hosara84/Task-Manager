import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:task_manager/components/MainTheme.dart';

class Menu{
  String name;
  IconData icon;
  String page;

  Menu(this.name, this.icon, this.page);
}

class MainLayout extends StatefulWidget {
  final String title;
  final String page;
  final List<Widget> content;
  final FloatingActionButton fab;
  MainLayout(this.title, this.page, this.content, this.fab);

  @override
  _MainLayoutState createState() => _MainLayoutState();
}

class _MainLayoutState extends State<MainLayout> {
  MainTheme mainTheme = new MainTheme();
  List<Menu> menu = [
    Menu("Homepage", Icons.home_outlined, "home"),
    Menu("About", Icons.info_outline, "about")
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mainTheme.backgroundColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          widget.title,
          style: TextStyle(
              fontFamily: mainTheme.headerFontFace,
              fontSize: 23
          ),
        ),
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: Icon(
                  mainTheme.iconDrawer
              ),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              splashColor: Colors.transparent,
              hoverColor: Colors.transparent,
              highlightColor: Colors.transparent,
            );
          },
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: widget.content,
        ),
      ),
      floatingActionButton: widget.fab,
      drawer: SafeArea(
        child: Drawer(
          child: Container(
            color: mainTheme.backgroundColor,
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: ListView(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: mainTheme.secondColor,
                      borderRadius: BorderRadius.circular(8),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.purple[400].withOpacity(0.4),
                          spreadRadius: 1,
                          blurRadius: 4,
                          offset: Offset(0, 0), // changes position of shadow
                        ),
                      ],
                    ),
                    width: double.infinity,
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ClipRRect(
                            child: Image.asset(
                              "img/img_avatar.png",
                              width: 50,
                            ),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "Hossein Araghi",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 20
                            ),
                          ),
                          Text(
                            "hoseinaraghi84@gmail.com",
                            style: TextStyle(
                                color: Colors.white54
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  color: Colors.purple[300],
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                width: 40,
                                height: 40,
                                child: IconButton(
                                  onPressed: (){},
                                  icon: Icon(
                                    Icons.account_circle,
                                    color: Colors.white60,
                                    size: 20,
                                  ),
                                  padding: EdgeInsets.all(0),
                                ),
                                margin: EdgeInsets.only(right: 10),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  color: Colors.purple[300],
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                width: 40,
                                height: 40,
                                child: IconButton(
                                  onPressed: (){},
                                  icon: Icon(
                                    Icons.settings,
                                    color: Colors.white60,
                                    size: 20,
                                  ),
                                  padding: EdgeInsets.all(0),
                                ),
                                margin: EdgeInsets.only(right: 10),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  color: Colors.purple[300],
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                width: 40,
                                height: 40,
                                child: IconButton(
                                  onPressed: (){},
                                  icon: Icon(
                                    Icons.edit,
                                    color: Colors.white60,
                                    size: 20,
                                  ),
                                  padding: EdgeInsets.all(0),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  Column(
                    children: menu.map((e) =>
                        GestureDetector(
                          onTap: (){
                            print("hi : ${e.name}");
                          },
                          child: Container(
                            margin: EdgeInsets.only(top: 15),
                            decoration: BoxDecoration(
                              color: mainTheme.secondColor,
                              borderRadius: BorderRadius.circular(8),
                              boxShadow: [
                                BoxShadow(
                                  color: (){
                                    if(e.page == widget.page){
                                      return Colors.purple[300].withOpacity(0.5);
                                    }else {
                                      return Colors.green[400].withOpacity(0.4);
                                    }
                                  }(),
                                  spreadRadius: 1,
                                  blurRadius: 4,
                                  offset: Offset(0, 0), // changes position of shadow
                                ),
                              ],
                            ),
                            width: double.infinity,
                            child: Padding(
                                padding: const EdgeInsets.all(10),
                                child: Row(
                                  children: [
                                    Text(
                                      e.name,
                                      style: TextStyle(
                                        color: (){
                                          if(e.page == widget.page){
                                            return mainTheme.purple300;
                                          }else {
                                            return Colors.white;
                                          }
                                        }(),
                                      ),
                                    ),
                                    Expanded(
                                      child: Align(
                                        alignment: Alignment.centerRight,
                                        child: Icon(
                                          e.icon,
                                          color: (){
                                            if(e.page == widget.page){
                                              return mainTheme.purple300;
                                            }else {
                                              return Colors.white;
                                            }
                                          }(),
                                          size: 23,
                                        ),
                                      ),
                                    ),
                                  ],
                                )
                            ),
                          ),
                        ),
                    ).toList(),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}