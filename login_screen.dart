import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController unameController = TextEditingController();
  TextEditingController passController = TextEditingController();
  String _message = '';


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text("Login Form"),backgroundColor: Colors.teal,),
        body: Container(
          child: ListView(children: <Widget>[
              const Padding(
                padding: EdgeInsets.all(20.0),
                child: Icon(
                  Icons.star_border_outlined,
                  size: 250,
                  color: Colors.teal,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  controller: unameController,
                  keyboardType: TextInputType.emailAddress,
                  decoration: const InputDecoration(
                    labelText: 'User Name',
                    hintText: 'Enter Email',
                    icon: Icon(Icons.person_outline)
                  ),
                ),
              ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: passController,
                obscureText: true,
                keyboardType: TextInputType.text,
                decoration: const InputDecoration(
                  labelText: 'Password',
                  hintText: 'Enter Password',
                  icon: Icon(Icons.password_outlined),
                ),
              ),
            ),
          const Center(child: Padding(
            padding: EdgeInsets.all(8.0),
            child: ElevatedButton(onPressed: null, child: Text("Login"),style: ButtonStyle(backgroundColor: MaterialStatePropertyAll<Color>(Colors.teal),
            ),),),
          )

          ],
          ),
        ),
      ),
    );
  }
}
