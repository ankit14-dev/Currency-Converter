import 'package:currency_converter/components/keyboard_keys.dart';
import 'package:flutter/material.dart';

class Keyboard extends StatelessWidget {
  final TextEditingController entryController;
  const Keyboard({super.key, required this.entryController});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            KeyboardKeys(
              keyLabel: "7",
              entryController: entryController,
            ),
            KeyboardKeys(
              keyLabel: '8',
              entryController: entryController,
            ),
            KeyboardKeys(
              keyLabel: '9',
              entryController: entryController,
            ),
            KeyboardKeys(
              keyLabel: "AC",
              entryController: entryController,
            )
          ],
        ),
        Row(
          children: [
            KeyboardKeys(
              keyLabel: '4',
              entryController: entryController,
            ),
            KeyboardKeys(
              keyLabel: '5',
              entryController: entryController,
            ),
            KeyboardKeys(
              keyLabel: '6',
              entryController: entryController,
            ),
            KeyboardKeys(
              keyLabel: "",
              icon: const Icon(
                Icons.backspace_outlined,
                color: Colors.red,
              ),
              entryController: entryController,
            )
          ],
        ),
        Row(
          children: [
            KeyboardKeys(
              keyLabel: '1',
              entryController: entryController,
            ),
            KeyboardKeys(
              keyLabel: '2',
              entryController: entryController,
            ),
            KeyboardKeys(
              keyLabel: '3',
              entryController: entryController,
            )
          ],
        ),
        Row(
          children: [
            KeyboardKeys(
              keyLabel: '00',
              entryController: entryController,
            ),
            KeyboardKeys(
              keyLabel: '0',
              entryController: entryController,
            ),
            KeyboardKeys(
              keyLabel: '.',
              entryController: entryController,
            ),
          ],
        )
      ],
    );
  }
}
