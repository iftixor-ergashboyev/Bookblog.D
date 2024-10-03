import 'package:bookblog/pages/splash_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const BookBlog());
}
class BookBlog extends StatelessWidget {
  const BookBlog({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: const SplashPage(),
    );
  }
}
