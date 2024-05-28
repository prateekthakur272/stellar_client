import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:stellar_client/providers/providers.dart';
import 'package:stellar_client/widgets/widgets.dart';
import 'request_pane/request_pane.dart';
import 'response_pane.dart';
import 'code_pane.dart';

class EditorPaneRequestDetailsCard extends ConsumerWidget {
  const EditorPaneRequestDetailsCard({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final codePaneVisible = ref.watch(codePaneVisibleStateProvider);
    return RequestDetailsCard(
      child: EqualSplitView(
        leftWidget: const EditRequestPane(),
        rightWidget: codePaneVisible ? const CodePane() : const ResponsePane(),
      ),
    );
  }
}
