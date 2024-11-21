import 'package:currency_converter/api_manager.dart';
import 'package:currency_converter/constants.dart';
import 'package:flutter/material.dart';

class ChooseCurrencyPage extends StatefulWidget {
  final String baseCurrency;
  final String? targetCurrencyCode;
  const ChooseCurrencyPage(
      {super.key, required this.baseCurrency, this.targetCurrencyCode});

  @override
  State<ChooseCurrencyPage> createState() => _ChooseCurrencyPageState();
}

class _ChooseCurrencyPageState extends State<ChooseCurrencyPage> {
  late Future<Map<String, dynamic>> exchangeRates;

  @override
  void initState() {
    super.initState();
    exchangeRates = ApiManager().getExchangeRates(widget.baseCurrency);
    // print(widget.baseCurrency);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: FutureBuilder(
          future: exchangeRates,
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(child: CircularProgressIndicator());
            } else if (snapshot.hasError) {
              return Text('Error: ${snapshot.error}');
            }
            return Container(
              color: Colors.black,
              child: ListView.builder(
                  itemCount: currencyList.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Text(currencyList[index].currencyName),
                      subtitle: Text(currencyList[index].currencyCode),
                      // trailing: Text(snapshot
                      //     .data![currencyList[index].currencyCode]
                      //     .toString()),
                      onTap: () async {
                        String currCode =
                            currencyList[index].currencyCode.toString();
                        dynamic conversionRate;
                        if (widget.targetCurrencyCode != null) {
                          conversionRate = await ApiManager()
                              .getConversionRatesPair(
                                  currCode, widget.targetCurrencyCode!);
                        } else {
                          conversionRate =
                              snapshot.data![currencyList[index].currencyCode];
                        }
                        Navigator.pop(context, {
                          "currCode": currCode,
                          "conversion": conversionRate.toString(),
                        });
                      },
                    );
                  }),
            );
          }),
    );
  }
}
