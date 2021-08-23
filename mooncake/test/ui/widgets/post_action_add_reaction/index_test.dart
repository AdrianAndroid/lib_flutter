import 'package:flutter_test/flutter_test.dart';
import 'package:flutter/material.dart';
import 'package:mooncake/ui/ui.dart';
import '../../../mocks/posts.dart';
import '../../helper.dart';

void main() {
  testWidgets('MnemonicVisualizer: Displays export correctly',
      (WidgetTester tester) async {
    await tester.pumpWidget(
      makeTestableWidget(
        child: PostAddReactionAction(post: testPost),
      ),
    );

    await tester.pumpAndSettle();

    expect(find.byType(SizedBox), findsWidgets);
    expect(find.byType(IconButton), findsWidgets);

    await tester.tap(find.byType(IconButton));
  });
}
