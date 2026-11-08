
import 'package:flutter/material.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Android ATC Pizza Place'),
        backgroundColor: Colors.orange,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            _buildMenuCard(
              context,
              'Vegetable Pizza',
              'vegetable',
            ),
            _buildMenuCard(
              context,
              'Cheese Pizza',
              'cheese',
            ),
            _buildMenuCard(
              context,
              'Box of Fries',
              'fries',
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildMenuCard(
    BuildContext context,
    String itemName,
    String routeName,
  ) {
    return Card(
      color: Colors.orange,
      margin: const EdgeInsets.only(bottom: 16),
      child: ListTile(
        title: Text(
          itemName,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        trailing: const Icon(
          Icons.arrow_forward,
          color: Colors.white,
        ),
        onTap: () {
          Navigator.pushNamed(context, routeName);
        },
      ),
    );
  }
}
