import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formkey = GlobalKey<FormState>();

  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Login Page"),
          centerTitle: true,
          leading: const Icon(Icons.login),
          backgroundColor: Colors.blue[300],
        ),
        backgroundColor: Colors.grey[200],
        body: Stack(
          fit: StackFit.expand,
          children: <Widget>[
            Image.network(
              "https://images.unsplash.com/photo-1498050108023-c5249f4df085?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1952&q=80",
              fit: BoxFit.fitHeight,
              color: Colors.black.withOpacity(0.8),
              colorBlendMode: BlendMode.srcOver,
            ),
            Center(
              child: FractionallySizedBox(
                  widthFactor: 0.9,
                  heightFactor: 0.5,
                  child: Form(
                      key: _formkey,
                      child: ListView(
                        children: <Widget>[
                          TextFormField(
                            decoration: const InputDecoration(
                                labelText: "Username",
                                labelStyle: TextStyle(color: Colors.white)),
                            controller: _usernameController,
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return "Field cannot be left blank";
                              }
                              return null;
                            },
                            style: const TextStyle(color: Colors.white),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          TextFormField(
                            decoration: const InputDecoration(
                                labelText: "Password",
                                labelStyle: TextStyle(color: Colors.white)),
                            controller: _passwordController,
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return "Field cannot be left blank";
                              }
                              return null;
                            },
                            obscureText: true,
                            style: const TextStyle(color: Colors.white),
                          ),
                          const SizedBox(
                            height: 35,
                          ),
                          ElevatedButton.icon(
                            onPressed: () {
                              FocusScope.of(context).unfocus();
                              if (_formkey.currentState!.validate()) {
                                ScaffoldMessenger.of(context).showSnackBar(
                                    const SnackBar(
                                        content: Text("logging you in...")));
                              }
                            },
                            icon: const Icon(Icons.login),
                            label: const Text("Sign in"),
                          ),
                        ],
                      ))),
            ),
          ],
        ));
  }
}
