import 'package:flutter/material.dart';

class CharacterDisplay extends StatelessWidget {
  List<Map<String, dynamic>> peopleDetails;

  CharacterDisplay({super.key, required this.peopleDetails});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(255, 0, 0, 0),
      width: double.maxFinite,
      height: double.maxFinite,
      child: PageView.builder(
          scrollDirection: Axis.vertical,
          itemBuilder: (context, index) {
            return Column(
              children: [
                Flexible(
                    flex: 4,
                    child: peopleDetails[index % peopleDetails.length]
                                ["imageUrl"] !=
                            null
                        ? DisplayImage(
                            imageUrl:
                                peopleDetails[index % peopleDetails.length]
                                    ["imageUrl"],
                            aspectRatio: 9 / 16,
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
                : const Center(child: CircularProgressIndicator());
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
  Map<String, dynamic> peopleDetails;
  DisplayElementCharacterics({super.key, required this.peopleDetails});

  @override
  Widget build(BuildContext context) {
    Iterable<String> keys = peopleDetails.keys;

    return ListView.builder(
      itemCount: keys.length,
      itemBuilder: (context, index) {
        String characteristic = keys.elementAt(index);

        return Text("$characteristic: ${peopleDetails[characteristic]}");
      },
    );
  }
}
