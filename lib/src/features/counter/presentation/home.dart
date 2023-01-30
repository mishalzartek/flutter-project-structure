import 'package:counter_app/core/utils/palette.dart';
import 'package:counter_app/src/features/counter/controller/counter_provider.dart';
import 'package:counter_app/src/features/counter/presentation/widgets/custom_app_bar.dart';
import 'package:counter_app/src/features/counter/presentation/widgets/floating_button.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CounterPage extends StatelessWidget {
  const CounterPage({super.key});

  @override
  Widget build(BuildContext context) {
    final counterProvider = Provider.of<CounterProvider>(context, listen: false);
    return Scaffold(
      backgroundColor: Palette.themeColor,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(150),
        child: CustomeAppBar(
          onReset: () {
            counterProvider.reset();
          },
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Consumer<CounterProvider>(
              builder: (context, value, child) => Text(
                value.counter.toString(),
                style: const TextStyle(
                  color: Palette.counterColor,
                  fontSize: 200,
                ),
              ),
            ),
            const SizedBox(height: 100)
          ],
        ),
      ),
      floatingActionButton:  Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            CustomFloatingButton(
              icon: Icons.add,
              onTap: () {
                counterProvider.increment();
              },
            ),
            CustomFloatingButton(
              icon: Icons.remove,
              onTap: () {
                counterProvider.decrement();
              },
            )
          ],
        ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
