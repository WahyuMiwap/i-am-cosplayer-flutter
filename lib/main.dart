import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

/// Root aplikasi
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Douyin Cos',
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const CosplayAlbumPage(),
    );
  }
}

/// Halaman utama
class CosplayAlbumPage extends StatelessWidget {
  const CosplayAlbumPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /// AppBar
      appBar: AppBar(
        title: Text(
          "I Am Cosplayer",
          style: GoogleFonts.bungee(
            fontSize: 20,
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.black87,
        surfaceTintColor: Colors.black87,
        scrolledUnderElevation: 0,
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.white),
      ),

      backgroundColor: Colors.grey[100],

      /// Body responsive
      body: LayoutBuilder(
        builder: (context, constraints) {
          final double contentWidth =
              constraints.maxWidth < 600 ? constraints.maxWidth : 800;

          final double imageWidth =
              constraints.maxWidth < 600 ? 150 : 200;

          return SingleChildScrollView(
            child: Center(
              child: ConstrainedBox(
                constraints: BoxConstraints(maxWidth: contentWidth),
                child: Container(
                  color: Colors.white,
                  padding: const EdgeInsets.all(24.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      /// Judul
                      Text(
                        "Douyin Cosplay",
                        style: GoogleFonts.bungee(
                          fontSize: 28,
                          color: Colors.black,
                          letterSpacing: -1.0,
                        ),
                      ),
                      Text(
                        "The Cosplay:",
                        style: GoogleFonts.bungee(
                          fontSize: 12,
                          color: Colors.grey[700],
                          letterSpacing: 0.5,
                        ),
                      ),

                      const SizedBox(height: 30),

                      /// Gambar cosplay
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: imageWidth,
                            child: _buildAlbumCover(
                              'assets/langa.jpg',
                              'Langa Cosplay',
                            ),
                          ),
                          const SizedBox(width: 55),
                          SizedBox(
                            width: imageWidth,
                            child: _buildAlbumCover(
                              'assets/yoshiki.jpg',
                              'Yoshiki Cosplay',
                            ),
                          ),
                        ],
                      ),

                      const SizedBox(height: 40),

                      /// Header details
                      Text(
                        "DETAILS",
                        style: GoogleFonts.bungee(
                          fontSize: 14,
                          color: Colors.black,
                          letterSpacing: 1.2,
                        ),
                      ),
                      const Divider(thickness: 2, color: Colors.black12),
                      const SizedBox(height: 10),

                      /// Box detail
                      Container(
                        padding: const EdgeInsets.all(16),
                        decoration: BoxDecoration(
                          color: Colors.black.withOpacity(0.07),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Column(
                          children: const [
                            _DetailRow(
                              label: "COSTUME",
                              content: "Rent or buy costume",
                            ),
                            _DetailRow(
                              label: "APPLICATION FOR COSPLAY",
                              content: "Meitu and Hypic",
                            ),
                            _DetailRow(
                              label: "COSPLAY ESSENTIALS",
                              content:
                                  "Skincare, Make up, Set up camera and lighting",
                            ),
                            _DetailRow(
                              label: "REALITY CHECK",
                              content: "Phone storage full in one day",
                            ),
                          ],
                        ),
                      ),

                      const SizedBox(height: 20),

                      /// Credit
                      const Text(
                        "*Picture from Pinterest.",
                        style: TextStyle(
                          fontSize: 11,
                          color: Colors.grey,
                          fontStyle: FontStyle.italic,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  /// Widget gambar cosplay + label
  Widget _buildAlbumCover(String path, String label) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        AspectRatio(
          aspectRatio: 1.0,
          child: Container(
            decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.circular(6),
              border: Border.all(color: Colors.black12),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(6),
              child: Image.asset(
                path,
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) =>
                    const Icon(
                  Icons.theater_comedy,
                  size: 40,
                  color: Colors.grey,
                ),
              ),
            ),
          ),
        ),
        const SizedBox(height: 8),
        Text(
          label,
          textAlign: TextAlign.center,
          style: GoogleFonts.bungee(
            fontSize: 10,
            color: Colors.black,
          ),
        ),
      ],
    );
  }
}

/// Widget baris detail (dipisah biar clean)
class _DetailRow extends StatelessWidget {
  final String label;
  final String content;

  const _DetailRow({
    required this.label,
    required this.content,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width < 400 ? 120 : 150,
            child: Text(
              label,
              style: GoogleFonts.bungee(
                fontSize: 9,
                color: Colors.black54,
                height: 1.4,
              ),
            ),
          ),
          Expanded(
            child: Text(
              content,
              style: const TextStyle(
                color: Colors.black87,
                fontWeight: FontWeight.w600,
                fontSize: 12,
                height: 1.4,
              ),
            ),
          ),
        ],
      ),
    );
  }
}