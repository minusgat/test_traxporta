import 'package:flutter/material.dart';
import 'package:test_traxporta/common/util/theme/colors.dart';
import 'package:test_traxporta/common/widgets/fitted_container.dart';

class StatusContainer extends StatelessWidget {
  const StatusContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 3.0),
      decoration: BoxDecoration(
        border: Border.all(
          width: 1,
          color: AppColors.warning,
        ),
        borderRadius: const BorderRadius.all(Radius.circular(50)),
      ),
      child: const Text(
        "En Tránsito",
        style: TextStyle(
          fontWeight: FontWeight.w300,
          fontSize: 10.0,
          color: AppColors.warning,
        ),
      ),
    );
  }
}

class HeaderContainer extends StatelessWidget {
  const HeaderContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Row(
        children: [
          const Expanded(
            child: FittedContainer(
              child: StatusContainer(),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: Theme.of(context).primaryColor,
              borderRadius:
                  const BorderRadius.only(topRight: Radius.circular(24.0)),
            ),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Tarifa:',
                    style: TextStyle(fontSize: 12.0, color: Colors.white),
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: const [
                      Text(
                        '\$25,200.00',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18.0,
                          color: Colors.white,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 4.0),
                        child: Text(
                          'MXN',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 12.0,
                            color: Colors.yellow,
                          ),
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
