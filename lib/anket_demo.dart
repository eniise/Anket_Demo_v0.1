import 'package:flutter/material.dart';
import 'package:getx/anket_sonuc.dart';
import 'package:polls/polls.dart';

class AnketDemo extends StatefulWidget {
  const AnketDemo({Key? key}) : super(key: key);

  @override
  _AnketDemoState createState() => _AnketDemoState();
}

class _AnketDemoState extends State<AnketDemo> {
  double secenek1 = 1.0;
  double secenek2 = 1.0;
  double secenek3 = 1.0;
  double secenek4 = 1.0;

  double secenek5 = 1.0;
  double secenek6 = 2.0;
  double secenek7 = 3.0;
  double secenek8 = 1.0;

  double secenek9 = 1.0;
  double secenek10 = 1.0;
  double secenek11 = 4.0;
  double secenek12 = 1.0;

  double secenek13 = 1.0;
  double secenek14 = 4.0;
  double secenek15 = 2.0;
  double secenek16 = 3.0;

  Map oykullananlar = {
    //apiden gelcek
    'test@gmail.com': 1,
    'abc@gmail.com': 3,
    'deneme@gmail.com': 2,
    'xyz@gmail.com': 3,
  };

  Map oykullananlar2 = {
    //apiden gelcek
    'test2@gmail.com': 2,
    'abc2@gmail.com': 2,
    'deneme2@gmail.com': 1,
    'xyz2@gmail.com': 3,
  };

  Map oykullananlar3 = {
    //apiden gelcek
    'test3@gmail.com': 3,
    'abc3@gmail.com': 1,
    'deneme3@gmail.com': 4,
    'xyz3@gmail.com': 2,
  };

  Map oykullananlar4 = {
    //apiden gelcek
    'test4@gmail.com': 1,
    'abc4@gmail.com': 5,
    'deneme4@gmail.com': 4,
    'xyz4@gmail.com': 3,
  };

  String kullanici = "aktif_kullanici@gmail.com";
  String yonetici = "yonetici@gmail.com";

  String kullanici2 = "aktif_kullanici2@gmail.com";
  String yonetici2 = "yonetici2@gmail.com";

  String kullanici3 = "aktif_kullanici3@gmail.com";
  String yonetici3 = "yonetici3@gmail.com";

