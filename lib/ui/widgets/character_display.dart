import 'package:flutter/material.dart';

class CharacterDisplay extends StatelessWidget {
  final List<Map<String, dynamic>> peopleDetails;

  const CharacterDisplay({super.key, required this.peopleDetails});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      height: double.maxFinite,
      child: PageView.builder(
          scrollDirection: Axis.vertical,
          itemBuilder: (context, index) {
            return Column(
              
              children: [
                Flexible(
                    flex: 4,
                    child: peopleDetails[index % peopleDetails.length]["imageUrl"] !=null
                        ? DisplayImage(
                            imageUrl:
                                peopleDetails[index % peopleDetails.length]
                                    ["imageUrl"],
                            aspectRatio: 9/16 ,
                          )
                        : const Text("No image available")),
                Flexible(
                    flex: 1,
                    child: DisplayElementCharacterics(
                      peopleDetails:
                          peopleDetails[index % peopleDetails.length],
                    ))
              ],
            );
          }),
    );
  }
}

class DisplayImage extends StatelessWidget {
  final String imageUrl;
  final double aspectRatio;
  const DisplayImage(
      {super.key, required this.imageUrl, required this.aspectRatio});

  @override
  Widget build(BuildContext context) {
    ColorScheme colorScheme = Theme.of(context).colorScheme;
    return AspectRatio(
        aspectRatio: aspectRatio,
        child: Image.network(
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
                color: colorScheme.error,
              ),
            );
          },
          fit: BoxFit.cover,
        ));
  }
}

class DisplayElementCharacterics extends StatelessWidget {
  
  final Map<String, dynamic> peopleDetails;
  const DisplayElementCharacterics({super.key, required this.peopleDetails});

  @override
  Widget build(BuildContext context) {
    ColorScheme colors = Theme.of(context).colorScheme;
    TextTheme fonts = Theme.of(context).textTheme;
    Iterable<String> keys = peopleDetails.keys;

    return ListView.builder(

      itemCount: keys.length,
      itemBuilder: (context, index) {
        String characteristic = keys.elementAt(index);

        return RichText(text: TextSpan(
          children: [
            TextSpan(
              text: "$characteristic: ",
              style: TextStyle(
                color: colors.secondary,
                fontSize: fonts.bodyMedium?.fontSize,
                fontStyle: fonts.bodyMedium?.fontStyle,
                fontFamily: fonts.bodyMedium?.fontFamily
              )
            ),
            TextSpan(
              text: "${peopleDetails[characteristic]}",
              style: TextStyle(
                color: colors.onSurface,
                fontSize: fonts.bodyMedium?.fontSize,
                fontStyle: fonts.bodyMedium?.fontStyle,
                fontFamily: fonts.bodyMedium?.fontFamily
              )
            )

          ]
        ),);
      },
    );
  }
}
