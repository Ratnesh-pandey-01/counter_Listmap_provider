import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_06/counter_provider.dart';
import 'package:provider_06/list_map_provider_03.dart';

class NextPage extends StatefulWidget {
  const NextPage({super.key});

  @override
  State<NextPage> createState() => _NextPageState();
}

class _NextPageState extends State<NextPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lime,
      appBar: AppBar(
        backgroundColor: Colors.green,
        centerTitle: true,
        title: Text("Next Page"),
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              Provider.of<ListMapProvider>(context, listen: false)
                  .addMap({"title": "hello lovely world", "desc": "shut up"});
            },
            child: Text(
              "Add Note",
              style: TextStyle(fontSize: 20),
            )),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Provider.of<CounterProvider>(context, listen: false)
              .incrementCounter();
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
