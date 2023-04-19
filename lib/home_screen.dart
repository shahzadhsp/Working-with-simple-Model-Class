import 'package:flutter/material.dart';
import 'package:flutter_routes/model_class.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<NamesModel> data = [
    NamesModel(name: 'Muhammad Shahzad', age: 22, profession: 'Developer',image: 'sdf',details: Details(fathername: 'Muhammad Hanif')),
    NamesModel(name: 'Khubaibn Abbasi', age: 25, profession: 'Developer',image: 'sdf',details: Details(fathername: '')),
    NamesModel(name: 'Muhammad Shahbaz', age: 26, profession: 'Teaching'),
    NamesModel(
        name: 'Muhammad Sufyan', age: 22, profession: 'Senior Developer'),
    NamesModel(name: 'Muhammad Shahzad', age: 22, profession: 'Developer'),
    NamesModel(name: 'Khubaibn Abbasi', age: 25, profession: 'Developer'),
    NamesModel(name: 'Muhammad Shahbaz', age: 26, profession: 'Teaching'),
    NamesModel(
        name: 'Muhammad Sufyan', age: 22, profession: 'Senior Developer'),
    NamesModel(name: 'Muhammad Shahzad', age: 22, profession: 'Developer'),
    NamesModel(name: 'Khubaibn Abbasi', age: 25, profession: 'Developer'),
    NamesModel(name: 'Muhammad Shahbaz', age: 26, profession: 'Teaching'),
    NamesModel(
        name: 'Muhammad Sufyan', age: 22, profession: 'Senior Developer'),
    NamesModel(name: 'Muhammad Shahzad', age: 22, profession: 'Developer'),
    NamesModel(name: 'Khubaibn Abbasi', age: 25, profession: 'Developer'),
    NamesModel(name: 'Muhammad Shahbaz', age: 26, profession: 'Teaching'),
    NamesModel(
        name: 'Muhammad Sufyan', age: 22, profession: 'Senior Developer'),
    NamesModel(name: 'Muhammad Shahzad', age: 22, profession: 'Developer'),
    NamesModel(name: 'Khubaibn Abbasi', age: 25, profession: 'Developer'),
    NamesModel(name: 'Muhammad Shahbaz', age: 26, profession: 'Teaching'),
    NamesModel(
        name: 'Muhammad Sufyan', age: 22, profession: 'Senior Developer'),
    NamesModel(name: 'Muhammad Shahzad', age: 22, profession: 'Developer'),
    NamesModel(name: 'Khubaibn Abbasi', age: 25, profession: 'Developer'),
    NamesModel(name: 'Muhammad Shahbaz', age: 26, profession: 'Teaching'),
    NamesModel(
        name: 'Muhammad Sufyan', age: 22, profession: 'Senior Developer'),
    NamesModel(name: 'Muhammad Shahzad', age: 22, profession: 'Developer'),
    NamesModel(name: 'Khubaibn Abbasi', age: 25, profession: 'Developer'),
    NamesModel(name: 'Muhammad Shahbaz', age: 26, profession: 'Teaching'),
    NamesModel(
        name: 'Muhammad Sufyan', age: 22, profession: 'Senior Developer'),
    NamesModel(name: 'Muhammad Shahzad', age: 22, profession: 'Developer'),
    NamesModel(name: 'Khubaibn Abbasi', age: 25, profession: 'Developer'),
    NamesModel(name: 'Muhammad Shahbaz', age: 26, profession: 'Teaching'),
    NamesModel(
        name: 'Muhammad Sufyan', age: 22, profession: 'Senior Developer'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffe2f1f8),
      appBar: AppBar(title: Text('Model Classes')),
      body: ListView.builder(
        itemCount: data.length,
        itemBuilder: (context, index) {
          if(data[index].details.toString== 'null'){
             return ListTile(
            title: Text(data[index].name.toString()),
            subtitle: Text(data[index].profession.toString() +
                "\n" "Age :" +
                data[index].age.toString()),
            trailing: IconButton(
              onPressed: () {
                data.removeAt(index);
                setState(() {});
              },
              icon: Icon(Icons.delete),
            ),
          );
          }else{
             return ListTile(
            title: Text(data[index].name.toString()),
            subtitle: Text(data[index].details!.fathername.toString() +
                "\n" "Age :" +
                data[index].age.toString()),
            trailing: IconButton(
              onPressed: () {
                data.removeAt(index);
                setState(() {});
              },
              icon: Icon(Icons.delete),
            ),
          );
          }
         
        },
      ),
    );
  }
}
