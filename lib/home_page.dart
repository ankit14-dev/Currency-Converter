import 'package:currency_converter/tab_item.dart';
import 'package:currency_converter/tabs/convert_tab.dart';
import 'package:currency_converter/tabs/exchange_tab.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.black,
            elevation: 0,
            title: const Text(
              'Currency Converter',
              style: TextStyle(color: Colors.white),
            ),
            centerTitle: true,
            bottom: PreferredSize(
                preferredSize: const Size.fromHeight(40),
                child: ClipRRect(
                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                  child: Container(
                    height: 40,
                    margin: const EdgeInsets.symmetric(horizontal: 20),
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(Radius.circular(10)),
                      color: Colors.green.shade100,
                    ),
                    child: const TabBar(
                        indicatorSize: TabBarIndicatorSize.tab,
                        dividerColor: Colors.transparent,
                        indicator: BoxDecoration(
                            color: Colors.black,
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                        labelColor: Colors.white,
                        unselectedLabelColor: Colors.black54,
                        tabs: [
                          TabItem(title: "Convert"),
                          TabItem(title: 'Exchange Rates')
                        ]),
                  ),
                )),
          ),
          body: const TabBarView(children: [
            ConvertTab(),
            ExchangeTab(),
          ]),
        ));
  }
}
