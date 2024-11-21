import 'package:flutter/material.dart';

class CurrencyContainer extends StatelessWidget {
  final TextEditingController controller;
  final TextEditingController? convertedController;
  final String currCode;
  final GestureTapCallback? onChange;
  final Color? textColor;

  const CurrencyContainer({
    super.key,
    required this.controller,
    this.convertedController,
    required this.currCode,
    required this.onChange,
    this.textColor,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Container(
        height: 102,
        width: 250,
        decoration: const BoxDecoration(
            color: Color.fromARGB(255, 35, 34, 34),
            borderRadius: BorderRadius.all(Radius.circular(15))),
        child: Container(
          margin: const EdgeInsets.all(14),
          child: Column(
            children: [
              InkWell(
                onTap: onChange,
                child: Row(
                  children: [
                    Text(
                      currCode,
                      style: const TextStyle(color: Colors.amber),
                    ),
                    const Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.white,
                      size: 15,
                    ),
                  ],
                ),
              ),
              TextField(
                controller: controller,
                showCursor: false,
                readOnly: true,
                style: TextStyle(
                    color: (textColor != null) ? textColor : Colors.white,
                    fontSize: 24),
                decoration: const InputDecoration(
                    border: InputBorder.none,
                    focusedBorder: InputBorder.none,
                    enabledBorder: InputBorder.none,
                    errorBorder: InputBorder.none,
                    disabledBorder: InputBorder.none),
              )
            ],
          ),
        ),
      ),
    );
  }
}
