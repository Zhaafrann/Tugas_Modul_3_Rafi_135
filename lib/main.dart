import 'package:flutter/material.dart';

void main() {
  runApp(const TugasMandiriApp());
}

class TugasMandiriApp extends StatelessWidget {
  const TugasMandiriApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Tugas Mandiri - Pertemuan 3 (Variasi)',
      theme: ThemeData(
        useMaterial3: true,
        colorSchemeSeed: Colors.teal,
        brightness: Brightness.light,
      ),
      home: const TugasMandiriScreen(),
    );
  }
}

class TugasMandiriScreen extends StatelessWidget {
  const TugasMandiriScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal.shade50,
      appBar: AppBar(
        title: const Text('Profil & Tugas Mandiri Layout'),
        centerTitle: true,
        backgroundColor: Colors.teal,
        foregroundColor: Colors.white,
      ),
      // Menggunakan SingleChildScrollView agar aman dari overflow pada layar sempit
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // --- 1. KARTU PROFIL UTAMA (Menggabungkan Inisial, Foto, Nama, NIM, Prodi) ---
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Colors.teal.shade700, Colors.teal.shade400],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.teal.withOpacity(0.3),
                      blurRadius: 8,
                      offset: const Offset(0, 4),
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    // Avatar Inisial dengan Border Putih
                    const CircleAvatar(
                      radius: 38,
                      backgroundColor: Colors.white,
                      child: CircleAvatar(
                        radius: 35,
                        backgroundColor: Colors.teal,
                        child: Text(
                          'MR',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 12),
                    // Nama dengan Icon Terverifikasi
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text(
                          'Muhammad Rafi Abiyyu Zhafran',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(width: 4),
                        Icon(Icons.verified, color: Colors.white, size: 18),
                      ],
                    ),
                    const SizedBox(height: 4),
                    const Text(
                      'NIM: 24108000135',
                      style: TextStyle(
                        color: Colors.white70,
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const SizedBox(height: 2),
                    const Text(
                      'Program Studi: INFORMATIKA',
                      style: TextStyle(
                        color: Colors.white70,
                        fontSize: 13,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 16),

              // --- 2. CONTAINER BERWARNA DENGAN PADDING, MARGIN, & BORDER RADIUS ---
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(16),
                margin: const EdgeInsets.symmetric(vertical: 4),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16),
                  border: Border.all(color: Colors.teal.shade200, width: 1.5),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Row(
                      children: [
                        Icon(Icons.info_outline, color: Colors.teal),
                        SizedBox(width: 8),
                        Text(
                          'Tentang Mahasiswa',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.teal,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 8),
                    Text(
                      'Mahasiswa INFORMATIKA Universitas Muhammadiyah Sidoarjo.',
                      style: TextStyle(
                        fontSize: 13,
                        color: Colors.black87,
                        height: 1.4,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 12),

              // --- 3. COLUMN DENGAN 3 TEXT DITATA RAPI & DIBERI JARAK (SizedBox) ---
              Card(
                elevation: 2,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'Informasi Akademik & Pribadi',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.teal,
                        ),
                      ),
                      SizedBox(height: 12),
                      Text(
                        '1. Semester Aktif: Semester 5',
                        style: TextStyle(fontSize: 14, color: Colors.black87),
                      ),
                      SizedBox(height: 8), // Jarak menggunakan SizedBox
                      Text(
                        '2. Domisili / Kota: Sidoarjo',
                        style: TextStyle(fontSize: 14, color: Colors.black87),
                      ),
                      SizedBox(height: 8), // Jarak menggunakan SizedBox
                      Text(
                        '3. Status Kuliah: Aktif & Berjalan',
                        style: TextStyle(fontSize: 14, color: Colors.black87),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 12),

              // --- 4. SENTUHAN PERSONAL TAMBAHAN (Hobi & Keahlian) ---
              Card(
                elevation: 2,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Minat & Keahlian Khusus',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.teal,
                        ),
                      ),
                      const SizedBox(height: 12),
                      Row(
                        children: const [
                          Icon(Icons.phishing, size: 20, color: Colors.teal),
                          SizedBox(width: 12),
                          Text('Hobi: Memancing', style: TextStyle(fontSize: 14)),
                        ],
                      ),
                      const SizedBox(height: 10),
                      Row(
                        children: const [
                          Icon(Icons.restaurant_menu, size: 20, color: Colors.teal),
                          SizedBox(width: 12),
                          Text('Keahlian: Memasak', style: TextStyle(fontSize: 14)),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}