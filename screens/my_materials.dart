import 'package:flutter/material.dart';
import 'package:laba2021/screens/add_material.dart';

class MyMaterials extends StatelessWidget {
  static const routeName = '/materials';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.symmetric(vertical: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const Text(
                    'Мої матеріали',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed(AddMaterial.routeName);
                    },
                    child: const Text('Дотати новий'),
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.symmetric(
                        horizontal: 30,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.8,
              child: ListView.builder(
                itemCount: 12,
                itemBuilder: (ctx, i) => Card(
                  child: ListTile(
                    title: const Text(
                      'Філтрація води у обмеженому просторі',
                      softWrap: true,
                    ),
                    trailing: Container(
                      width: 80,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Icon(Icons.edit),
                          Icon(Icons.cancel_outlined),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
