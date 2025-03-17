import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const CircleAvatar(
            radius: 60,
            backgroundImage: AssetImage(
              'assets/image/profile1.jpg',
            ), // Ganti dengan path gambar profil
            backgroundColor: Colors.transparent,
          ),
          const SizedBox(height: 10),
          const Text(
            'Andy Aldyansyah',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          const Text(
            'College Student of UDB',
            style: TextStyle(fontSize: 18, color: Colors.grey),
          ),
          const Divider(height: 30, thickness: 1),
          const ContactInfo(
            icon: Icons.email,
            text: 'andyaldyansyah31@email.com',
          ),
          const ContactInfo(icon: Icons.phone, text: '+62 821 4075 2041'),
          const ContactInfo(
            icon: Icons.location_on,
            text: 'Karanganyar, Jawa Tengah, Indonesia',
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.bedroom_baby, color: Colors.blueAccent),
              SizedBox(width: 10),
              Text('09 Januari 2005', style: TextStyle(fontSize: 16)),
            ],
          ),

          const SizedBox(height: 20),
          const Text(
            'Tentang Saya',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 10),
          const Text(
            'Saya seorang Mahasiswa dari Universitas Duta Bangsa, saya lahir di Karawang Barat, Saya sangat suka yang namanya pelajaran Bahasa Inggris dikarenakan saya dari kecil sudah di leskan bahasa inggris dan mendapatkan nilai konsisten dari SD hingga SMK dengan nilai A, Saya pindah ke Jawa Tengah tepatnya di Gondangrejo, Karanganyar dikarenakan ikut Ayah saya, dan kenyataannya memang di desa yang pelosok tempat yang saya tinggal ini(di rumah nenek) lebih nyaman dan damai dibandingkan di kota, namun tidak enaknya saya tidak bisa memilih provider WIFI terkenal pada umumnya.',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 16),
          ),
        ],
      ),
    );
  }
}

class ContactInfo extends StatelessWidget {
  final IconData icon;
  final String text;

  const ContactInfo({super.key, required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, color: Colors.blueAccent),
          const SizedBox(width: 10),
          Text(text, style: const TextStyle(fontSize: 16)),
        ],
      ),
    );
  }
}
