import 'package:best_one/common/widgets/circular_container.dart';
import 'package:best_one/common/widgets/curved_edget_widget.dart';
import 'package:best_one/common/widgets/curved_edgets.dart';
import 'package:best_one/utils/constants/colors.dart';
import 'package:flutter/material.dart';

class TPrimaryHeaderContainer extends StatelessWidget {
  const TPrimaryHeaderContainer({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return TCurvedEdgetWidget(
      child: SizedBox(
        height: 400,
        child: Container(
          color: TColors.primary,
          child: Stack(
            children: [
              Positioned(
                top: -150,
                right: -250,
                child: TCirculationContainer(
                  backgroundColor: Colors.white.withOpacity(0.1),
                ),
              ),
              Positioned(
                top: 100,
                right: -300,
                child: TCirculationContainer(
                  backgroundColor: Colors.white.withOpacity(0.1),
                ),
              ),
              child
            ],
          ),
        ),
      ),
    );
  }
}
