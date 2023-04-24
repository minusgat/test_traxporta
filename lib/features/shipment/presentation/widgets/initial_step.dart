import 'package:flutter/material.dart';
import 'package:test_traxporta/common/util/extension/double_extension.dart';

class InitialStep extends StatelessWidget {
  const InitialStep({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: 4,
        ),
        Stack(
          alignment: Alignment.center,
          children: [
            Icon(
              Icons.circle,
              color: Theme.of(context).primaryColor,
            ),
            Icon(
              Icons.circle,
              size: Theme.of(context).iconTheme.size!.proportionalSize,
              color: Colors.white,
            )
          ],
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
