import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_07/counter_04.dart';
import 'package:provider_07/list_map_provider.dart';

class NextPage extends StatefulWidget {
  const NextPage({super.key});

  @override
  State<NextPage> createState() => _NextPageState();
}

class _NextPageState extends State<NextPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.purpleAccent,
        title: Text("Next Page"),
      ),
      body: Center(
        child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.amberAccent,
              iconSize: 30,
            ),
            onPressed: () {
              Provider.of<ListMapProvider>(context, listen: false).addMap({
                "title": "Monday is lovely day of the week",
                "desc": "I lied"
              });
            },
            child: Text("Add Note")),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Provider.of<CounterProvider>(context, listen: false).incrementCount();
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
