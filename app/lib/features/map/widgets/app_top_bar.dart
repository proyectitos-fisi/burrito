import 'package:burrito/data/entities/positions_response.dart';
import 'package:burrito/features/map/widgets/burrito_status_badge.dart';
import 'package:flutter/material.dart';

class BurritoTopAppBar extends StatelessWidget {
  final BurritoInfoInTime? lastInfo;

  const BurritoTopAppBar({super.key, this.lastInfo});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      height: 100,
      color: Theme.of(context).colorScheme.primary,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // Image.asset('assets/logos/unmsm_logo.png', width: 32),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(
                Icons.directions_bus_rounded,
                color: Colors.white,
                size: 48,
              ),
              const SizedBox(height: 2),
              BurritoStatusBadge(
                status: lastInfo?.status ?? BurritoStatus.loading,
              ),
            ],
          ),
          const SizedBox(width: 15),
          const Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Paradero Sistemas',
                style: TextStyle(
                  fontSize: 26,
                  color: Colors.white,
                ),
              ),
              Text(
                'En 20 metros',
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
