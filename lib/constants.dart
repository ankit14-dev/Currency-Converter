import 'package:currency_converter/currency.dart';
import 'package:flutter/material.dart';

const Color behindColor = Color.fromARGB(255, 35, 34, 34);

const List<Currency> currencyList = [
  Currency(
      currencyName: "US Dollar",
      currencyCode: "USD",
      currencyCountry: "United States"),
  Currency(
      currencyName: "Euro",
      currencyCode: "EUR",
      currencyCountry: "European Union"),
  Currency(
      currencyName: "Japanese Yen",
      currencyCode: "JPY",
      currencyCountry: "Japan"),
  Currency(
      currencyName: "British Pound Sterling",
      currencyCode: "GBP",
      currencyCountry: "United Kingdom"),
  Currency(
      currencyName: "Australian Dollar",
      currencyCode: "AUD",
      currencyCountry: "Australia"),
  Currency(
      currencyName: "Canadian Dollar",
      currencyCode: "CAD",
      currencyCountry: "Canada"),
  Currency(
      currencyName: "Chinese Renminbi",
      currencyCode: "CNY",
      currencyCountry: "China"),
  Currency(
      currencyName: "Indian Rupee",
      currencyCode: "INR",
      currencyCountry: "India"),
  Currency(
      currencyName: "Russian Ruble",
      currencyCode: "RUB",
      currencyCountry: "Russia"),
  Currency(
      currencyName: "Brazilian Real",
      currencyCode: "BRL",
      currencyCountry: "Brazil"),
  Currency(
      currencyName: "South Korean Won",
      currencyCode: "KRW",
      currencyCountry: "South Korea"),
  Currency(
      currencyName: "Mexican Peso",
      currencyCode: "MXN",
      currencyCountry: "Mexico"),
  Currency(
      currencyName: "South African Rand",
      currencyCode: "ZAR",
      currencyCountry: "South Africa"),
  Currency(
      currencyName: "Swiss Franc",
      currencyCode: "CHF",
      currencyCountry: "Switzerland"),
  Currency(
      currencyName: "Saudi Riyal",
      currencyCode: "SAR",
      currencyCountry: "Saudi Arabia"),
  Currency(
      currencyName: "Turkish Lira",
      currencyCode: "TRY",
      currencyCountry: "Turkey"),
  Currency(
      currencyName: "Singapore Dollar",
      currencyCode: "SGD",
      currencyCountry: "Singapore"),
  Currency(
      currencyName: "Hong Kong Dollar",
      currencyCode: "HKD",
      currencyCountry: "Hong Kong"),
];

