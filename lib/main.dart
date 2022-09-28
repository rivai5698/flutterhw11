import 'package:flutter/material.dart';
import 'package:flutterhw11/page/home_page.dart';
import 'package:flutterhw11/provider/number_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MaterialApp(
    home: ChangeNotifierProvider(
        create: (_)=>NumberProvider(),
        child: const HomePage(),
    ),
  ),
  );
}

