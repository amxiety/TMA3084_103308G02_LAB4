
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:tma3084_103308g02_lab4/order_summary.dart';

void main() {
  testWidgets('Order summary displays correct details',
      (WidgetTester tester) async {
    await tester.pumpWidget(
      const MaterialApp(
        home: OrderSummaryScreen(
          itemName: 'Margherita Pizza',
          quantity: 2,
          unitPrice: 12.50,
        ),
      ),
    );

    expect(find.text('Order Summary'), findsOneWidget);
    expect(find.text('Item: Margherita Pizza'), findsOneWidget);
    expect(find.text('Quantity: 2'), findsOneWidget);
    expect(find.text('Total: RM 25.00'), findsOneWidget);
    expect(find.text('Back'), findsOneWidget);
  });
}
