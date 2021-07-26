import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  TextEditingController _mep = TextEditingController();
  Map map = {};
  var no = 0;

  // void _incrementCounter() {
  //   setState(() {
  //     _counter++;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextFormField(
              controller: _mep,
              decoration: InputDecoration(
                  labelText: "Name",
                  hintText: "Enter Name",
                  icon: Icon(Icons.account_box_sharp)),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          
         
          setState(() {
            map[no] = _mep.text;
            no++;
           print(map);
          });
        },
        child: Icon(Icons.add),
      ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: _incrementCounter,
      //   tooltip: 'Increment',
      //   child: Icon(Icons.add),
      // ),
      drawer: Drawer(
        child: map.length != 0
            ? ListView.builder(
                // padding: EdgeInsets.zero,
                // gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(
                      map[index],
                      style:
                          TextStyle(fontStyle: FontStyle.italic, fontSize: 18),
                    ),
                    tileColor: Colors.amber[100],
                  );
                },
                itemCount: map.length,
              )
            : Center(
                child: CircularProgressIndicator(),
              ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
