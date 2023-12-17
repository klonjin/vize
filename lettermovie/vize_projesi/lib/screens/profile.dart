import 'package:flutter/material.dart';

class ProfilPage extends StatelessWidget {
  const ProfilPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profil Sayfası'),
        backgroundColor: Colors.blue, // AppBar'ın arka plan rengi
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Kullanıcı Adı: Deniz Çalışkan',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            ProfilBilgileri(
              baslik: 'Email',
              icerik: 'eliothenderson@gmail.com',
            ),
            ProfilBilgileri(
              baslik: 'Şifre',
              icerik: '********', // Güvenlik amacıyla gerçek şifreyi göstermek önerilmez
            ),
            ProfilBilgileri(
              baslik: 'Ad Soyad',
              icerik: 'klojin',
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Menu sekmesine geri dön
                Navigator.pop(context);
              },
              style: ElevatedButton.styleFrom(
                primary: Colors.blue, // Butonun arka plan rengi
              ),
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Text(
                  'Değişiklikleri Kaydet',
                  style: TextStyle(fontSize: 16),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ProfilBilgileri extends StatelessWidget {
  final String baslik;
  final String icerik;

  const ProfilBilgileri({
    Key? key,
    required this.baslik,
    required this.icerik,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            baslik,
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          Text(
            icerik,
            style: TextStyle(fontSize: 20),
          ),
          SizedBox(height: 10),
          ProfilTextField(
            hintText: 'Yeni $baslik Giriniz',
          ),
          Divider(color: Colors.grey[400]), // Bilgiler arasında bir çizgi ekledim.
        ],
      ),
    );
  }
}

class ProfilTextField extends StatelessWidget {
  final String hintText;

  const ProfilTextField({
    Key? key,
    required this.hintText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: hintText,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        contentPadding: EdgeInsets.symmetric(vertical: 12, horizontal: 16),
      ),
    );
  }
}

void main() {
  runApp(
    MaterialApp(
      home: ProfilPage(),
    ),
  );
}
