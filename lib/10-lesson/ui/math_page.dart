import 'package:flutter/material.dart';
import 'package:flutter_tex/flutter_tex.dart';

class MathPage extends StatelessWidget {
  const MathPage({super.key});

  @override
  Widget build(BuildContext context) {
    String formula =    "Solve the quadratic equation"r'\[x^2 - 4x - 5 = 0.\]';
    return Scaffold(
      appBar: AppBar(title: Text("Math Page")),
      body: Padding(
        padding: EdgeInsets.all(30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(formula),
            SizedBox(height: 30),
            TeXView(
              renderingEngine: TeXViewRenderingEngine.katex(),
                child: TeXViewDocument( "Solve the quadratic equation"r'\[x^2 - 4x - 5 = 0.\]'))
          ],
        ),
      ),
    );
  }
}
