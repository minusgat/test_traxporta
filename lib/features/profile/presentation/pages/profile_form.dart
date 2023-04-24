import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_traxporta/common/util/constants/ui_constants.dart';
import 'package:test_traxporta/common/widgets/rounded_container.dart';
import 'package:test_traxporta/features/profile/presentation/bloc/profile_bloc.dart';

class ProfileForm extends StatelessWidget {
  ProfileForm({super.key});

  final textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return RoundedCardContainer(
      child: Padding(
        padding: const EdgeInsets.all(extraLargePading),
        child: ListView(
          shrinkWrap: true,
          children: [
            const Text('Bussines Name'),
            TextField(
              controller: textController,
              decoration: const InputDecoration(
                hintText: 'Enter your bussines name',
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: mediumPading),
              child: ElevatedButton(
                onPressed: () {
                  BlocProvider.of<ProfileBloc>(context).add(
                    ProfileChangedEvent(
                      textController.text,
                    ),
                  );
                },
                child: const Text('Save'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
