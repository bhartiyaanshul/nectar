import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class FliterView extends StatelessWidget {
  const FliterView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.close),
          onPressed: () {
            // AutoRouter.of(context).maybePop();
          },
        ),
        title: const Text('Filter'),
      ),
    );
  }
}