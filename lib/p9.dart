import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final List<Map<String, String>> items = [
    {
      "image": "assets/images/download_2.jpg",
      "title": "Iftekharul Islam",
      "subtitle": "Student",
      "description":
          "Final year student of CSE department, Daffodil International University."
    },
    {
      "image": "assets/images/download_1.jpg",
      "title": "Barisal Zilla School",
      "subtitle": "An Well Known School of Barisal",
      "description":
          "One of the oldest and most prestigious schools in Bangladesh."
    },
    {
      "image": "assets/images/download.jpg",
      "title": "Daffodil International University",
      "subtitle": "A Leading Private University",
      "description":
          "A well-known private university in Bangladesh, offering a wide range of programs."
    },
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Problem 09',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Problem 09"),
          centerTitle: true,
        ),
        body: ListView.builder(
          padding: EdgeInsets.all(12),
          itemCount: items.length,
          itemBuilder: (context, index) {
            final item = items[index];
            return CustomAnimatedCard(
              imagePath: item['image']!,
              title: item['title']!,
              subtitle: item['subtitle']!,
              description: item['description']!,
            );
          },
        ),
      ),
    );
  }
}

class CustomAnimatedCard extends StatefulWidget {
  final String imagePath;
  final String title;
  final String subtitle;
  final String description;

  CustomAnimatedCard({
    super.key,
    required this.imagePath,
    required this.title,
    required this.subtitle,
    required this.description,
  });

  @override
  State<CustomAnimatedCard> createState() => _CustomAnimatedCardState();
}

class _CustomAnimatedCardState extends State<CustomAnimatedCard> {
  bool _isTapped = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: (_) => setState(() => _isTapped = true),
      onTapUp: (_) => setState(() => _isTapped = false),
      onTapCancel: () => setState(() => _isTapped = false),
      child: AnimatedScale(
        scale: _isTapped ? 0.97 : 1.0,
        duration: Duration(milliseconds: 150),
        child: Card(
          color: _isTapped ? Colors.grey[300] : Colors.white,
          elevation: 6,
          margin: EdgeInsets.symmetric(vertical: 10),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
                child: Image.asset(
                  widget.imagePath,
                  width: double.infinity,
                  height: 180,
                  fit: BoxFit.cover,
                ),
              ),
              Padding(
                padding: EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(widget.title,
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold)),
                    SizedBox(height: 4),
                    Text(widget.subtitle,
                        style:
                            TextStyle(fontSize: 16, color: Colors.grey[700])),
                    SizedBox(height: 8),
                    Text(widget.description,
                        style:
                            TextStyle(fontSize: 14, color: Colors.grey[600])),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
