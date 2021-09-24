import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);
  final List<User> contact = [
    User("Muhammad amerika", "08123321123"),
    User("Fdurao Intemas", "08523321123"),
    User("Muhammad amerika", "08123321123"),
    User("Amusta jkasdw", "08523321123"),
    User("Muhammad kita", "08123321123"),
    User("Fdurao asdwq", "08523321123"),
    User("Muhammad sdaweqw", "08123321123"),
    User("Fdurao Intemas", "08523321123"),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          backgroundColor: Colors.grey[200],
          appBar: AppBar(
            title: const Text("Kontak"),
            centerTitle: true,
          ),
          body: ListView.builder(
            itemBuilder: (BuildContext context, int index) {
              contact.sort((a, b) => a.name.compareTo(b.name));
              return Center(
                child: Padding(
                  padding: const EdgeInsets.all(3.0),
                  child: Card(
                    elevation: 5,
                    child: ListTile(
                      leading: const Icon(Icons.people_rounded, size: 50),
                      title: Text(contact[index].name),
                      subtitle: Text(contact[index].number + "\nxxx@xxx.com"),
                      isThreeLine: true,
                    ),
                  ),
                ),
              );
            },
            itemCount: contact.length,
          )),
    );
  }
}

class User {
  final String name;
  final String number;

  User(this.name, this.number);
}
