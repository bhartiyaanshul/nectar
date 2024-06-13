import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:nectar/core/viewmodel/login_view_model.dart';
import 'package:nectar/widget/button/primary_button.dart';
import 'package:provider/provider.dart';

@RoutePage()
class LocationView extends StatelessWidget {
  const LocationView({super.key});

  @override
  Widget build(BuildContext context) {
    final model = context.watch<LoginViewModel>();
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_rounded),
          onPressed: () {
            context.router.maybePop();
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 40),
            Center(child: Image.asset('assets/images/location.png')),
            const SizedBox(height: 40),
            Center(
              child: Text(
                'Select Your Location',
                style: Theme.of(context).textTheme.headlineMedium,
              ),
            ),
            const SizedBox(height: 15),
            Text(
              'Swithch on your location to stay in tune with what’s happening in your area',
              style: Theme.of(context).textTheme.labelMedium,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 90),
            const Text(
              'Your Zone',
              textAlign: TextAlign.left,
            ),
            DropdownButton(
              isExpanded: true,
              hint: const Text('Select Location'),
        
              value: model.zone,
              items: const [
                DropdownMenuItem(value: 'Location 1', child: Text('Location 1')),
                DropdownMenuItem(value: 'Location 2', child: Text('Location 2')),
                DropdownMenuItem(value: 'Location 3', child: Text('Location 3')),
                DropdownMenuItem(value: 'Location 4', child: Text('Location 4')),
                DropdownMenuItem(value: 'Location 5', child: Text('Location 5')),
              ],
              onChanged: (value) {
                model.getZone(value.toString());
              }
            ),
            const SizedBox(height: 30),
            const Text(
              'Your Area',
              textAlign: TextAlign.left,
            ),
            DropdownButton(
              isExpanded: true,
              hint: const Text('Select Area'),
              value: model.area,
              items: const [
                DropdownMenuItem(value: 'Area 1', child: Text('Area 1')),
                DropdownMenuItem(value: 'Area 2', child: Text('Area 2')),
                DropdownMenuItem(value: 'Area 3', child: Text('Area 3')),
                DropdownMenuItem(value: 'Area 4', child: Text('Area 4')),
                DropdownMenuItem(value: 'Area 5', child: Text('Area 5')),
              ],
              onChanged: (value) {
                model.getArea(value.toString());
              }
            ),
            const SizedBox(height: 40),
            PrimaryButton.primary(
              title: 'Submit',
              onTap: () {

              },
            ),
          ],
        ),
      ),
    );
  }
}
