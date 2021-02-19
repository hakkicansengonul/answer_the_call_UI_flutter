import 'package:flutter/material.dart';
import 'package:answer_the_call_app/RoundedButton.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Stack(
        fit: StackFit.expand,
        children: [
          Image(
            image: NetworkImage(
              "https://cdn.pixabay.com/photo/2019/11/03/20/11/portrait-4599553_1280.jpg",
            ),
            fit: BoxFit.cover,
          ),
          DecoratedBox(
            decoration: BoxDecoration(
              color: Colors.black.withOpacity(0.3),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: SafeArea(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Maria\nCollege",
                    style: Theme.of(context)
                        .textTheme
                        .headline3
                        .copyWith(color: Colors.white),
                  ),
                  SizedBox(
                    height: 8.0,
                  ),
                  Text(
                    "Incoming 00:04".toUpperCase(),
                    style: TextStyle(color: Colors.white60, fontSize: 15.0),
                  ),
                  Spacer(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      RoundedButton(
                        press: () {},
                        color: Colors.white,
                        icon: Icon(
                          Icons.mic,
                          color: Colors.black,
                        ),
                      ),
                      RoundedButton(
                        press: () {},
                        color: Colors.red,
                        icon: Icon(
                          Icons.call_end,
                          color: Colors.white,
                        ),
                      ),
                      RoundedButton(
                        press: () {},
                        color: Colors.white,
                        icon: Icon(
                          Icons.volume_down,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
