import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  final String title = 'POSONG';
  final String location = 'Kabupaten Temanggung, Jawa Tengah';
  final String description =
      '''Kawasan wisata Posong merupakan kawasan wisata yang dihapit oleh kedua gunung, yaitu Sindoro dan Sumbing, Tepatnya berada di ketinggian 1.823 meter di atas permukaan laut. Gak heran kalau udara di wisata Posong sangat sejuk. Di Posong, kamu bisa melihat pemandangan Gunung Sindoro dan Sumbing, apalagi kalau cuaca sedang cerah. Nah, buat kamu yang berencana liburan ke sini. ''';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Objek Wisata'),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                margin: EdgeInsets.all(2),
              ),
              Image.asset(
                'images/posong.jpg',
                height: 250,
                width: 412,
                fit: BoxFit.fill,
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: const [
                        Icon(Icons.calendar_today),
                        Text('Open Everyday'),
                      ],
                    ),
                    Column(
                      children: const [
                        Icon(Icons.access_time),
                        Text('24 Jam'),
                      ],
                    ),
                    Column(
                      children: const [
                        Icon(Icons.monetization_on),
                        Text('Rp20.000'),
                      ],
                    )
                  ],
                ),
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        Container(
                          margin: EdgeInsets.all(5),
                        ),
                        Text(
                          this.title,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 20,
                              fontFamily: 'Staatliches',
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          this.location,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Color.fromARGB(255, 149, 161, 171),
                              fontSize: 15,
                              fontFamily: 'Staatliches'),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(15),
                child: Text(
                  this.description,
                  style: TextStyle(fontSize: 14, fontFamily: 'Oxygen'),
                  textAlign: TextAlign.justify,
                  softWrap: true,
                ),
              ),
              SizedBox(
                height: 150,
                child: ListView(scrollDirection: Axis.horizontal, children: [
                  Padding(
                    padding: EdgeInsets.all(4),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.network(
                          'https://th.bing.com/th/id/OIP.pCOJPUQv-FUReV1yHEhgfQHaDw?pid=ImgDet&rs=1'),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(4),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.network(
                          'https://suara-pembaruan.com/wp-content/uploads/2021/04/Eksotisme-Wisata-Alam-Posong-Keindahan-Di-Antara-Gunung-Sindoro-Sumbing.jpg'),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(4),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.network(
                          'https://indonesiatraveler.id/wp-content/uploads/2020/05/Wisata-Alam-posong3-photo-by-indoflashlight-768x576.jpg'),
                    ),
                  )
                ]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
