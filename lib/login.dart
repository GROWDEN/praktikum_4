import 'package:flutter/material.dart';
import 'package:praktikum_4/register.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();
  final _passwordRController = TextEditingController();
  final Color _borderColor = Colors.blue;
  final double _borderWidth = 1.0;
  final double _borderRadius = 10.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Image.asset('assets/diamond.png'),
            SizedBox(
              width: 8.0,
            ),
            Text("SHRINE"),
          ],
        ),
        automaticallyImplyLeading: false,
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.0),
          child: ListView(
            children: <Widget>[
              const SizedBox(height: 80.0),
              Column(
                children: <Widget>[
                  Image.asset('assets/diamond.png'),
                  const SizedBox(height: 16.0),
                  const Text('Login',
                      style: TextStyle(
                          fontSize: 30.0, fontWeight: FontWeight.bold)),
                  const Text(
                      'Lorem ipsum dolar sit amet, consectetur adipiscing elit',
                      style: TextStyle(fontSize: 13.0)),
                ],
              ),
              const SizedBox(height: 100.0),
              // [Name]
              Text(
                'Masukkan Nama User',
                style: TextStyle(fontSize: 16.0),
              ),
              const SizedBox(height: 8.0),
              // TextField for Username
              TextField(
                controller: _usernameController,
                decoration: InputDecoration(
                  filled: true,
                  labelText: 'Username',
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(_borderRadius),
                    borderSide: BorderSide(
                      color: _borderColor,
                      width: _borderWidth,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(_borderRadius),
                    borderSide: BorderSide(
                      color: _borderColor,
                      width: _borderWidth,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 12.0),
              // [Password]
              Text(
                'Masukkan Password',
                style: TextStyle(fontSize: 16.0),
              ),
              const SizedBox(height: 8.0),
              // TextField for Password
              TextField(
                controller: _passwordController,
                decoration: InputDecoration(
                  filled: true,
                  labelText: 'Password',
                  // Applying border properties
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(_borderRadius),
                    borderSide: BorderSide(
                      color: _borderColor,
                      width: _borderWidth,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(_borderRadius),
                    borderSide: BorderSide(
                      color: _borderColor,
                      width: _borderWidth,
                    ),
                  ),
                ),
                obscureText: true,
              ),
              const SizedBox(height: 30.0),
              // Buttons
              OverflowBar(
                alignment: MainAxisAlignment.end,
                children: <Widget>[
                  TextButton(
                    child: const Text('Hapus'),
                    onPressed: () {
                      _usernameController.clear();
                      _passwordController.clear();
                      _passwordRController.clear();
                    },
                  ),
                  ElevatedButton(
                    child: const Text('Masuk'),
                    onPressed: () {
                      Navigator.pushReplacementNamed(context, '/');
                    },
                  ),
                ],
              ),
              const SizedBox(height: 12.0),
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(width: 8.0),
                    Text('Belum punya akun?'),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => RegisterPage()),
                        );
                      },
                      child: Text('Sign up'),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
