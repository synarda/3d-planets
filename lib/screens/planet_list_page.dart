import 'package:flutter/material.dart';
import 'package:planets_3d/model/planet_model.dart';
import 'package:planets_3d/utlis/const.dart';
import 'package:planets_3d/widgets/planet_list_item.dart';
import 'package:planets_3d/widgets/starfield.dart';

class PlanetListPage extends StatelessWidget {
  const PlanetListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: StarfieldWidget(
      child: ListView(children: [
        Text("Planets",
            textAlign: TextAlign.center, style: Styles.bigTitleStyle),
        ...Planets.planets
            .map((e) => PlanetListItemWidget(
                planet: PlanetModel(
                    url: e.url,
                    id: e.id,
                    name: e.name,
                    diameter: e.diameter,
                    satellite: e.satellite,
                    day: e.day,
                    year: e.year,
                    description: e.description)))
            .toList(),
      ]),
    ));
  }
}
