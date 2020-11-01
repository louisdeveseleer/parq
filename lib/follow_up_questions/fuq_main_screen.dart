import 'package:flutter/material.dart';
import 'package:parq/common_widgets/basic_screen.dart';
import 'package:parq/follow_up_questions/fuq_list.dart';
import 'package:parq/follow_up_questions/fuq_section_content.dart';
import 'package:provider/provider.dart';

class FUQMainScreen extends StatelessWidget {
  static const id = 'fuq_main_screen';

  @override
  Widget build(BuildContext context) {
    return BasicScreen(
      child: Padding(
        padding: const EdgeInsets.only(top: 16.0, right: 16.0, left: 16.0),
        child: ChangeNotifierProvider<FUQList>(
          create: (context) => FUQList(),
          child: FUQSectionContent(),
        ),
      ),
    );
  }
}
