import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  const RoundedButton({
    Key key,
    this.size = 64,
    @required this.icon,
    @required this.color,
    @required this.press,
  }) : super(key: key);
  final double size;
  final Icon icon;
  final Color color;
  final VoidCallback press;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: size,
      width: size,
      child: FlatButton(
        padding: EdgeInsets.all(15 / 64 * size),
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(100.0)),
        color: color,
        onPressed: press,
        child: icon,
      ),
    );
  }
}
