import 'package:flutter/material.dart';
import 'package:laba2021/screens/added.dart';

class AddMaterial extends StatefulWidget {
  static const routeName = '/add';
  @override
  _AddMaterialState createState() => _AddMaterialState();
}

class _AddMaterialState extends State<AddMaterial> {
  bool _fisic = false;
  bool _psic = false;
  bool _prog = false;
  bool _db = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Form(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(vertical: 20),
                child: const Text(
                  'Додати матеріал',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: TextFormField(
                  // key: ,
                  textInputAction: TextInputAction.next,
                  decoration: const InputDecoration(
                    hintText: 'Назва',
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                        width: 1,
                        color: Colors.black,
                      ),
                    ),
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
              // Download Document
              Container(
                width: MediaQuery.of(context).size.width * 0.9,
                padding: EdgeInsets.only(top: 30),
                child: Row(
                  children: [
                    Icon(Icons.upload_file),
                    SizedBox(
                      width: 10,
                    ),
                    GestureDetector(
                      child: const Text(
                        'Завантажити документ',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                      onTap: () {},
                    ),
                  ],
                ),
              ),
              // Галузь
              Container(
                padding: EdgeInsets.symmetric(
                  vertical: 30,
                ),
                child: const Text(
                  'Оберіть галузь',
                  style: TextStyle(fontSize: 20),
                ),
              ),
              SwitchListTile(
                title: const Text('Фізика'),
                value: _fisic,
                onChanged: (bool value) {
                  setState(() {
                    _fisic = value;
                  });
                },
              ),
              SwitchListTile(
                title: const Text('Психологія'),
                value: _psic,
                onChanged: (bool value) {
                  setState(() {
                    _psic = value;
                  });
                },
              ),
              SwitchListTile(
                title: const Text('Програмування'),
                value: _prog,
                onChanged: (bool value) {
                  setState(() {
                    _prog = value;
                  });
                },
              ),
              SwitchListTile(
                title: const Text('Бази данних'),
                value: _db,
                onChanged: (bool value) {
                  setState(() {
                    _db = value;
                  });
                },
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.4,
                child: TextFormField(
                  // key: ,
                  keyboardType: TextInputType.number,
                  textInputAction: TextInputAction.next,
                  decoration: const InputDecoration(
                    hintText: 'Унікальність в %',
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                        width: 1,
                        color: Colors.black,
                      ),
                    ),
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
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 15.0),
                child: Text(
                  'Опис',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.9,
                child: TextFormField(
                  keyboardType: TextInputType.multiline,
                  maxLines: 7,
                  decoration: const InputDecoration(
                    hintText: 'Залиште ваш опис',
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                        width: 1,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  validator: (value) {
                    if (value.isEmpty) {
                      return 'Залиште опис';
                    }
                    return null;
                  },
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 15),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed(Added.routeName);
                  },
                  child: const Text('Додати'),
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25),
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 30, vertical: 14)
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
