import 'package:flutter/material.dart';
import 'package:guesgender/src/home.dart';

void main() {
  runApp(const Genderlize());
}

class Genderlize extends StatelessWidget {
  const Genderlize({super.key});

  @override
  Widget build(BuildContext context) {
    return const Homepage() ;
  }
}