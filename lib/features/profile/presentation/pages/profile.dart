import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_traxporta/common/util/constants/ui_constants.dart';
import 'package:test_traxporta/common/widgets/rounded_container.dart';
import 'package:test_traxporta/features/profile/presentation/bloc/profile_bloc.dart';
import 'package:test_traxporta/features/profile/presentation/widgets/avatar.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProfileBloc, ProfileState>(
      builder: (context, state) {
        return RoundedCardContainer(
          child: ConstrainedBox(
            constraints: BoxConstraints.loose(const Size.fromHeight(80)),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: largePading),
              child: Row(
                children: [
                  CustomAvatar(
                    text: state.abbreviatedBussinesName,
                  ),
                  Row(
                    children: [
                      Text(
                        state.bussinesName,
                        style: Theme.of(context).textTheme.titleSmall,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
