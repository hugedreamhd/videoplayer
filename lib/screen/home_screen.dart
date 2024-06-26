import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    

    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        decoration: getBoxdecoration(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _Logo(),
            SizedBox(
              height: 30.0,
            ),
            _AppName(),
          ],
        ),
      ),
    );

    
  }
  BoxDecoration getBoxdecoration(){
      return BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xFF2A3A7c),
              Color(0xFF000118),
            ],
          ),
        ),
    }
}

class _Logo extends StatelessWidget {
  const _Logo({super.key});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
              'asset/image/logo.png',
            );
  }
}

class _AppName extends StatelessWidget {
  const _AppName({super.key});

  @override
  Widget build(BuildContext context) {
    final textStyle = TextStyle(
      color: Colors.white,
      fontSize: 30.0,
    );

    return Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'VIDEO',
                  style: textStyle,
                ),
                Text(
                  'PLAYER',
                  style: textStyle.copyWith(
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            );
  }
}