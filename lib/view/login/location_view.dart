import 'dart:developer';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';
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
            const SizedBox(height: 20),
            Center(child: Image.asset('assets/images/location.png')),
            const SizedBox(height: 30),
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
            const SizedBox(height: 70),
            const Text(
              'Your Zone',
              textAlign: TextAlign.left,
            ),
            TypeAheadField<String>(
              itemBuilder:(context, value) {
                return ListTile(
                  tileColor: Colors.white, 
                  title: Text(value),
                );
              },
              controller: model.zoneController,
              builder: (context, controller, focusNode) {
                return TextFormField(
                  controller: controller,
                  focusNode: focusNode,
                  decoration: InputDecoration(
                    suffix: IconButton(onPressed: (){}, icon: const Icon(Icons.arrow_drop_down)),
                    enabledBorder: const UnderlineInputBorder(
                      borderSide: BorderSide(color: Color(0xffE2E2E2)),
                    ),
                    focusedBorder: const UnderlineInputBorder(
                      borderSide: BorderSide(color: Color(0xffE2E2E2)),
                    ),
                  ),
                );
              },
              onSelected:(value) {
                model.setZone(value);
              }, 
              suggestionsCallback:(search) {
                return model.zones.where((element) => element.toLowerCase().contains(search.toLowerCase())).toList();
              },
            ),
            const SizedBox(height: 30,),
            const Text(
              'Your Area',
              textAlign: TextAlign.left,
            ),
            TypeAheadField<String>(
              itemBuilder:(context, value) {
                return ListTile(
                  tileColor: Colors.white, 
                  title: Text(value),
                );
              },
              controller: model.areaController,
              builder: (context, controller, focusNode) {
                return TextFormField(
                  controller: controller,
                  focusNode: focusNode,
                  decoration: InputDecoration(
                    suffix: IconButton(onPressed: (){}, icon: const Icon(Icons.arrow_drop_down)),
                    enabledBorder: const UnderlineInputBorder(
                      borderSide: BorderSide(color: Color(0xffE2E2E2)),
                    ),
                    focusedBorder: const UnderlineInputBorder(
                      borderSide: BorderSide(color: Color(0xffE2E2E2)),
                    ),
                  ),
                );
              },
              onSelected:(value) {
                model.setArea(value);
              }, 
              suggestionsCallback:(search) {
                print(model.areas[model.zone]);
                return List<String>.from(model.areas[model.zone]).where((element) => element.toLowerCase().contains(search.toLowerCase())).toList();
              },
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
