import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('버튼'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.resolveWith(
                    (Set<MaterialState> states){
                      if(states.contains(MaterialState.pressed)){
                        return Colors.green;
                      }
                      return Colors.black;
                    }
                ),
                foregroundColor: MaterialStateProperty.resolveWith(
                    (Set<MaterialState> states){
                      if(states.contains(MaterialState.pressed)){
                        return Colors.white;
                      }
                      return Colors.red;
                    }
                ),
                padding: MaterialStateProperty.resolveWith(
                    (Set<MaterialState> states){
                      if(states.contains(MaterialState.pressed)){
                        return EdgeInsets.all(100.0);
                      }
                      return EdgeInsets.all(20.0);
                    },
                ),
              ),
              child: Text(
                'ButtonStyle',
              ),
            ),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                primary: Colors.red,
                onPrimary: Colors.black,
                shadowColor: Colors.green,
                elevation: 10.0,
                textStyle: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 20.0,
                ),
                padding: EdgeInsets.all(32.0),
                side: BorderSide(
                  color: Colors.black,
                  width: 4.0,
                ),
              ),
              child: Text(
                'ElevatedButton',
              ),
            ),
            OutlinedButton(
              onPressed: () {},
              style: OutlinedButton.styleFrom(
                primary: Colors.green,
                backgroundColor: Colors.yellow,
                elevation: 10.0,
              ),
              child: Text(
                'OutlinedButton',
              ),
            ),
            TextButton(
              onPressed: () {},
              style: TextButton.styleFrom(
                primary: Colors.brown,
                backgroundColor: Colors.blue,
              ),
              child: Text(
                'TextButton',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