/* List<Currency> currencyList = [
    Currency(
        currencyName: "UAE Dirham",
        currencyCode: "AED",
        currencyCountry: "United Arab Emirates"),
    Currency(
        currencyName: "Afghan Afghani",
        currencyCode: "AFN",
        currencyCountry: "Afghanistan"),
    Currency(
        currencyName: "Albanian Lek",
        currencyCode: "ALL",
        currencyCountry: "Albania"),
    Currency(
        currencyName: "Armenian Dram",
        currencyCode: "AMD",
        currencyCountry: "Armenia"),
    Currency(
        currencyName: "Netherlands Antillian Guilder",
        currencyCode: "ANG",
        currencyCountry: "Netherlands Antilles"),
    Currency(
        currencyName: "Angolan Kwanza",
        currencyCode: "AOA",
        currencyCountry: "Angola"),
    Currency(
        currencyName: "Argentine Peso",
        currencyCode: "ARS",
        currencyCountry: "Argentina"),
    Currency(
        currencyName: "Australian Dollar",
        currencyCode: "AUD",
        currencyCountry: "Australia"),
    Currency(
        currencyName: "Aruban Florin",
        currencyCode: "AWG",
        currencyCountry: "Aruba"),
    Currency(
        currencyName: "Azerbaijani Manat",
        currencyCode: "AZN",
        currencyCountry: "Azerbaijan"),
    Currency(
        currencyName: "Bosnia and Herzegovina Mark",
        currencyCode: "BAM",
        currencyCountry: "Bosnia and Herzegovina"),
    Currency(
        currencyName: "Barbados Dollar",
        currencyCode: "BBD",
        currencyCountry: "Barbados"),
    Currency(
        currencyName: "Bangladeshi Taka",
        currencyCode: "BDT",
        currencyCountry: "Bangladesh"),
    Currency(
        currencyName: "Bulgarian Lev",
        currencyCode: "BGN",
        currencyCountry: "Bulgaria"),
    Currency(
        currencyName: "Bahraini Dinar",
        currencyCode: "BHD",
        currencyCountry: "Bahrain"),
    Currency(
        currencyName: "Burundian Franc",
        currencyCode: "BIF",
        currencyCountry: "Burundi"),
    Currency(
        currencyName: "Bermudian Dollar",
        currencyCode: "BMD",
        currencyCountry: "Bermuda"),
    Currency(
        currencyName: "Brunei Dollar",
        currencyCode: "BND",
        currencyCountry: "Brunei"),
    Currency(
        currencyName: "Bolivian Boliviano",
        currencyCode: "BOB",
        currencyCountry: "Bolivia"),
    Currency(
        currencyName: "Brazilian Real",
        currencyCode: "BRL",
        currencyCountry: "Brazil"),
    Currency(
        currencyName: "Bahamian Dollar",
        currencyCode: "BSD",
        currencyCountry: "Bahamas"),
    Currency(
        currencyName: "Bhutanese Ngultrum",
        currencyCode: "BTN",
        currencyCountry: "Bhutan"),
    Currency(
        currencyName: "Botswana Pula",
        currencyCode: "BWP",
        currencyCountry: "Botswana"),
    Currency(
        currencyName: "Belarusian Ruble",
        currencyCode: "BYN",
        currencyCountry: "Belarus"),
    Currency(
        currencyName: "Belize Dollar",
        currencyCode: "BZD",
        currencyCountry: "Belize"),
    Currency(
        currencyName: "Canadian Dollar",
        currencyCode: "CAD",
        currencyCountry: "Canada"),
    Currency(
        currencyName: "Congolese Franc",
        currencyCode: "CDF",
        currencyCountry: "Democratic Republic of the Congo"),
    Currency(
        currencyName: "Swiss Franc",
        currencyCode: "CHF",
        currencyCountry: "Switzerland"),
    Currency(
        currencyName: "Chilean Peso",
        currencyCode: "CLP",
        currencyCountry: "Chile"),
    Currency(
        currencyName: "Chinese Renminbi",
        currencyCode: "CNY",
        currencyCountry: "China"),
    Currency(
        currencyName: "Colombian Peso",
        currencyCode: "COP",
        currencyCountry: "Colombia"),
    Currency(
        currencyName: "Costa Rican Colon",
        currencyCode: "CRC",
        currencyCountry: "Costa Rica"),
    Currency(
        currencyName: "Cuban Peso",
        currencyCode: "CUP",
        currencyCountry: "Cuba"),
    Currency(
        currencyName: "Cape Verdean Escudo",
        currencyCode: "CVE",
        currencyCountry: "Cape Verde"),
    Currency(
        currencyName: "Czech Koruna",
        currencyCode: "CZK",
        currencyCountry: "Czech Republic"),
    Currency(
        currencyName: "Djiboutian Franc",
        currencyCode: "DJF",
        currencyCountry: "Djibouti"),
    Currency(
        currencyName: "Danish Krone",
        currencyCode: "DKK",
        currencyCountry: "Denmark"),
    Currency(
        currencyName: "Dominican Peso",
        currencyCode: "DOP",
        currencyCountry: "Dominican Republic"),
    Currency(
        currencyName: "Algerian Dinar",
        currencyCode: "DZD",
        currencyCountry: "Algeria"),
    Currency(
        currencyName: "Egyptian Pound",
        currencyCode: "EGP",
        currencyCountry: "Egypt"),
    Currency(
        currencyName: "Eritrean Nakfa",
        currencyCode: "ERN",
        currencyCountry: "Eritrea"),
    Currency(
        currencyName: "Ethiopian Birr",
        currencyCode: "ETB",
        currencyCountry: "Ethiopia"),
    Currency(
        currencyName: "Euro",
        currencyCode: "EUR",
        currencyCountry: "European Union"),
    Currency(
        currencyName: "Fiji Dollar",
        currencyCode: "FJD",
        currencyCountry: "Fiji"),
    Currency(
        currencyName: "Falkland Islands Pound",
        currencyCode: "FKP",
        currencyCountry: "Falkland Islands"),
    Currency(
        currencyName: "Faroese Króna",
        currencyCode: "FOK",
        currencyCountry: "Faroe Islands"),
    Currency(
        currencyName: "Pound Sterling",
        currencyCode: "GBP",
        currencyCountry: "United Kingdom"),
    Currency(
        currencyName: "Georgian Lari",
        currencyCode: "GEL",
        currencyCountry: "Georgia"),
    Currency(
        currencyName: "Guernsey Pound",
        currencyCode: "GGP",
        currencyCountry: "Guernsey"),
    Currency(
        currencyName: "Ghanaian Cedi",
        currencyCode: "GHS",
        currencyCountry: "Ghana"),
    Currency(
        currencyName: "Gibraltar Pound",
        currencyCode: "GIP",
        currencyCountry: "Gibraltar"),
    Currency(
        currencyName: "Gambian Dalasi",
        currencyCode: "GMD",
        currencyCountry: "The Gambia"),
    Currency(
        currencyName: "Guinean Franc",
        currencyCode: "GNF",
        currencyCountry: "Guinea"),
    Currency(
        currencyName: "Guatemalan Quetzal",
        currencyCode: "GTQ",
        currencyCountry: "Guatemala"),
    Currency(
        currencyName: "Guyanese Dollar",
        currencyCode: "GYD",
        currencyCountry: "Guyana"),
    Currency(
        currencyName: "Hong Kong Dollar",
        currencyCode: "HKD",
        currencyCountry: "Hong Kong"),
    Currency(
        currencyName: "Honduran Lempira",
        currencyCode: "HNL",
        currencyCountry: "Honduras"),
    Currency(
        currencyName: "Croatian Kuna",
        currencyCode: "HRK",
        currencyCountry: "Croatia"),
    Currency(
        currencyName: "Haitian Gourde",
        currencyCode: "HTG",
        currencyCountry: "Haiti"),
    Currency(
        currencyName: "Hungarian Forint",
        currencyCode: "HUF",
        currencyCountry: "Hungary"),
    Currency(
        currencyName: "Indonesian Rupiah",
        currencyCode: "IDR",
        currencyCountry: "Indonesia"),
    Currency(
        currencyName: "Israeli New Shekel",
        currencyCode: "ILS",
        currencyCountry: "Israel"),
    Currency(
        currencyName: "Manx Pound",
        currencyCode: "IMP",
        currencyCountry: "Isle of Man"),
    Currency(
        currencyName: "Indian Rupee",
        currencyCode: "INR",
        currencyCountry: "India"),
    Currency(
        currencyName: "Iraqi Dinar",
        currencyCode: "IQD",
        currencyCountry: "Iraq"),
    Currency(
        currencyName: "Iranian Rial",
        currencyCode: "IRR",
        currencyCountry: "Iran"),
    Currency(
        currencyName: "Icelandic Króna",
        currencyCode: "ISK",
        currencyCountry: "Iceland"),
    Currency(
        currencyName: "Jersey Pound",
        currencyCode: "JEP",
        currencyCountry: "Jersey"),
    Currency(
        currencyName: "Jamaican Dollar",
        currencyCode: "JMD",
        currencyCountry: "Jamaica"),
    Currency(
        currencyName: "Jordanian Dinar",
        currencyCode: "JOD",
        currencyCountry: "Jordan"),
    Currency(
        currencyName: "Japanese Yen",
        currencyCode: "JPY",
        currencyCountry: "Japan"),
    Currency(
        currencyName: "Kenyan Shilling",
        currencyCode: "KES",
        currencyCountry: "Kenya"),
    Currency(
        currencyName: "Kyrgyzstani Som",
        currencyCode: "KGS",
        currencyCountry: "Kyrgyzstan"),
    Currency(
        currencyName: "Cambodian Riel",
        currencyCode: "KHR",
        currencyCountry: "Cambodia"),
    Currency(
        currencyName: "Kiribati Dollar",
        currencyCode: "KID",
        currencyCountry: "Kiribati"),
    Currency(
        currencyName: "Comorian Franc",
        currencyCode: "KMF",
        currencyCountry: "Comoros"),
    Currency(
        currencyName: "South Korean Won",
        currencyCode: "KRW",
        currencyCountry: "South Korea"),
    Currency(
        currencyName: "Kuwaiti Dinar",
        currencyCode: "KWD",
        currencyCountry: "Kuwait"),
    Currency(
        currencyName: "Cayman Islands Dollar",
        currencyCode: "KYD",
        currencyCountry: "Cayman Islands"),
    Currency(
        currencyName: "Kazakhstani Tenge",
        currencyCode: "KZT",
        currencyCountry: "Kazakhstan"),
    Currency(
        currencyName: "Lao Kip", currencyCode: "LAK", currencyCountry: "Laos"),
    Currency(
        currencyName: "Lebanese Pound",
        currencyCode: "LBP",
        currencyCountry: "Lebanon"),
    Currency(
        currencyName: "Sri Lankan Rupee",
        currencyCode: "LKR",
        currencyCountry: "Sri Lanka"),
    Currency(
        currencyName: "Liberian Dollar",
        currencyCode: "LRD",
        currencyCountry: "Liberia"),
    Currency(
        currencyName: "Lesotho Loti",
        currencyCode: "LSL",
        currencyCountry: "Lesotho"),
    Currency(
        currencyName: "Libyan Dinar",
        currencyCode: "LYD",
        currencyCountry: "Libya"),
    Currency(
        currencyName: "Moroccan Dirham",
        currencyCode: "MAD",
        currencyCountry: "Morocco"),
    Currency(
        currencyName: "Moldovan Leu",
        currencyCode: "MDL",
        currencyCountry: "Moldova"),
    Currency(
        currencyName: "Malagasy Ariary",
        currencyCode: "MGA",
        currencyCountry: "Madagascar"),
    Currency(
        currencyName: "Macedonian Denar",
        currencyCode: "MKD",
        currencyCountry: "North Macedonia"),
    Currency(
        currencyName: "Myanmar Kyat",
        currencyCode: "MMK",
        currencyCountry: "Myanmar"),
    Currency(
        currencyName: "Mongolian Tögrög",
        currencyCode: "MNT",
        currencyCountry: "Mongolia"),
    Currency(
        currencyName: "Macanese Pataca",
        currencyCode: "MOP",
        currencyCountry: "Macau"),
    Currency(
        currencyName: "Mauritanian Ouguiya",
        currencyCode: "MRU",
        currencyCountry: "Mauritania"),
    Currency(
        currencyName: "Mauritian Rupee",
        currencyCode: "MUR",
        currencyCountry: "Mauritius"),
    Currency(
        currencyName: "Maldivian Rufiyaa",
        currencyCode: "MVR",
        currencyCountry: "Maldives"),
    Currency(
        currencyName: "Malawian Kwacha",
        currencyCode: "MWK",
        currencyCountry: "Malawi"),
    Currency(
        currencyName: "Mexican Peso",
        currencyCode: "MXN",
        currencyCountry: "Mexico"),
    Currency(
        currencyName: "Malaysian Ringgit",
        currencyCode: "MYR",
        currencyCountry: "Malaysia"),
    Currency(
        currencyName: "Mozambican Metical",
        currencyCode: "MZN",
        currencyCountry: "Mozambique"),
    Currency(
        currencyName: "Namibian Dollar",
        currencyCode: "NAD",
        currencyCountry: "Namibia"),
    Currency(
        currencyName: "Nigerian Naira",
        currencyCode: "NGN",
        currencyCountry: "Nigeria"),
    Currency(
        currencyName: "Nicaraguan Córdoba",
        currencyCode: "NIO",
        currencyCountry: "Nicaragua"),
    Currency(
        currencyName: "Norwegian Krone",
        currencyCode: "NOK",
        currencyCountry: "Norway"),
    Currency(
        currencyName: "Nepalese Rupee",
        currencyCode: "NPR",
        currencyCountry: "Nepal"),
    Currency(
        currencyName: "New Zealand Dollar",
        currencyCode: "NZD",
        currencyCountry: "New Zealand"),
    Currency(
        currencyName: "Omani Rial",
        currencyCode: "OMR",
        currencyCountry: "Oman"),
    Currency(
        currencyName: "Panamanian Balboa",
        currencyCode: "PAB",
        currencyCountry: "Panama"),
    Currency(
        currencyName: "Peruvian Sol",
        currencyCode: "PEN",
        currencyCountry: "Peru"),
    Currency(
        currencyName: "Papua New Guinean Kina",
        currencyCode: "PGK",
        currencyCountry: "Papua New Guinea"),
    Currency(
        currencyName: "Philippine Peso",
        currencyCode: "PHP",
        currencyCountry: "Philippines"),
    Currency(
        currencyName: "Pakistani Rupee",
        currencyCode: "PKR",
        currencyCountry: "Pakistan"),
    Currency(
        currencyName: "Polish Złoty",
        currencyCode: "PLN",
        currencyCountry: "Poland"),
    Currency(
        currencyName: "Paraguayan Guaraní",
        currencyCode: "PYG",
        currencyCountry: "Paraguay"),
    Currency(
        currencyName: "Qatari Riyal",
        currencyCode: "QAR",
        currencyCountry: "Qatar"),
    Currency(
        currencyName: "Romanian Leu",
        currencyCode: "RON",
        currencyCountry: "Romania"),
    Currency(
        currencyName: "Serbian Dinar",
        currencyCode: "RSD",
        currencyCountry: "Serbia"),
    Currency(
        currencyName: "Russian Ruble",
        currencyCode: "RUB",
        currencyCountry: "Russia"),
    Currency(
        currencyName: "Rwandan Franc",
        currencyCode: "RWF",
        currencyCountry: "Rwanda"),
    Currency(
        currencyName: "Saudi Riyal",
        currencyCode: "SAR",
        currencyCountry: "Saudi Arabia"),
    Currency(
        currencyName: "Solomon Islands Dollar",
        currencyCode: "SBD",
        currencyCountry: "Solomon Islands"),
    Currency(
        currencyName: "Seychellois Rupee",
        currencyCode: "SCR",
        currencyCountry: "Seychelles"),
    Currency(
        currencyName: "Sudanese Pound",
        currencyCode: "SDG",
        currencyCountry: "Sudan"),
    Currency(
        currencyName: "Swedish Krona",
        currencyCode: "SEK",
        currencyCountry: "Sweden"),
    Currency(
        currencyName: "Singapore Dollar",
        currencyCode: "SGD",
        currencyCountry: "Singapore"),
    Currency(
        currencyName: "Saint Helena Pound",
        currencyCode: "SHP",
        currencyCountry: "Saint Helena"),
    Currency(
        currencyName: "Sierra Leonean Leone",
        currencyCode: "SLE",
        currencyCountry: "Sierra Leone"),
    Currency(
        currencyName: "Somali Shilling",
        currencyCode: "SOS",
        currencyCountry: "Somalia"),
    Currency(
        currencyName: "Surinamese Dollar",
        currencyCode: "SRD",
        currencyCountry: "Suriname"),
    Currency(
        currencyName: "South Sudanese Pound",
        currencyCode: "SSP",
        currencyCountry: "South Sudan"),
    Currency(
        currencyName: "São Tomé and Príncipe Dobra",
        currencyCode: "STN",
        currencyCountry: "São Tomé and Príncipe"),
    Currency(
        currencyName: "Salvadoran Colón",
        currencyCode: "SVC",
        currencyCountry: "El Salvador"),
    Currency(
        currencyName: "Syrian Pound",
        currencyCode: "SYP",
        currencyCountry: "Syria"),
    Currency(
        currencyName: "Eswatini Lilangeni",
        currencyCode: "SZL",
        currencyCountry: "Eswatini"),
    Currency(
        currencyName: "Thai Baht",
        currencyCode: "THB",
        currencyCountry: "Thailand"),
    Currency(
        currencyName: "Tajikistani Somoni",
        currencyCode: "TJS",
        currencyCountry: "Tajikistan"),
    Currency(
        currencyName: "Turkmenistani Manat",
        currencyCode: "TMT",
        currencyCountry: "Turkmenistan"),
    Currency(
        currencyName: "Tunisian Dinar",
        currencyCode: "TND",
        currencyCountry: "Tunisia"),
    Currency(
        currencyName: "Tongan Paʻanga",
        currencyCode: "TOP",
        currencyCountry: "Tonga"),
    Currency(
        currencyName: "Turkish Lira",
        currencyCode: "TRY",
        currencyCountry: "Turkey"),
    Currency(
        currencyName: "Trinidad and Tobago Dollar",
        currencyCode: "TTD",
        currencyCountry: "Trinidad and Tobago"),
    Currency(
        currencyName: "Tanzanian Shilling",
        currencyCode: "TZS",
        currencyCountry: "Tanzania"),
    Currency(
        currencyName: "Ukrainian Hryvnia",
        currencyCode: "UAH",
        currencyCountry: "Ukraine"),
    Currency(
        currencyName: "Ugandan Shilling",
        currencyCode: "UGX",
        currencyCountry: "Uganda"),
    Currency(
        currencyName: "US Dollar",
        currencyCode: "USD",
        currencyCountry: "United States"),
    Currency(
        currencyName: "Uruguayan Peso",
        currencyCode: "UYU",
        currencyCountry: "Uruguay"),
    Currency(
        currencyName: "Uzbekistani Soʻm",
        currencyCode: "UZS",
        currencyCountry: "Uzbekistan"),
    Currency(
        currencyName: "Venezuelan Bolívar",
        currencyCode: "VES",
        currencyCountry: "Venezuela"),
    Currency(
        currencyName: "Vietnamese Đồng",
        currencyCode: "VND",
        currencyCountry: "Vietnam"),
    Currency(
        currencyName: "Vanuatu Vatu",
        currencyCode: "VUV",
        currencyCountry: "Vanuatu"),
    Currency(
        currencyName: "Samoan Tālā",
        currencyCode: "WST",
        currencyCountry: "Samoa"),
    Currency(
        currencyName: "Central African CFA Franc",
        currencyCode: "XAF",
        currencyCountry: "Central Africa"),
    Currency(
        currencyName: "East Caribbean Dollar",
        currencyCode: "XCD",
        currencyCountry: "East Caribbean"),
    Currency(
        currencyName: "West African CFA Franc",
        currencyCode: "XOF",
        currencyCountry: "West Africa"),
    Currency(
        currencyName: "CFP Franc",
        currencyCode: "XPF",
        currencyCountry: "French Polynesia"),
    Currency(
        currencyName: "Yemeni Rial",
        currencyCode: "YER",
        currencyCountry: "Yemen"),
    Currency(
        currencyName: "South African Rand",
        currencyCode: "ZAR",
        currencyCountry: "South Africa"),
    Currency(
        currencyName: "Zambian Kwacha",
        currencyCode: "ZMW",
        currencyCountry: "Zambia"),
    Currency(
        currencyName: "Zimbabwean Dollar",
        currencyCode: "ZWL",
        currencyCountry: "Zimbabwe"),
  ]; */