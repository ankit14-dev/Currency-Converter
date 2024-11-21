import 'package:currency_converter/constants.dart';
import 'package:flutter/material.dart';

class KeyboardKeys extends StatelessWidget {
  final String keyLabel;
  final Icon? icon;
  final TextEditingController entryController;
  const KeyboardKeys(
      {super.key,
      required this.keyLabel,
      this.icon,
      required this.entryController});
  final double diam = 70;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: () {
          if (keyLabel == "AC") {
            entryController.clear();
          } else if (keyLabel != "") {
            entryController.text += keyLabel;
          } else {
            //backspace key
            final value = entryController.text;
            if (value.isNotEmpty) {
              entryController.text = value.substring(0, value.length - 1);
            }
          }
        },
        borderRadius: BorderRadius.circular(100),
        child: Container(
          height: diam,
          width: diam,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: behindColor,
            border: Border.all(color: behindColor),
            // borderRadius: BorderRadius.circular(100),
          ),
          child: Center(
            child: icon ??
                Text(
                  keyLabel,
                  style: const TextStyle(color: Colors.white, fontSize: 25),
                ),
          ),
        ),
      ),
    );
  }
}
