import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget{
  @override
  _HomePageState createState() => _HomePageState();
}


class _HomePageState extends State<HomePage> with SingleTickerProviderStateMixin {


  TabController _tabController;

  @override
  void initState(){
    super.initState();
    _tabController = TabController(vsync: this,length: 4,initialIndex: 2);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("WhatsApp"),
        elevation: 0.7,
        bottom: new TabBar(
          controller: _tabController,
          indicatorColor: Colors.blue,
          labelColor: Colors.white,
          tabs: <Widget>[
            new Tab(icon: new Icon(Icons.camera_alt)),
            new Tab(text: "CHATS",),
            new Tab(text: "STATUS",),
            new Tab(text: "CALLS",),
          ],
        ),
        actions: <Widget>[
          new Icon(Icons.search),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: new Icon(Icons.more_vert),
          )
        ],
      ),
      body: new TabBarView(
        controller: _tabController,
        children: <Widget>[
          new CameraScreen(widget.cameras),
          new ChatScreen(),
          new StatusScreen(),
          new CallsScreen(),
        ],
      ),
      floatingActionButton: new FloatingActionButton(
        backgroundColor: Theme.of(context).accentColor,
        child: new Icon(
          Icons.message,
          color: Colors.white,
        ),
        onPressed: ()=>print("Open Chats"),
      ),
    );
    
  }
}