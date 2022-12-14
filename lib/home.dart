import 'package:flutter/material.dart';

import 'mainscreen.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("LOGIN PAGE",),
          //centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 20),
                child: Text(
                  "LOGIN",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(15.0),
                child: TextField(
                  decoration: InputDecoration(
                    prefixIcon:  Icon(Icons.account_circle),
                      label: Text("Username"),
                      hintText: "Username must be your email",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                      )),
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(15.0),
                child: TextField(
                  obscuringCharacter: "*",
                  obscureText: true,
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.password) ,
                      label: Text("Password"),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                      )),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20, bottom: 20),
                child: ElevatedButton(
                    onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => MainScreen()));
                },
                    child: const Text("LOGIN")),
              ),
              TextButton(
                  onPressed: () {},
                  child: const Text("Not a User? Register Here!!!"))
            ],
          ),
        ));
  }
}