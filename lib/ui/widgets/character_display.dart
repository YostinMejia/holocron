import 'package:flutter/material.dart';
import 'package:star_wars/data/models/character_model.dart';
import 'package:star_wars/data/models/user_model.dart';
import 'package:star_wars/ui/widgets/interaction_bar.dart';
import 'package:star_wars/ui/widgets/network_img_loader.dart';

class CharacterDisplay extends StatelessWidget {
  final List<CharacterModel> charactersDetails;

  const CharacterDisplay({super.key, required this.charactersDetails});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).colorScheme.surfaceContainer,
      width: double.maxFinite,
      height: double.maxFinite,
      child: PageView.builder(
          scrollDirection: Axis.vertical,
          itemBuilder: (context, index) {
            CharacterModel character =
                charactersDetails[index % charactersDetails.length];

            return Stack(
              fit: StackFit.expand,
              children: [
                character.image != null
                    ? NetworkImageLoader(imageUrl: character.image!)
                    : const Center(child: Text("No image available")),
                DraggableScrollableSheet(
                    initialChildSize: 0.14,
                    minChildSize: 0.14,
                    builder: (BuildContext context,
                        ScrollController scrollController) {
                      return
                          // Use Transform.translate to adjust the container position
                          // this offset pushes the container down to ensure the widget inside
                          // DisplayElementCharacteristics can be shown correctly
                          Transform.translate(
                              offset: const Offset(0, kToolbarHeight),
                              child: Container(
                                  color: Theme.of(context)
                                      .colorScheme
                                      .primaryContainer,
                                  // This second Transform.translate is use to counteract flutter's calculation
                                  // of the initial position of DisplayElementCharacteristics.
                                  // this is necessary because extendBodyBehindAppBar is set to true
                                  child: Transform.translate(
                                    offset: const Offset(0, -kToolbarHeight),
                                    child: DisplayElementCharacteristics(
                                        charactersDetails: character.toJson(),
                                        controller: scrollController),
                                  )));
                    }),
                Positioned(
                    right: 0,
                    bottom: kToolbarHeight,
                    child: CustomInteractionBar(
                        liked: false,
                        characterInfo: FavoriteModel(
                            id: character.id,
                            url: character.url,
                            name: character.name,
                            imageUrl: character.image ?? ""),
                        comments: const [])),
              ],
            );
          }),
    );
  }
}

class DisplayElementCharacteristics extends StatelessWidget {
  final Map<String, dynamic> charactersDetails;
  final ScrollController controller;
  const DisplayElementCharacteristics(
      {super.key, required this.charactersDetails, required this.controller});

  @override
  Widget build(BuildContext context) {
    ColorScheme colors = Theme.of(context).colorScheme;
    TextTheme fonts = Theme.of(context).textTheme;
    Iterable<String> keys = charactersDetails.keys;

    return ListView.builder(
      controller: controller,
      itemCount: keys.length,
      itemBuilder: (context, index) {
        String characteristic = keys.elementAt(index);
        if (index == 0) {
          return const Column(
            children: [
              SizedBox(
                width: 50,
                child: Divider(
                  thickness: 5,
                ),
              ),
              Text("Swipe up to see the characteristics")
            ],
          );
        }

        return RichText(
          text: TextSpan(children: [
            TextSpan(
                text: "$characteristic: ",
                style: TextStyle(
                    color: colors.onSecondaryContainer,
                    fontSize: fonts.bodyMedium?.fontSize,
                    fontStyle: fonts.bodyMedium?.fontStyle,
                    fontFamily: fonts.bodyMedium?.fontFamily)),
            TextSpan(
                text: "${charactersDetails[characteristic]}",
                style: TextStyle(
                    color: colors.onSurface,
                    fontSize: fonts.bodyMedium?.fontSize,
                    fontStyle: fonts.bodyMedium?.fontStyle,
                    fontFamily: fonts.bodyMedium?.fontFamily))
          ]),
        );
      },
    );
  }
}
