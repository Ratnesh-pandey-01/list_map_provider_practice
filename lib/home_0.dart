import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_07/counter_04.dart';
import 'package:provider_07/list_map_provider.dart';
import 'package:provider_07/next_01.dart';

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
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.purpleAccent,
        title: Text("Home Page"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "${Provider.of<CounterProvider>(context).getValue()}",
              style: TextStyle(fontSize: 25),
            ),
            SizedBox(
              height: 20,
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
                : Text("No Notice yet!!!"),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.amberAccent,
                  iconSize: 30,
                ),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => NextPage()));
                },
                child: Text("Next"))
          ],
        ),
      ),
    );
  }
}
