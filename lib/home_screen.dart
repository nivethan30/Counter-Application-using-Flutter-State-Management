import 'package:counter_app/provider/counter_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Consumer<CounterProvider>(builder: (context, provider, child) {
      return SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: const Text("Counter App"),
          ),
          body: Center(
              child: Text(
            "The Counter value is ${provider.count}",
            style: const TextStyle(fontSize: 20),
          )),
          floatingActionButton: Padding(
            padding: const EdgeInsets.fromLTRB(250, 0, 20, 50),
            child: Row(
              children: [
                FloatingActionButton(
                  onPressed: () {
                    provider.decrementCounter();
                  },
                  child: const Icon(Icons.remove),
                ),
                const SizedBox(width: 20),
                FloatingActionButton(
                  onPressed: () {
                    provider.incrementCounter();
                  },
                  child: const Icon(Icons.add),
                )
              ],
            ),
          ),
          floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
        ),
      );
    });
  }
}
