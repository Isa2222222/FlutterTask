import 'package:flutter/material.dart';

class CardWidget extends StatefulWidget {
  final String imageUrl;
  final String title;
  final String description;
  final Color buttonColor;
  final TextStyle? titleStyle;

  const CardWidget({
    super.key,
    required this.imageUrl,
    required this.title,
    required this.description,
    this.buttonColor = Colors.blue,
    this.titleStyle,
  });

  @override
  _CardWidgetState createState() => _CardWidgetState();
}

class _CardWidgetState extends State<CardWidget> {
  bool _isVisible = false;

  void _toggleDescription() {
    setState(() {
      _isVisible = !_isVisible;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      elevation: 4,
      margin: const EdgeInsets.all(8),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.network(
                widget.imageUrl,
                height: 150,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              widget.title,
              style: widget.titleStyle ??
                  const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
            ),
            const SizedBox(height: 8),
            if (_isVisible)
              Text(
                widget.description,
                style: const TextStyle(fontSize: 16),
              ),
            const SizedBox(height: 8),
            ElevatedButton(
              onPressed: _toggleDescription,
              style: ElevatedButton.styleFrom(
                backgroundColor: widget.buttonColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              child: Text(
                _isVisible ? "Hide" : "Show",
                style: const TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(title: const Text('Custom Card Widget Example')),
      body: const Center(
        child: CardWidget(
          imageUrl: 'https://i.ytimg.com/vi/LBO155mpjcQ/maxresdefault.jpg',
          title: 'MACAN - Как je feat Kiliana',
          description: 'Hit of 2024!!!!!',
          buttonColor: Colors.green,
        ),
      ),
    ),
  ));
}
