
import 'package:flutter/material.dart';
import 'order_summary.dart';

class VegetablePizzaScreen extends StatelessWidget {
  const VegetablePizzaScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Vegetable Pizza'),
        backgroundColor: Colors.orange,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Vegetable Pizza',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            Image.asset(
  'assets/images/pizza 1.jpg',
  height: 180,
),
const SizedBox(height: 10),
const Text('A delicious pizza topped with fresh vegetables.'),
            const SizedBox(height: 20),
           ElevatedButton(
  onPressed: () {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const OrderSummaryScreen(
          itemName: 'Vegetable Pizza',
          quantity: 1,
          unitPrice: 15.00,
        ),
      ),
    );
  },
  child: const Text('View Order Summary'),
),
const SizedBox(height: 10),
ElevatedButton(
  onPressed: () => Navigator.pop(context),
  child: const Text('Back'),
),
          ],
        ),
      ),
    );
  }
}
