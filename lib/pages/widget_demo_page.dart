import 'package:first_app/widgets/buttons/elevated_button_no_shadow.dart';
import 'package:first_app/widgets/buttons/elevated_button_with_shadow.dart';
import 'package:first_app/widgets/buttons/gray_text_button.dart';
import 'package:first_app/widgets/buttons/simple_text_button.dart';
import 'package:first_app/widgets/inputs/text_field.dart';
import 'package:flutter/material.dart';

class WidgetDemoPage extends StatefulWidget {
  const WidgetDemoPage({super.key});

  @override
  State<WidgetDemoPage> createState() => _WidgetDemoPageState();
}

class _WidgetDemoPageState extends State<WidgetDemoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Widget Demo'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SimpleTextButton(text: 'Button'),
            const SizedBox(height: 20),
            ElevatedButtonWithShadow(
              text: 'Button',
              onPressed: () {},
            ),
            const SizedBox(height: 20),
            const GreyTextButton(text: 'Button'),
            const SizedBox(height: 20),
            ElevatedButtonNoShadow(
              text: 'Button',
              onPressed: () {},
            ),
            const SizedBox(height: 20),
            const CustomTextField(
              placeholder: "Placeholder",
            ),
          ],
        ),
      ),
    );
  }
}
