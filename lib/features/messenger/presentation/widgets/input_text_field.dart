import 'package:flutter/material.dart';
import 'package:flutter_project/core/ui/src/ui_manager/ui_manager.dart';

class InputTextField extends StatefulWidget {
  const InputTextField({
    super.key,
  });

  @override
  State<InputTextField> createState() => _InputTextFieldState();
}

class _InputTextFieldState extends State<InputTextField> {
  late OutlineInputBorder borderTextField = OutlineInputBorder(
    borderRadius: BorderRadius.circular(8.0),
    borderSide: BorderSide(
      color: context.appTheme.backgroundTextField,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            height: 0.5,
            color: context.appTheme.line,
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: TextField(
              maxLines: 3,
              minLines: 1,
              decoration: InputDecoration(
                filled: true,
                fillColor: context.appTheme.backgroundTextField,
                border: borderTextField,
                enabledBorder: borderTextField,
                hintText: 'Ask Chat GPT something...',
                contentPadding: const EdgeInsets.only(
                  left: 15,
                  top: 15,
                  bottom: 15,
                ),
                suffixIcon: GestureDetector(
                  onTap: () {
                    print("asd");
                  },
                  child: Container(
                    color: Colors.transparent,
                    child: const Icon(Icons.send),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
