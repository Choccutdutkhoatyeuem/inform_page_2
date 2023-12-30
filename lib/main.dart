import 'package:flutter/material.dart';
import 'package:inform_page_2/components/MyFieldText.dart';
import 'package:inform_page_2/page_infor.dart';
void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TextEditingController _userController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  bool isEnable = false;

@override
void initState() {
  ButtonChange();
  _userController.addListener(() {setState(() {});});
  _passwordController.addListener(() {setState(() {});});
  super.initState();
}

  @override
  Widget build(BuildContext context){
    return MaterialApp(
       home: SafeArea(
        child: Scaffold(
          backgroundColor: Color.fromARGB(255, 255, 217, 230),

          body: Center(
            child: Container(
              width: 350,
              height: 700,

              decoration: BoxDecoration(
                color: Color.fromARGB(255, 255, 255, 255 ),
                borderRadius: BorderRadius.circular(8),
              ),
              child: SingleChildScrollView(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Column(
                children: [
                  const SizedBox(height: 50),
                  const Text(
                    'You must Sign In to join',
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                  const SizedBox(height: 15),

                  const Text(
                    "We're a Team That Guides Each Other",
                    style: TextStyle(
                      fontSize: 14.0,
                      color: Colors.grey,
                    ),
                  ),
                  const SizedBox(height: 60),

                  const Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.only(left:24),
                      child: Text(
                        'Email or UserName',
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                  ),
                   const SizedBox(height: 15),

                   MyFieldText(
                    icon: Icons.person,
    
                      controller: _userController,
                    hintText:'Uname@mail.com',
                    obscureText: false,
                  ),
                   const SizedBox(height: 35),
                                    
                    const Align(
                    alignment: Alignment.centerLeft,
                    child:Padding(
                      padding: EdgeInsets.only(left: 24.0),
                      child: Text(
                        'Password',
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 15),

                  MyFieldText(
                    controller: _passwordController,
                    icon: Icons.lock,
                    hintText:'Password',
                    obscureText: true, 
                  ),
                    const SizedBox(height: 30),

                    SizedBox(height: 20),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal:25.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          'Forgot Password?',
                          style: TextStyle(
                            color: Colors.blue
                          ),
                        ),
                      ],
                    ),
                  ),
                    const SizedBox(height: 30),
                  GestureDetector(
                    onTap: () {
                      print('hi');
                      bool loginSuccess = true;

                      if (loginSuccess){
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(builder: (context) => MyInfor()),
                        );
                      }
                    },
                    child: Container(
                      width: 400,
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: ButtonChange() ? Colors.blue : Colors.grey,
                      ),
                      child: const Center(child: Text("LOGIN", style: TextStyle(
                        fontSize: 15.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      ))),
                    ),
                  ),
                   const SizedBox (height: 40),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Don't have an account?",
                        style: TextStyle(
                          fontSize: 15,
                        ),
                      ),
                      SizedBox(width: 3),
                      Text(
                        "Sign Up",
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              ),
            ),
          ),
        ),
       ),
    );
  }
    bool  ButtonChange() {
    if (_userController.text.isNotEmpty && _passwordController.text.isNotEmpty){
      setState(() {
        isEnable = true;
      });
    } else {
      setState(() {
        isEnable = false;
      });
    }
    return isEnable;
  }
}
