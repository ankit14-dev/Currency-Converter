import 'package:currency_converter/api_manager.dart';
import 'package:currency_converter/constants.dart';
import 'package:flutter/material.dart';

class ExchangeTab extends StatefulWidget {
  const ExchangeTab({super.key});

  @override
  State<ExchangeTab> createState() => _ExchangeTabState();
}

class _ExchangeTabState extends State<ExchangeTab> {
  late Future<Map<String, dynamic>> exchangeRates;
  String _dropdownValue = "INR";
  List<String> items = currencyList.map((e) => e.currencyCode).toList();
  @override
  void initState() {
    super.initState();
    exchangeRates = ApiManager().getExchangeRates("INR");
  }
/* 
  void _fetchExchangeRates() {
    setState(() {
      exchangeRate = ApiManager().exchangeRates;
    });
  }

  String getCountryexchangeRate(Currency currency) {
    if (exchangeRate == null) {
      return "Loading...";
    }
    return exchangeRate![currency.currencyCode]?.toString() ?? "N/A";
  } */

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: Text("Select a currency from below dropdown: ",
              style: TextStyle(
                  color: Color.fromARGB(255, 222, 142, 142), fontSize: 25)),
        ),
        Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: double.infinity,
              height: 50,
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(8.0),
                border: Border.all(color: Colors.white),
              ),
              child: DropdownButton(
                dropdownColor: Colors.black,
                items: items.map((String item) {
                  return DropdownMenuItem(
                    value: item,
                    child:
                        Text(item, style: const TextStyle(color: Colors.white)),
                  );
                }).toList(),
                onChanged: (String? newValue) async {
                  setState(() {
                    _dropdownValue = newValue!;
                    exchangeRates =
                        ApiManager().getExchangeRates(_dropdownValue);
                  });
                },
                value: _dropdownValue,
                borderRadius: BorderRadius.circular(8.0),
                icon: const Icon(Icons.arrow_drop_down, color: Colors.white),
                iconSize: 40,
                isExpanded: true,
                style: const TextStyle(color: Colors.white, fontSize: 20),
                underline: Container(),
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        FutureBuilder<Map<String, dynamic>>(
            future: exchangeRates,
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return const Center(child: CircularProgressIndicator());
              } else if (snapshot.hasError) {
                return Text('Error: ${snapshot.error}');
              }
              return Expanded(
                child: ListView.builder(
                  itemCount: currencyList.length,
                  itemBuilder: (context, index) {
                    return Container(
                      height: 80,
                      padding: const EdgeInsets.only(
                          top: 10, left: 20, right: 20, bottom: 10),
                      color: Colors.black,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    currencyList[index].currencyName,
                                    style: const TextStyle(color: Colors.white),
                                  ),
                                  Text(
                                    currencyList[index].currencyCode,
                                    style: const TextStyle(color: Colors.white),
                                  ),
                                ],
                              ),
                              Text(
                                snapshot.data![currencyList[index].currencyCode]
                                    .toString(),
                                style: const TextStyle(color: Colors.white),
                              ),
                            ],
                          ),
                          const Divider(
                            color: Colors.white,
                          ),
                        ],
                      ),
                    );
                  },
                ),
              );
            }),
      ],
    );
  }
}
