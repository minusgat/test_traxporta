import 'package:flutter/material.dart';

class IntermediateStep extends StatelessWidget {
  const IntermediateStep({
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
          Icons.circle,
          color: Theme.of(context).disabledColor,
        ),
        Expanded(
          child: Container(
            width: 1,
            decoration: BoxDecoration(
              color: Theme.of(context).disabledColor,
            ),
          ),
        ),
      ],
    );
  }
}
