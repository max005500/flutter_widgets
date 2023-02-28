import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});
  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  double counter = 0;
  @override
  Widget build(BuildContext context) {
    const font = TextStyle(fontFamily: 'arial', fontSize: 25);
    void onPressAdd() {
      counter += 0.000000000000000004;
      counter *= 10;
      setState(() {});
    }

    void onPressSub() {
      counter -= 0.000000000000000004;
      counter /= 10;
      setState(() {});
    }

    void onPressRestore() {
      counter = 0.0;
      setState(() {});
    }

    return Scaffold(
      backgroundColor: Colors.lime,
      appBar: AppBar(
          title: const Center(child: Text('esto es un counter')), elevation: 0),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('counter', style: font),
            Text('$counter', style: font)
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: CustomFloatingActionButtom(
        onPressAdd: onPressAdd,
        onPressSub: onPressSub,
        onPressRestore: onPressRestore,
      ),
    );
  }
}

class CustomFloatingActionButtom extends StatelessWidget {
  final Function onPressAdd;
  final Function onPressSub;
  final Function onPressRestore;

  const CustomFloatingActionButtom({
    super.key,
    required this.onPressAdd,
    required this.onPressSub,
    required this.onPressRestore,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        FloatingActionButton(
          onPressed: () => onPressAdd(),
          child: const Icon(Icons.add),
        ),
        // const SizedBox(
        //   width: 20,
        // ),
        FloatingActionButton(
          onPressed: () => onPressRestore(),
          child: const Icon(Icons.restore),
        ),
        // const SizedBox(
        //   width: 20,
        // ),
        FloatingActionButton(
          onPressed: () => onPressSub(),
          child: const Icon(Icons.remove),
        ),
      ],
    );
  }
}
