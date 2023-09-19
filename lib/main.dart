import 'package:demo_ft_widget/effect_loading/app.dart';
import 'package:demo_ft_widget/navigate/materialPageRoute/push_pop.dart';
import 'package:demo_ft_widget/navigate/pushNamed/pushNamed.dart';

import 'package:demo_ft_widget/widget/widget_main.dart'; // File chứa tất cả các demo Widget

import 'package:flutter/material.dart';
import 'package:demo_ft_widget/view-library/tin_coder_view.dart';

void main() async {
  // runApp(const MyApp());
  // runApp(const PushPop());
  // runApp(const PushNamed());
  runApp(const TinCoderMainView()); // tin_coder_view -- view-library
  // runApp(const DemoWidget());    // folder widget
}
