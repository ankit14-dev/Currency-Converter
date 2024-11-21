import 'package:currency_converter/choose_currency_page.dart';
import 'package:currency_converter/components/currency_container.dart';
import 'package:currency_converter/components/keyboard.dart';
import 'package:flutter/material.dart';

class ConvertTab extends StatefulWidget {
  const ConvertTab({super.key});

  @override
  State<ConvertTab> createState() => _ConvertTabState();
}

class _ConvertTabState extends State<ConvertTab> {
  final entryController = TextEditingController();
  final convertedController = TextEditingController();
  Map<String, dynamic>? exchangeRate;
  String baseCurrencyCode = 'INR';
  String targetCurrencyCode = 'INR';
  double conversionRate = 1.0;
  @override
  void initState() {
    super.initState();
    entryController.addListener(changeValueOfConvertedTextField);
  }

  @override
  void dispose() {
    entryController.removeListener(changeValueOfConvertedTextField);
    super.dispose();
  }

  void changeValueOfConvertedTextField() {
    setState(() {
      final text = entryController.text;
      if (text.isEmpty) {
        convertedController.text = '';
        return;
      }
      if (text.contains('.')) {
        final ans = double.parse(text) * conversionRate;
        String formatted = ans.toString();
        formatted = formatted.replaceAll(RegExp(r'0*$'), '');
        formatted = formatted.replaceAll(RegExp(r'\.$'), '');
        convertedController.text = formatted;
      } else {
        final ans = int.parse(text) * conversionRate;
        String formatted = ans.toString();
        formatted = formatted.replaceAll(RegExp(r'0*$'), '');
        formatted = formatted.replaceAll(RegExp(r'\.$'), '');
        convertedController.text = formatted;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                child: Column(
                  children: [
                    CurrencyContainer(
                      controller: entryController,
                      convertedController: convertedController,
                      currCode: baseCurrencyCode,
                      textColor: Colors.amber,
                      onChange: () async {
                        final result =
                            await Navigator.push<Map<String, dynamic>>(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => ChooseCurrencyPage(
                                          baseCurrency: baseCurrencyCode,
                                          targetCurrencyCode:
                                              targetCurrencyCode,
                                        )));
                        setState(() {
                          if (result.toString() != 'null') {
                            baseCurrencyCode = result!['currCode'].toString();
                            conversionRate =
                                double.parse(result['conversion'].toString());
                            changeValueOfConvertedTextField();
                          }
                        });
                      },
                    ),
                    CurrencyContainer(
                      controller: convertedController,
                      currCode: targetCurrencyCode,
                      onChange: () async {
                        final result =
                            await Navigator.push<Map<String, dynamic>>(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => ChooseCurrencyPage(
                                          baseCurrency: baseCurrencyCode,
                                        )));
                        setState(() {
                          if (result != null) {
                            targetCurrencyCode = result['currCode'].toString();
                            conversionRate =
                                double.parse(result['conversion'].toString());
                            changeValueOfConvertedTextField();
                          }
                        });
                      },
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 60,
                width: 60,
                child: InkWell(
                  onTap: () {
                    //swap the text of two controllers
                    String temp = entryController.text;
                    entryController.text = convertedController.text;
                    convertedController.text = temp;
                    changeValueOfConvertedTextField();
                  },
                  child: const Icon(
                    Icons.swap_vert,
                    size: 50,
                    color: Colors.white,
                  ),
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10, bottom: 10, top: 10),
            child: Keyboard(
              entryController: entryController,
            ),
          ),
        ],
      ),
    );
  }
}
