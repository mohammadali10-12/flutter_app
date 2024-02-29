import "package:flutter/material.dart";

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      backgroundColor: Colors.white,
      body: Center(
          child: Column(
        children: [
          Image.asset(
            'assets/images/login.png',
            fit: BoxFit.cover,
            // width: 300,
            // height: 250,
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            'login page',
            style: TextStyle(
                fontSize: 30, color: Colors.red, fontWeight: FontWeight.bold),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 32),
            child: Column(
              children: [
                TextFormField(
                  decoration: InputDecoration(
                      hintText: "Enter Username", labelText: "Username"),
                ),
                TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                      hintText: "Enter Password", labelText: "Password"),
                ),
                SizedBox(
                  height: 25,
                ),
                ElevatedButton(
                  onPressed: () {
                    print('hello');
                  },
                  child: Text('Login'),
                  style: TextButton.styleFrom(),
                ),
              ],
            ),
          ),
        ],
      )),
    );
  }
}
