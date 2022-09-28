import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/number_provider.dart';

class ResultScreen extends StatefulWidget {
  const ResultScreen({Key? key}) : super(key: key);

  @override
  State<ResultScreen> createState() => _ResultScreenState();
}

class _ResultScreenState extends State<ResultScreen> {
  @override
  void initState() {
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16),
      width: double.infinity,
      height: double.infinity,
      child: Center(
        child: Consumer(
          builder: (_, NumberProvider numberProvider, __) {
            return Text(
              '${numberProvider.number}',
              style: const TextStyle(color: Colors.blue,fontSize: 30),
            );
          },
        ),
      ),
    );
  }
}
