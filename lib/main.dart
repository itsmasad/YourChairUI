import 'package:flutter/material.dart';

void main(){
  runApp(HomePage());
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {



  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}
class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

final List<String> _listItem = [
  'images/Chair1.jpg',
  'images/chair2.jpg',
  'images/chair3.jpg',
  'images/chair4.png',
  'images/Chair1.jpg',
  'images/chair2.jpg',
  'images/chair3.jpg',
  'images/chair4.png',
];

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.grey[600],
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: Icon(Icons.menu),
          actions: <Widget>[
            Padding(
              padding: EdgeInsets.all(10.0),
              child: Container(
                width:30,
                height:30,
                decoration: BoxDecoration(
                  color: Colors.grey[800],
                  borderRadius: BorderRadius.circular(10)
                ),
                child: Center(child: Text('0'),),
              ),
            )
          ],
          title: Center(child: Text("Home")),
          ),
          body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(20.0),
          child: Column(
            children: <Widget>[
              Container(
                width: double.infinity,
                height: 250,
                // child: new Image.asset('images/Cover.jpeg'),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                    image: AssetImage('images/Cover.jpeg'),
                    fit: BoxFit.cover
                  )
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      gradient: LinearGradient(
                        begin: Alignment.bottomRight,
                        colors: [
                          Colors.black.withOpacity(.4),
                          Colors.black.withOpacity(.2)
                        ]
                        )
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        
                        Text('Lifestyle Sale',style: TextStyle(color: Colors.white,fontSize: 35,fontWeight: FontWeight.bold)),
                        SizedBox(height:30),
                        Container(
                        height: 50,
                        margin: EdgeInsets.symmetric(horizontal:40),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white
                        ),
                        child: Center(child: Text('Shop Now',style: TextStyle(color: Colors.grey[900],fontWeight: FontWeight.bold),)),
                        ),
                        SizedBox(height:30),
                       ]
                    ),
                  ),
              ),
              SizedBox(height:20),
              Expanded(child: GridView.count(
                                  
                          crossAxisCount: 2,
                        crossAxisSpacing:10,
                        mainAxisSpacing:10,
                        children: _listItem.map((item) => Card(
                          color: Colors.transparent,
                          elevation: 0,
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              image: DecorationImage(
                                image: AssetImage(item),
                                fit: BoxFit.cover
                              )
                            ),
                            child: Transform.translate(offset: Offset(60,-55),
                            

                            child: Container(
                              margin: EdgeInsets.symmetric(horizontal:70,vertical:70),
                              
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.white,
                              ),
                              child: Icon(Icons.bookmark_border, size: 15,),
                            ),
                            ),
                            ),
                        )).toList()
                        ),)
              
            ],
          ) ,
        )
      ),
    );
  }
}