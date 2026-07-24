import 'package:flutter/material.dart';
import 'home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Git App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.indigo),
        useMaterial3: true, 
      ),
      home: const FirstScreen(),
    );
  }
}

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'First Screen',
          style: TextStyle(fontWeight: FontWeight.bold, letterSpacing: 1.2),
        ),
        centerTitle: true,
        backgroundColor: Colors.indigoAccent,
        foregroundColor: Colors.white,
        elevation: 0,
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Colors.indigo.shade50, Colors.white],
          ),
        ),
        child: SingleChildScrollView( 
          child: Padding(
            padding: const EdgeInsets.all(24.0), 
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch, 
              children: [
                const SizedBox(height: 20), 

                // --- BAGIAN FOTO ---
                Card(
                  elevation: 10,
                  shadowColor: Colors.indigo.withOpacity(0.3),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Column(
                      children: [
                        ClipRRect( 
                          borderRadius: BorderRadius.circular(15),
                          child: Image.asset(
                            'assets/image/Arisuyss.jpg', 
                            height: 250, 
                            fit: BoxFit.contain, 
                          ),
                        ),
                        const SizedBox(height: 15),
                        const Text(
                          'Welcome to App',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.indigo,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                ),
                // --- SELESAI BAGIAN FOTO ---

                const SizedBox(height: 30), 

                const Text(
                  'Ini adalah tampilan showcase karakter Arisu yss dengan hoverboard dan panahnya yang keren. Gunakan tombol di bawah untuk melanjutkan',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 14, color: Colors.black54),
                ),

                const SizedBox(height: 40), 

                // --- BAGIAN TOMBOL ---
                Center(
                  child: ElevatedButton.icon(
                    icon: const Icon(Icons.rocket_launch_rounded),
                    label: const Text(
                      'Go to Second Screen',
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(horizontal: 28, vertical: 16),
                      backgroundColor: Colors.indigoAccent,
                      foregroundColor: Colors.white,
                      elevation: 8,
                      shadowColor: Colors.indigoAccent.withOpacity(0.5),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30), 
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const HomePage()),
                      );
                    },
                  ),
                ),
                // --- SELESAI BAGIAN TOMBOL ---

                const SizedBox(height: 40), 
              ],
            ),
          ),
        ),
      ),
    );
  }
}