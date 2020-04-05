import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_modular/flutter_modular_test.dart';

import 'package:paroquia_sao_lourenco/app/modules/login/profile/profile_page.dart';

main() {
  testWidgets('ProfilePage has title', (WidgetTester tester) async {
    await tester.pumpWidget(buildTestableWidget(ProfilePage(title: 'Profile')));
    final titleFinder = find.text('Profile');
    expect(titleFinder, findsOneWidget);
  });
}