  String kullanici4 = "aktif_kullanici4@gmail.com";
  String yonetici4 = "yonetici4@gmail.com";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Anket Demo"),
        automaticallyImplyLeading: false,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          //mainAxisAlignment: MainAxisAlignment.center,
          //crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Polls(
              children: [
                Polls.options(title: 'Gaziantep', value: secenek1),
                Polls.options(title: 'Ankara', value: secenek2),
                Polls.options(title: '??stanbul', value: secenek3),
                Polls.options(title: 'Di??er', value: secenek4),
              ],
              question: Text(
                "1. Hangi ??ehirde ya??amak istersiniz ?",
                style: TextStyle(fontWeight: FontWeight.normal, fontSize: 15),
              ),
              voteData: oykullananlar,
              currentUser:
                  this.kullanici, //sisteme giren kullanc??n??n kulanc?? ad??
              creatorID:
                  this.yonetici, //anket?? olusturuan kullanc?? apiden al??n??r
              userChoice: oykullananlar[
                  this.kullanici], //??st??ste oy kullanmay?? engellemek i??in
              onVoteBackgroundColor: Colors.cyan,
              leadingBackgroundColor: Colors.blue,
              backgroundColor: Colors.white,
              onVote: (secim) {
                print(secim);
                setState(() {
                  this.oykullananlar[this.kullanici] = secim;
                });

                if (secim == 1) {
                  setState(() {
                    secenek1 += 1;
                  });
                } else if (secim == 2) {
                  setState(() {
                    secenek2 += 1;
                  });
                } else if (secim == 3) {
                  setState(() {
                    secenek3 += 1;
                  });
                } else if (secim == 4) {
                  setState(() {
                    secenek4 += 1;
                  });
                }
              },
            ),

            //2.soru

            Polls(
              children: [
                Polls.options(title: 'Orta????retim', value: secenek5),
                Polls.options(title: 'Lise', value: secenek6),
                Polls.options(title: 'Lisans', value: secenek7),
                Polls.options(title: 'Y??ksek Lisans', value: secenek8),
              ],
              question: Text(
                "2. E??itim durumunuz nedir ?",
                style: TextStyle(fontWeight: FontWeight.normal, fontSize: 15),
              ),
              voteData: oykullananlar2,
              currentUser:
                  this.kullanici2, //sisteme giren kullanc??n??n kulanc?? ad??
              creatorID:
                  this.yonetici2, //anket?? olusturuan kullanc?? apiden al??n??r
              userChoice: oykullananlar2[
                  this.kullanici2], //??st??ste oy kullanmay?? engellemek i??in
              onVoteBackgroundColor: Colors.cyan,
              leadingBackgroundColor: Colors.blue,
              backgroundColor: Colors.white,
              onVote: (secim2) {
                print(secim2);
                setState(() {
                  this.oykullananlar2[this.kullanici2] = secim2;
                });

                if (secim2 == 1) {
                  setState(() {
                    secenek5 += 1;
                  });
                } else if (secim2 == 2) {
                  setState(() {
                    secenek6 += 1;
                  });
                } else if (secim2 == 3) {
                  setState(() {
                    secenek7 += 1;
                  });
                } else if (secim2 == 4) {
                  setState(() {
                    secenek8 += 1;
                  });
                }
              },
            ),

            //3.soru

            Polls(
              children: [
                Polls.options(title: 'PYTHON', value: secenek9),
                Polls.options(title: 'JAVA', value: secenek10),
                Polls.options(title: 'FLUTTER', value: secenek11),
                Polls.options(title: 'C#', value: secenek12),
              ],
              question: Text(
                "3. Hangi programlamay?? kullan??yorsunuz ?",
                style: TextStyle(fontWeight: FontWeight.normal, fontSize: 15),
              ),
              voteData: oykullananlar3,
              currentUser:
                  this.kullanici3, //sisteme giren kullanc??n??n kulanc?? ad??
              creatorID:
                  this.yonetici3, //anket?? olusturuan kullanc?? apiden al??n??r
              userChoice: oykullananlar3[
                  this.kullanici3], //??st??ste oy kullanmay?? engellemek i??in
              onVoteBackgroundColor: Colors.cyan,
              leadingBackgroundColor: Colors.blue,
              backgroundColor: Colors.white,
              onVote: (secim3) {
                print(secim3);
                setState(() {
                  this.oykullananlar3[this.kullanici3] = secim3;
                });

                if (secim3 == 1) {
                  setState(() {
                    secenek9 += 1;
                  });
                } else if (secim3 == 2) {
                  setState(() {
                    secenek10 += 1;
                  });
                } else if (secim3 == 3) {
                  setState(() {
                    secenek11 += 1;
                  });
                } else if (secim3 == 4) {
                  setState(() {
                    secenek12 += 1;
                  });
                }
              },
            ),

            //4.soru

            Polls(
              children: [
                Polls.options(title: '18 ya????ndan k??????????m.', value: secenek13),
                Polls.options(
                    title: '18-25 ya?? aral??????nday??m.', value: secenek14),
                Polls.options(
                    title: '25-30 ya?? aral??????nday??m.', value: secenek15),
                Polls.options(
                    title: '30< ya?? aral??????nday??m.', value: secenek16),
              ],
              question: Text(
                "4. Ya????n??z ka??t??r ?",
                style: TextStyle(fontWeight: FontWeight.normal, fontSize: 15),
              ),
              voteData: oykullananlar4,
              currentUser:
                  this.kullanici4, //sisteme giren kullanc??n??n kulanc?? ad??
              creatorID:
                  this.yonetici4, //anket?? olusturuan kullanc?? apiden al??n??r
              userChoice: oykullananlar4[
                  this.kullanici4], //??st??ste oy kullanmay?? engellemek i??in
              onVoteBackgroundColor: Colors.cyan,
              leadingBackgroundColor: Colors.blue,
              backgroundColor: Colors.white,
              onVote: (secim4) {
                print(secim4);
                setState(() {
                  this.oykullananlar4[this.kullanici4] = secim4;
                });

                if (secim4 == 1) {
                  setState(() {
                    secenek13 += 1;
                  });
                } else if (secim4 == 2) {
                  setState(() {
                    secenek14 += 1;
                  });
                } else if (secim4 == 3) {
                  setState(() {
                    secenek15 += 1;
                  });
                } else if (secim4 == 4) {
                  setState(() {
                    secenek16 += 1;
                  });
                }
              },
            ),
            RaisedButton(
              color: Colors.green,
              highlightColor: Colors.red,
              elevation: 10,
              child: Text(
                "Anket Sonu??lar??n?? G??r",
                style: TextStyle(color: Colors.white),
              ),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => AnketSonuc()));
              },
            ),
          ],
        ),
      ),
    );
  }
}
