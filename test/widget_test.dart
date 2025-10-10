import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mikunchik/main.dart';

void main() {
  testWidgets('Counter increments smoke test', (WidgetTester tester) async {
    // Construye la app y muestra el primer frame.
    await tester.pumpWidget(const MikunchikApp());

    // Verifica que el contador empieza en 0.
    expect(find.text('0'), findsOneWidget);
    expect(find.text('1'), findsNothing);

    // Toca el ícono '+' y actualiza el frame.
    await tester.tap(find.byIcon(Icons.add));
    await tester.pump();

    // Verifica que el contador incrementó.
    expect(find.text('0'), findsNothing);
    expect(find.text('1'), findsOneWidget);
  });
}

