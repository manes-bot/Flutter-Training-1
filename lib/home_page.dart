import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Arisuyss Gallery', // Judul lebih deskriptif
          style: TextStyle(fontWeight: FontWeight.bold, letterSpacing: 1.2),
        ),
        centerTitle: true,
        backgroundColor: Colors.deepPurpleAccent,
        foregroundColor: Colors.white,
        elevation: 0,
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Colors.deepPurple.shade50, Colors.white],
          ),
        ),
        child: SingleChildScrollView( // Biar bisa discroll kalau layar kekecilan
          child: Padding(
            padding: const EdgeInsets.all(24.0), // Padding utama layar
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch, // Lebarin konten
              children: [
                const SizedBox(height: 20), // Spasi atas

                // --- BAGIAN FOTO ---
                Card(
                  elevation: 10,
                  shadowColor: Colors.deepPurple.withOpacity(0.3),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Column(
                      children: [
                        ClipRRect( // Bikin sudut foto membulat
                          borderRadius: BorderRadius.circular(15),
                          child: Image.asset(
                            'assets/image/Arisunangid.jpg', // Referensi file Arisuyss.jpg (image_2.png)
                            height: 250, // Tinggi foto
                            fit: BoxFit.contain, // Biar foto full kelihatan
                          ),
                        ),
                        const SizedBox(height: 15),
                        const Text(
                          'Arisuyss - Archer Hero',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.deepPurple,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                ),
                // --- SELESAI BAGIAN FOTO ---

                const SizedBox(height: 30), // Spasi

                // Teks deskripsi biar gak terlalu polos
                const Text(
                  'Ini adalah tampilan karakter Arisu yss yang sedang menangis karna buff merah di ambil miya. Gunakan tombol di bawah untuk kembali.',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 14, color: Colors.black54),
                ),

                const SizedBox(height: 40), // Spasi besar

                // --- BAGIAN TOMBOL (Tetap di Tengah) ---
                Center(
                  child: ElevatedButton.icon(
                    icon: const Icon(Icons.arrow_back_ios_new_rounded, size: 18),
                    label: const Text(
                      'Go back to First Screen',
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(horizontal: 28, vertical: 16),
                      backgroundColor: Colors.deepPurpleAccent,
                      foregroundColor: Colors.white,
                      elevation: 8,
                      shadowColor: Colors.deepPurpleAccent.withOpacity(0.5),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                ),
                // --- SELESAI BAGIAN TOMBOL ---

                const SizedBox(height: 40), // Spasi bawah
              ],
            ),
          ),
        ),
      ),
    );
  }
}