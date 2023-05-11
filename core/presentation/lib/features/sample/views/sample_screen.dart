import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:presentation/base/base_screen.dart';
import 'package:presentation/features/sample/cubit/sample_cubit.dart';
import 'package:presentation/generated/assets.gen.dart';
import 'package:presentation/generated/intl/messages_all.dart';
import 'package:presentation/generated/l10n.dart';
import 'package:presentation/widgets/layouts/basic_layout.dart';

part 'sample_listener.dart';

class SampleScreen extends StatefulWidget {
  const SampleScreen({super.key});

  @override
  State<SampleScreen> createState() => _SampleScreenState();
}

class _SampleScreenState extends BaseScreenState<SampleScreen> {
  @override
  Widget builder(BuildContext context) {
    return BlocListener<SampleCubit, SampleState>(
      listener: listener,
      child: BasicLayout(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text(S.current.HELLO),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Assets.images.sample.image(),
          )
        ]),
      ),
    );
  }
}
