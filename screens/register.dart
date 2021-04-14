import 'package:flutter/material.dart';

class RegisterScreen extends StatefulWidget {
  static const routeName = '/register';
  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
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
              // FIO
              Container(
                width: MediaQuery.of(context).size.width * 0.65,
                child: TextFormField(
                  // key: ,
                  textInputAction: TextInputAction.next,
                  decoration: const InputDecoration(
                    hintText: 'ФІО',
                  ),
                  validator: (value) {
                    if (value.isEmpty) {
                      return 'Заповніть це поле';
                    }
                    return null;
                  },
                  onSaved: (value) {
                    // _email = value;
                  },
                ),
              ),
              // email
              Container(
                width: MediaQuery.of(context).size.width * 0.65,
                child: TextFormField(
                  // key: ,
                  keyboardType: TextInputType.emailAddress,
                  textInputAction: TextInputAction.next,
                  decoration: const InputDecoration(
                    hintText: 'Email',
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
              // Група
              Container(
                width: MediaQuery.of(context).size.width * 0.65,
                child: TextFormField(
                  // key: ,
                  textInputAction: TextInputAction.next,
                  decoration: const InputDecoration(
                    hintText: 'Група',
                  ),
                  validator: (value) {
                    if (value.isEmpty) {
                      return 'Заповніть це поле';
                    }
                    return null;
                  },
                  onSaved: (value) {
                    // _email = value;
                  },
                ),
              ),
              // Логін
              Container(
                margin: EdgeInsets.symmetric(vertical: 25),
                child: GestureDetector(
                  child: const Text(
                    'Увійти',
                    style: TextStyle(
                      color: Colors.blue,
                    ),
                  ),
                  onTap: () {
                    Navigator.of(context)
                        .pop();
                  },
                ),
              ),
              // Реєстрація
              Padding(
                padding: const EdgeInsets.only(top: 15.0),
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Text('Зареєструватися'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
