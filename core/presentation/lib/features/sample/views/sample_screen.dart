import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:presentation/base/base_screen.dart';
import 'package:presentation/features/sample/cubit/sample_cubit.dart';
import 'package:presentation/generated/l10n.dart';
import 'package:presentation/widgets/layouts/basic_layout.dart';

part 'sample_listener.dart';

class SampleScreen extends StatefulWidget {
  const SampleScreen({super.key});

  @override
  State<SampleScreen> createState() => _SampleScreenState();
}

class _SampleScreenState extends BaseScreenState<SampleScreen> {
  SampleCubit get sampleCubit => BlocProvider.of<SampleCubit>(context);

  @override
  Widget builder(BuildContext context) {
    return BlocListener<SampleCubit, SampleState>(
      listener: listener,
      child: BasicLayout(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          _buildGreeting(),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              onChanged: (value) {
                sampleCubit.onUserNameChanged(value);
              },
              decoration: const InputDecoration(hintText: 'User name'),
            ),
          )
        ]),
      ),
    );
  }

  Widget _buildGreeting() {
    return BlocBuilder<SampleCubit, SampleState>(
      builder: (context, state) {
        if (state is UserNameUpdatedState) {
          return Text('${S.current.HELLO} ${state.userName}');
        }

        return Text(S.current.HELLO);
      },
    );
  }
}
