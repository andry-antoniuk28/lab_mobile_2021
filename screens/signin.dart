import 'package:flutter/material.dart';
import 'package:laba2021/screens/profile_screen.dart';
import 'package:laba2021/screens/register.dart';

class SigninScreen extends StatefulWidget {
  static const routeName = '/signin';
  @override
  _SigninScreenState createState() => _SigninScreenState();
}

class _SigninScreenState extends State<SigninScreen> {
  final _keyForm = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Form(
          key: _keyForm,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // email
              Container(
                width: MediaQuery.of(context).size.width * 0.65,
                child: TextFormField(
                  // key: ,
                  keyboardType: TextInputType.emailAddress,
                  textInputAction: TextInputAction.next,
                  decoration: const InputDecoration(
                    hintText: 'Email',
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0xFFFFA31A),
                      ),
                    ),
                  ),
                  validator: (value) {
                    if (value.isEmpty || !value.contains('@')) {
                      return 'Введіть правильний емейл';
                    }
                    return null;
                  },
                  onSaved: (value) {
                    // _email = value;
                  },
                ),
              ),
              // password
              Container(
                width: MediaQuery.of(context).size.width * 0.65,
                child: TextFormField(
                  // key: ,
                  keyboardType: TextInputType.emailAddress,
                  textInputAction: TextInputAction.done,
                  decoration: const InputDecoration(
                    hintText: 'Пароль',
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0xFFFFA31A),
                      ),
                    ),
                  ),
                  obscureText: true,
                  validator: (value) {
                    if (value.isEmpty || value.length < 8) {
                      return 'Пароль має містити як мінімум 8 символів';
                    }
                    return null;
                  },
                  onSaved: (value) {
                    // _email = value;
                  },
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 25),
                child: GestureDetector(
                  child: const Text(
                    'Зареєструватися',
                    style: TextStyle(
                      color: Colors.blue,
                    ),
                  ),
                  onTap: () {
                    Navigator.of(context).pushNamed(RegisterScreen.routeName);
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15.0),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed(ProfileScreen.routeName);
                  },
                  child: const Text('Увійти'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
