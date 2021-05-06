import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Shop4ShapeYou Admin Dash Board',
      theme: ThemeData(
        primaryColor: Color(0xFFFED700),
      ),
      home: MyHomePage(title: 'ShapeYou App Admin Dashboard',),
    );
  }
}


class MyHomePage extends StatefulWidget {
  MyHomePage({ Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _formKey,
      appBar: AppBar(
        title: Text(widget.title, style: TextStyle(color: Colors.white),),
        elevation: 0.0,
        centerTitle: true,
      ),
      body: Container(
decoration: BoxDecoration(
  gradient: LinearGradient(
    colors: [
      Color(0xFFFED700),
      Colors.white
    ],
      stops: [1.0,1.0],
      begin: Alignment.topCenter,
      end: Alignment(0,0),
  ),
),

        child: Center(
          child: Container(
            height: 400,
            width: 300,
            child: Card(
              elevation:6,
              shape: Border.all(color: Theme.of(context).primaryColor, width: 2),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Form(
                  key: _formKey,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Container(
                          child: Column(
                            children: [
                              Image.asset('images/logo.png', height: 92,width: 92,),
                              Text('Shop4ShapeYou App Admin', style: TextStyle(color: Colors.white,fontWeight: FontWeight.w900, fontSize:20),),
                              TextFormField(
                                validator: (value){
                                  if (value!.isEmpty) {
                                    return 'Enter a User Name';
                                  }
                                  return null;
                                },
                                decoration: InputDecoration(
                                  labelText: 'User Name',
                                  prefixIcon:Icon(Icons.person),
                                  focusColor:Theme.of(context).primaryColor,
                                  contentPadding: EdgeInsets.only(left: 20,right: 20),
                                  hintText:'User Name',
                                  border: OutlineInputBorder(),
                                  focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                      color: Theme.of(context).primaryColor,
                                        width: 2,
                                    )
                                  ),
                                ),
                              ),

                              SizedBox(height: 20,),

                              TextFormField(
                                validator: (value){
                                  if (value!.isEmpty) {
                                    return 'Enter a Password';
                                  }
                                  if (value.length<6) {
                                    return 'Minimun 6 Characters';
                                  }
                                  return null;
                                },
                                obscureText: true,
                                decoration: InputDecoration(
                                  labelText: 'Minimun 6 Characters',
                                  prefixIcon: Icon(Icons.vpn_key_rounded),
                                  focusColor:Theme.of(context).primaryColor,
                                  contentPadding: EdgeInsets.only(left: 20,right: 20),
                                  hintText:'Password',
                                  border: OutlineInputBorder(),
                                  focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Theme.of(context).primaryColor,
                                        width: 2,
                                      )
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),

                      Row(
                        children: [
                          Expanded(
                            child: FlatButton(
                              onPressed: () { 
                                if (_formKey.currentState!.validate()) {
                                  print('Validated');
                                }  
                              },
                              color: Theme.of(context).primaryColor,
                              child: Text('Login',style: TextStyle(color: Colors.white),),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
