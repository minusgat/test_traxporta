import 'package:flutter/material.dart';

class LastStep extends StatelessWidget {
  const LastStep({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: Container(
            width: 1,
            decoration: BoxDecoration(
              color: Theme.of(context).disabledColor,
            ),
          ),
        ),
        Icon(
          Icons.location_pin,
          color: Theme.of(context).primaryColor,
        ),
        Container(
          height: 4,
        ),
      ],
    );
  }
}
