import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'screens/splash_screen.dart';

void main() {
  runApp(const FinanceMateApp());
}

class FinanceMateApp extends StatelessWidget {
  const FinanceMateApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Finance Mate',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,

        textTheme: GoogleFonts.poppinsTextTheme(
          const TextTheme(
            bodyLarge: TextStyle(color: Colors.black87),
            bodyMedium: TextStyle(color: Colors.black87),
          ),
        ),

        // Warna dasar dan elemen utama
        scaffoldBackgroundColor: const Color(0xFFE8EBF0),
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFF9DC3E6),
          foregroundColor: Colors.white,
          elevation: 0,
        ),

        colorScheme: const ColorScheme.light(
          primary: Color(0xFF9DC3E6),
          secondary: Color(0xFFE8EBF0),
          surface: Colors.white,
          onPrimary: Colors.white,
          onSecondary: Colors.black87,
        ),
      ),

      // Halaman pertama (Splash)
      home: const SplashScreen(),
    );
  }
}
