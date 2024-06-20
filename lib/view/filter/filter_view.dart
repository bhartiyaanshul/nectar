import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:nectar/widget/button/primary_button.dart';

class FilterView extends StatelessWidget {
  const FilterView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Color(0xffF2F3F2),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      height: MediaQuery.of(context).size.height * 0.9,
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Text(
                'Categories',
                style: Theme.of(context).textTheme.headlineMedium,
              ),
            ),
            const SizedBox(height: 20),
            Row(
              children: [
                Transform.scale(
                  scale: 1.3,
                  child: Checkbox(
                    value: true,
                    onChanged: (value) {},
                    activeColor: Theme.of(context).primaryColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                    side: const BorderSide(
                      color: Color(0xffC2C2C2),
                    ),
                  ),
                ),
                const Text('Eggs')
              ],
            ),
            Row(
              children: [
                Transform.scale(
                  scale: 1.3,
                  child: Checkbox(
                    value: false,
                    onChanged: (value) {},
                    activeColor: Theme.of(context).primaryColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                    side: const BorderSide(
                      color: Color(0xffC2C2C2),
                    ),
                  ),
                ),
                const Text('Noodles & Pasta')
              ],
            ),
            Row(
              children: [
                Transform.scale(
                  scale: 1.3,
                  child: Checkbox(
                    value: false,
                    onChanged: (value) {},
                    activeColor: Theme.of(context).primaryColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                    side: const BorderSide(
                      color: Color(0xffC2C2C2),
                    ),
                  ),
                ),
                const Text('Chips & Crisps')
              ],
            ),
            Row(
              children: [
                Transform.scale(
                  scale: 1.3,
                  child: Checkbox(
                    value: false,
                    onChanged: (value) {},
                    activeColor: Theme.of(context).primaryColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                    side: const BorderSide(
                      color: Color(0xffC2C2C2),
                    ),
                  ),
                ),
                const Text('Fast Food')
              ],
            ),
            const SizedBox(height: 40),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Text(
                'Brand',
                style: Theme.of(context).textTheme.headlineMedium,
              ),
            ),
            const SizedBox(height: 20),
            Row(
              children: [
                Transform.scale(
                  scale: 1.3,
                  child: Checkbox(
                    value: false,
                    onChanged: (value) {},
                    activeColor: Theme.of(context).primaryColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                    side: const BorderSide(
                      color: Color(0xffC2C2C2),
                    ),
                  ),
                ),
                const Text('Individual Callection')
              ],
            ),
            Row(
              children: [
                Transform.scale(
                  scale: 1.3,
                  child: Checkbox(
                    value: true,
                    onChanged: (value) {},
                    activeColor: Theme.of(context).primaryColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                    side: const BorderSide(
                      color: Color(0xffC2C2C2),
                    ),
                  ),
                ),
                const Text('Cocola')
              ],
            ),
            Row(
              children: [
                Transform.scale(
                  scale: 1.3,
                  child: Checkbox(
                    value: false,
                    onChanged: (value) {},
                    activeColor: Theme.of(context).primaryColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                    side: const BorderSide(
                      color: Color(0xffC2C2C2),
                    ),
                  ),
                ),
                const Text('Ifad')
              ],
            ),
            Row(
              children: [
                Transform.scale(
                  scale: 1.3,
                  child: Checkbox(
                    value: false,
                    onChanged: (value) {},
                    activeColor: Theme.of(context).primaryColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                    side: const BorderSide(
                      color: Color(0xffC2C2C2),
                    ),
                  ),
                ),
                const Text('Kazi Farmas')
              ],
            ),
            Spacer(),
            PrimaryButton.primary(title: 'Apply Filter', onTap: (){
              AutoRouter.of(context).maybePop();
            }),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
