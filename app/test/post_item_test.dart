import 'package:birb/models/post.dart';
import 'package:birb/models/post_mock.dart';
import 'package:birb/post_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:image_test_utils/image_test_utils.dart';
import 'package:cached_network_image/cached_network_image.dart';

void main() {
  testWidgets('Renders a post', (WidgetTester tester) async {
    provideMockedNetworkImages(() async {
      final Post post = mockPost();
      // Build our app and trigger a frame.
      await tester.pumpWidget(MaterialApp(
        home: PostItem(post),
      ));
      expect(find.byType(CircularProgressIndicator), findsOneWidget);
      expect(find.byType(CachedNetworkImage), findsOneWidget);
      expect(find.text(post.username), findsOneWidget);
      expect(find.text(post.text), findsOneWidget);
      expect(Icon, matcher)
    });
  });
}
