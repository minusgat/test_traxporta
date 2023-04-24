import 'package:flutter/material.dart';

class CustomAvatar extends StatelessWidget {
  const CustomAvatar({
    Key? key,
    required this.text,
    this.radious,
  }) : super(key: key);

  final String text;
  final double? radious;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: radious ?? 64.0,
      child: Text(
        text,
        style: Theme.of(context).textTheme.titleSmall?.copyWith(
              color: Colors.white,
            ),
      ),
    );
  }
}
