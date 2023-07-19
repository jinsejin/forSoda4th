import 'package:flutter/material.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  List<String> sodamember = <String>[
    "백형준",
    "정광진",
    "조준희",
    "송민영",
  ];
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        for(int i = 0; i < 4; i++)...{
          listTile(sodamember[i])
        }
      ],
    );
  }
  Widget listTile(String sodamembers){
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: ListTile(
            leading: const Icon(Icons.person),
            title:  Text(sodamembers),
            subtitle: const Text('Flutter App developer(software Engineer)'),
            onTap: () {
              print("wellcome to soda ");
            },
        ),
    );
  }
}

