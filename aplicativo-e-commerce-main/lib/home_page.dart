import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ShoesUnive',
            style: GoogleFonts.dmSans(fontWeight: FontWeight.bold)),
        centerTitle: false,
        actions: const [
          Icon(Icons.search),
          Icon(Icons.notifications),
          Icon(Icons.shopping_cart)
        ],
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 48),

            //frase de efeito

            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.0),
              child: Text(
                "O mundo dos tênis, do seu jeito!",
                style: GoogleFonts.dmSans(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            //categorias do site
            SizedBox(
              height: 50,
              child: ListView(scrollDirection: Axis.horizontal, children: [
                Container(
                  margin: const EdgeInsets.all(8),
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.circular(40)),
                  child: Text('Todos',
                      style: GoogleFonts.dmSans(fontWeight: FontWeight.bold)),
                ),
                Container(
                  margin: const EdgeInsets.all(8),
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(40)),
                  child: Text('Homens',
                      style: GoogleFonts.dmSans(
                          color: Colors.white, fontWeight: FontWeight.bold)),
                ),
                Container(
                  margin: const EdgeInsets.all(8),
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.circular(40)),
                  child: Text('Mulheres',
                      style: GoogleFonts.dmSans(
                          color: Colors.black, fontWeight: FontWeight.bold)),
                ),
              ]),
            ),

            //tenis de mostruário
            //card 1
            SizedBox(
              height: 200,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Container(
                      margin: const EdgeInsets.all(8),
                      height: 400,
                      width: 200,
                      child: Card(
                        color: Colors.white,
                        elevation: 4,
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Image.asset('assets/1nikeair.png',
                                  width: 150, height: 150),
                            ),
                            Text('Tênis Nike Air Max Alpha Trainer 5 Masculino', textAlign: TextAlign.center,
                                style: GoogleFonts.dmSans(
                                    fontSize: 16, fontWeight: FontWeight.bold)),
                            ListTile(
                              leading: const Icon(Icons.attach_money,
                                  color: Colors.black),
                              title: Text('399,99',
                                  style: GoogleFonts.dmSans(
                                      fontWeight: FontWeight.w300)),
                            )
                          ],
                        ),
                      )),

                  // card 2

                  Container(
                    margin: EdgeInsets.all(8),
                    height: 400,
                    width: 200,
                    child: Card(
                      color: Colors.white,
                      elevation: 4,
                      child: Column(children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.asset('assets/2NikeCourt.png',
                              width: 150, height: 150),
                        ),
                        Text('Tênis Nike Court \Vision Low Feminino', textAlign: TextAlign.center,
                            style: GoogleFonts.dmSans(
                                fontSize: 16, fontWeight: FontWeight.bold)),
                        ListTile(
                          leading: const Icon(Icons.attach_money,
                              color: Colors.black),
                          title: Text('609,70',
                              style: GoogleFonts.dmSans(
                                  fontWeight: FontWeight.w300)),
                        )
                      ]),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
