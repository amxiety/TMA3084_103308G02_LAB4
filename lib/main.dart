
import 'package:flutter/material.dart';
import 'order_summary.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Pizza Store',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.red,
        ),
        useMaterial3: true,
      ),
      home: const OrderSummaryScreen(
        itemName: 'Margherita Pizza',
        quantity: 2,
        unitPrice: 12.50,
      ),
    );
  }
}
