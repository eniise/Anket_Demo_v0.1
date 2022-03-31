


import 'package:flutter/material.dart';

class AnketSonuc extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Anket Sonuç Sayfası",
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: Container(
          child: Row(
            //mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "\n 1. Anket Sorusu için oranlar: \n"
                  "Gaziantep: 2 \n"
                  "İstanbul: 2 \n"
                  "Ankara: 5 \n"
                  "Diğer: 12 \n\n"
                "2. Anket Sorusu için oranlar: \n"
                    "Ortaöğretim: 2 \n"
                    "Lise: 3 \n"
                    "Lisans: 8 \n"
                    "Yüksek Lisans: 6 \n\n"
                "3. Anket Sorusu için oranlar: \n"
                    "PYTHON: 4 \n"
                    "JAVA: 9 \n"
                    "FLUTTER: 10 \n"
                    "C#: 5 \n\n"
                "4. Anket Sorusu için oranlar: \n"
                    "18 yaşından küçük olanlar: 2 \n"
                    "18-25 yaş aralığında olanlar: 12 \n"
                    "25-30 yaş aralığında olanlar: 14 \n"
                    "30< yaş aralığında olanlar: 9 \n\n",
                style: TextStyle(color: Colors.black, fontSize: 19),
              ),
            ],
          ),
        ));
  }
}