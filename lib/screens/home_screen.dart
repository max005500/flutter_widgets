import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    const font = TextStyle(fontFamily: 'arial', fontSize: 25);
    int counter = 0;
    void onPress() {
      counter++;
    }

    return Scaffold(
      backgroundColor: Colors.lime,
      appBar: AppBar(
          title: const Center(child: Text('hola mucho gusto jajajaj')),
          elevation: 0),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('counter', style: font),
            Text('$counter', style: font)
          ],
        ),
      ),
      // floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        onPressed: onPress,
        child: const Icon(Icons.add),
      ),
    );
  }
}
