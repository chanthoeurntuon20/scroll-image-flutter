import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';

void main() => runApp(Demo());
class Demo extends StatefulWidget {
  @override
  _DemoState createState() => _DemoState();
}

class _DemoState extends State<Demo> {

  //create function

    Container article(String img, String bigText, String subText){
    return  Container( 
                width: 120.0,
                child: Card( 
                  // Use to cut
                  child: Wrap(
                    children: <Widget>[
                      Image.network(img),
                      ListTile(
                        title: Text(bigText),
                        subtitle: Text(subText),
                      ),
                      RaisedButton( 
                        onPressed: (){},
                        child: Text("Like it"),
                        color: Colors.blue,
                      )
                    ],
                  ),
                ),
              );
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold( 
        appBar: AppBar( 
          actions: <Widget>[
            Container( 
              margin: EdgeInsets.only(right: 20.0),
              child: Icon(Icons.email),
            )
          ],
          title: Text("Good days"),
          centerTitle: true,
        ),

        body: Container( 
          height: 260.0,
          child: ListView( 
            ///We can scroll image by Axis 
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              article("https://i.pinimg.com/474x/5e/e0/39/5ee0393a57800d95f7643f433e91ea1f.jpg", "First text", "Second Text"),
              article("https://i.pinimg.com/474x/5e/e0/39/5ee0393a57800d95f7643f433e91ea1f.jpg", "First text", "Second Text"),
              article("https://i.pinimg.com/474x/5e/e0/39/5ee0393a57800d95f7643f433e91ea1f.jpg", "First text", "Second Text"),
              article("https://i.pinimg.com/474x/5e/e0/39/5ee0393a57800d95f7643f433e91ea1f.jpg", "First text", "Second Text"),
              article("https://i.pinimg.com/474x/5e/e0/39/5ee0393a57800d95f7643f433e91ea1f.jpg", "First text", "Second Text"),
            ],
          ),
        ),

        drawer: Drawer( 
          child: ListView( 
            children: <Widget>[
            DrawerHeader( 
              child:  Container( 
               child: Center( 
                 child: CircleAvatar( 
                   backgroundImage: NetworkImage( "http://img.saostar.vn/2016/03/08/330775/push5.jpg"),radius: 50.0,
                 ),
               ),
               decoration: BoxDecoration( 
                 image: DecorationImage(image: NetworkImage("https://www.easypeasyandfun.com/wp-content/uploads/2018/03/Rose-Directed-Drawing-1024x1024.jpg"),fit: BoxFit.cover)
               ),
             ),
            )
            ],
          ),
        ),
        floatingActionButton: SpeedDial( 
          animatedIcon: AnimatedIcons.menu_close,
          overlayColor: Colors.pink[100],
          children: [
            SpeedDialChild(
              child: Icon(Icons.email,color: Colors.white,),
              label: "Email",
              labelStyle: TextStyle(color: Colors.white),
              labelBackgroundColor: Colors.green,
            ),
          ],
        ),
        // floatingActionButton: FloatingActionButton( 
        //   child: Icon(Icons.add),
        //   onPressed: (){},
        // ),
        // floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      ),
    );
  }
}