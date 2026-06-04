import 'package:ap/main.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('AP dashboard renders core sections', (tester) async {
    await tester.pumpWidget(const ApApp());

    expect(find.text('AP AI支援'), findsOneWidget);
    expect(find.text('ワークスペース'), findsOneWidget);
    expect(find.text('相談ログ'), findsOneWidget);
    expect(find.text('資料作成'), findsOneWidget);
    expect(find.text('PRG管理'), findsOneWidget);
    expect(find.text('AI支援'), findsOneWidget);
    expect(find.text('設計メモ'), findsOneWidget);
  });
}
