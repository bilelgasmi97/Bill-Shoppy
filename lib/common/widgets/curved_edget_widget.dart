import 'package:best_one/common/widgets/curved_edgets.dart';
import 'package:flutter/material.dart';

class TCurvedEdgetWidget extends StatelessWidget {
  const TCurvedEdgetWidget({
    super.key,
    this.child,
  });

  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return ClipPath(clipper: TTCustomCurvedEdgets(), child: child);
  }
}
