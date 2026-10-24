import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_project/controllers/counter_controllers.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final controller = Get.put(CounterControllers());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: const Text(
          'Counter App',
          style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),

      body: Center(
        child: Obx(
          () => Text(
            "Value : ${controller.count.value}",
            style: const TextStyle(color: Colors.black, fontSize: 20),
          ),
        ),
      ),

      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            backgroundColor: Colors.greenAccent,
            onPressed: () {
              controller.increment();
            },
            child: const Icon(Icons.add),
          ),
          const SizedBox(width: 10),
          FloatingActionButton(
            backgroundColor: Colors.redAccent.shade200,
            onPressed: () {
              controller.decrement();
            },
            child: const Icon(Icons.remove),
          ),
          const SizedBox(width: 10),
          FloatingActionButton(
            backgroundColor: Colors.blue.shade300,
            onPressed: () {
              controller.reset();
            },
            child: const Icon(Icons.reset_tv),
          ),
        ],
      ),
    );
  }
}
