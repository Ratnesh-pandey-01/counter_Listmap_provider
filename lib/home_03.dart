import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_06/counter_provider.dart';
import 'package:provider_06/list_map_provider_03.dart';
import 'package:provider_06/next_03.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //int _count = 0;

  List<Map<String, dynamic>> data = [];

  @override
  Widget build(BuildContext context) {
    data = Provider.of<ListMapProvider>(context).getAllMaps();
    return Scaffold(
      backgroundColor: Colors.lime,
      appBar: AppBar(
        backgroundColor: Colors.green,
        centerTitle: true,
        title: Text("Home Page"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 20,
            ),
            Text(
              "${Provider.of<CounterProvider>(context).getValue()}",
              style: TextStyle(fontSize: 25),
            ),
            SizedBox(
              height: 15,
            ),
            data.isNotEmpty
                ? Expanded(
                    child: ListView.builder(
                        itemCount: data.length,
                        itemBuilder: (_, index) {
                          return ListTile(
                            title: Text(data[index]["title"]),
                            subtitle: Text(data[index]["desc"]),
                          );
                        }),
                  )
                : Center(
                    child: Text(
                      "No Notice yet!",
                      style: TextStyle(fontSize: 20, color: Colors.red),
                    ),
                  ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => NextPage()));
                  },
                  child: Text(
                    "Go",
                    style: TextStyle(fontSize: 20),
                  )),
            )
          ],
        ),
      ),
    );
  }
}
