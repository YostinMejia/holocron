import 'package:flutter/material.dart';
import 'package:star_wars/data/models/person_model.dart';

class CharacterDisplay extends StatelessWidget {
  final List<PersonModel> peopleDetails;

  const CharacterDisplay({super.key, required this.peopleDetails});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).colorScheme.surfaceContainer,
      width: double.maxFinite,
      height: double.maxFinite,
      child: PageView.builder(
          scrollDirection: Axis.vertical,
          itemBuilder: (context, index) {
            return Stack(
              fit: StackFit.expand,
              children: [
                peopleDetails[index % peopleDetails.length].image != null
                    ? NetworkImageLoader(
                        imageUrl: peopleDetails[index % peopleDetails.length]
                            .image!)
                    : const Center(child: Text("No image available")),
                DraggableScrollableSheet(
                    initialChildSize: 0.15,
                    minChildSize: 0.1,
                    builder: (BuildContext context,
                        ScrollController scrollController) {
                      return Container(
                        color:Theme.of(context).colorScheme.primaryContainer ,
                        child: DisplayElementCharacteristics(
                            peopleDetails:
                                peopleDetails[index % peopleDetails.length].toJson(),
                            controller: scrollController),
                      );
                    }),
              ],
            );
          }),
    );
  }
}

class NetworkImageLoader extends StatelessWidget {
  const NetworkImageLoader({
    super.key,
    required this.imageUrl,
  });

  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return Image.network(
      imageUrl,
      loadingBuilder: (context, child, ImageChunkEvent? loadingProgress) {
        return loadingProgress == null
            ? child
            : const Center(child: CircularProgressIndicator.adaptive());
      },
      errorBuilder: (context, error, stackTrace) {
        return Center(
          child: Icon(
            Icons.error,
            color: Theme.of(context).colorScheme.error,
          ),
        );
      },
      fit: BoxFit.cover,
    );
  }
}

class DisplayElementCharacteristics extends StatelessWidget {
  final Map<String, dynamic> peopleDetails;
  final ScrollController controller;
  const DisplayElementCharacteristics(
      {super.key, required this.peopleDetails, required this.controller});

  @override
  Widget build(BuildContext context) {
    ColorScheme colors = Theme.of(context).colorScheme;
    TextTheme fonts = Theme.of(context).textTheme;
    Iterable<String> keys = peopleDetails.keys;

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
                text: "${peopleDetails[characteristic]}",
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
