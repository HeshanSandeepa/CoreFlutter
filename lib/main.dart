import 'package:flutter/material.dart';
import 'package:flutter_core/async_coding/streams.dart';
import 'package:flutter_core/state_management/inherited_widget.dart';
import 'package:flutter_core/widget_of_the_week/animated_icon.dart';
import 'package:flutter_core/widget_of_the_week/animated_list.dart';
import 'package:flutter_core/widget_of_the_week/animated_switcher.dart';
import 'package:flutter_core/widget_of_the_week/aspect_ratio.dart';
import 'package:flutter_core/widget_of_the_week/draggable.dart';
import 'package:flutter_core/widget_of_the_week/flexible.dart';
import 'package:flutter_core/widget_of_the_week/limited_box.dart';
import 'package:flutter_core/widget_of_the_week/media_query.dart';
import 'package:flutter_core/widget_of_the_week/place_holder.dart';
import 'package:flutter_core/widget_of_the_week/reorderable_list_view.dart';
import 'package:flutter_core/widget_of_the_week/rich_text.dart';
import 'package:flutter_core/widget_of_the_week/spacer.dart';

import 'async_coding/future_async_await.dart';
import 'async_coding/isolate.dart';
import 'flutter_in_focus/generators.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Core',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: GeneratorApp(),
    );
  }
}
