import 'package:flutter/material.dart';

void main() {
  runApp(MyApp()
  );
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ImageProvider image;
    return  MaterialApp(
        home:Scaffold(
          backgroundColor: Colors.teal,
          body: SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                CircleAvatar(
                  radius: 70.0,
                  backgroundImage: AssetImage('assets/chaitanya1.png'),
                ),
                Text(
                  'Chaitanya',
                  style: TextStyle(
                    fontFamily: 'Pacifico',
                    fontSize: 40.0,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,

                  ),
                ),
                Text(
                  'FRONTEND DEVELOPER',
                  style: TextStyle(
                    fontFamily: 'SourceSan3',
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white70,
                    letterSpacing: 2.5,
                  ),

                ),
                SizedBox(
                  height:20.0,
                  width:150.0,
                  child:Divider(
                    color:Colors.teal.shade100,

                  )
                ),
                Card(


                  margin:EdgeInsets.symmetric(vertical:10.0,horizontal:25.0),
                  child:Padding(
                    padding:EdgeInsets.all(25.0),
                    child:ListTile(
                      leading:Icon(
                        Icons.phone,
                        color: Colors.teal,
                      ),
                      title:Text('8792620374',
                          style: TextStyle(
                            color: Colors.teal.shade800,
                            fontFamily: 'SourceSan3',
                            fontSize: 20.0,

                          )
                      )
                    )
                  ),
                ),

                Card(
                    margin:EdgeInsets.symmetric(vertical:10.0,horizontal:25.0),
                    child:Padding(
                      padding:EdgeInsets.all(10.0),
                      child: Padding(
                        padding: EdgeInsets.all(10.0),
                        child:ListTile(
                          leading:Icon(
                            Icons.email,
                            color: Colors.teal,
                          ),
                          title:Text('chaitanyaputhran4@gmail.com',
                              style: TextStyle(
                                color: Colors.teal.shade800,
                                fontFamily: 'SourceSan3',
                                fontSize: 20.0,

                              )
                          )
                        )
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

