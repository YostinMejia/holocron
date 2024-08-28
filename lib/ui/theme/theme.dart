import "package:flutter/material.dart";

class MaterialTheme {
  final TextTheme textTheme;

  const MaterialTheme(this.textTheme);

  static ColorScheme lightScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(4278208901),
      surfaceTint: Color(4279460008),
      onPrimary: Color(4294967295),
      primaryContainer: Color(4280905142),
      onPrimaryContainer: Color(4294967295),
      secondary: Color(4283129725),
      onSecondary: Color(4294967295),
      secondaryContainer: Color(4291748095),
      onSecondaryContainer: Color(4281485155),
      tertiary: Color(4284886652),
      onTertiary: Color(4294967295),
      tertiaryContainer: Color(4287452067),
      onTertiaryContainer: Color(4294967295),
      error: Color(4290386458),
      onError: Color(4294967295),
      errorContainer: Color(4294957782),
      onErrorContainer: Color(4282449922),
      surface: Color(4294507007),
      onSurface: Color(4279835680),
      onSurfaceVariant: Color(4282468177),
      outline: Color(4285691778),
      outlineVariant: Color(4290889682),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4281217078),
      inversePrimary: Color(4288989695),
      primaryFixed: Color(4292142079),
      onPrimaryFixed: Color(4278197305),
      primaryFixedDim: Color(4288989695),
      onPrimaryFixedVariant: Color(4278208643),
      secondaryFixed: Color(4292142079),
      onSecondaryFixed: Color(4278459446),
      secondaryFixedDim: Color(4289972458),
      onSecondaryFixedVariant: Color(4281550948),
      tertiaryFixed: Color(4294564095),
      onTertiaryFixed: Color(4281466950),
      tertiaryFixedDim: Color(4293702143),
      onTertiaryFixedVariant: Color(4284886652),
      surfaceDim: Color(4292401888),
      surfaceBright: Color(4294507007),
      surfaceContainerLowest: Color(4294967295),
      surfaceContainerLow: Color(4294112250),
      surfaceContainer: Color(4293717492),
      surfaceContainerHigh: Color(4293388526),
      surfaceContainerHighest: Color(4292993769),
    );
  }

  ThemeData light() {
    return theme(lightScheme());
  }

  static ColorScheme lightMediumContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(4278207613),
      surfaceTint: Color(4279460008),
      onPrimary: Color(4294967295),
      primaryContainer: Color(4280905142),
      onPrimaryContainer: Color(4294967295),
      secondary: Color(4281287776),
      onSecondary: Color(4294967295),
      secondaryContainer: Color(4284577428),
      onSecondaryContainer: Color(4294967295),
      tertiary: Color(4284623480),
      onTertiary: Color(4294967295),
      tertiaryContainer: Color(4287452067),
      onTertiaryContainer: Color(4294967295),
      error: Color(4287365129),
      onError: Color(4294967295),
      errorContainer: Color(4292490286),
      onErrorContainer: Color(4294967295),
      surface: Color(4294507007),
      onSurface: Color(4279835680),
      onSurfaceVariant: Color(4282205005),
      outline: Color(4284112746),
      outlineVariant: Color(4285889414),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4281217078),
      inversePrimary: Color(4288989695),
      primaryFixed: Color(4281693888),
      onPrimaryFixed: Color(4294967295),
      primaryFixedDim: Color(4279000485),
      onPrimaryFixedVariant: Color(4294967295),
      secondaryFixed: Color(4284577428),
      onSecondaryFixed: Color(4294967295),
      secondaryFixedDim: Color(4282998138),
      onSecondaryFixedVariant: Color(4294967295),
      tertiaryFixed: Color(4288175534),
      onTertiaryFixed: Color(4294967295),
      tertiaryFixedDim: Color(4286399635),
      onTertiaryFixedVariant: Color(4294967295),
      surfaceDim: Color(4292401888),
      surfaceBright: Color(4294507007),
      surfaceContainerLowest: Color(4294967295),
      surfaceContainerLow: Color(4294112250),
      surfaceContainer: Color(4293717492),
      surfaceContainerHigh: Color(4293388526),
      surfaceContainerHighest: Color(4292993769),
    );
  }

  ThemeData lightMediumContrast() {
    return theme(lightMediumContrastScheme());
  }

  static ColorScheme lightHighContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(4278199109),
      surfaceTint: Color(4279460008),
      onPrimary: Color(4294967295),
      primaryContainer: Color(4278207613),
      onPrimaryContainer: Color(4294967295),
      secondary: Color(4278985533),
      onSecondary: Color(4294967295),
      secondaryContainer: Color(4281287776),
      onSecondaryContainer: Color(4294967295),
      tertiary: Color(4282122324),
      onTertiary: Color(4294967295),
      tertiaryContainer: Color(4284623480),
      onTertiaryContainer: Color(4294967295),
      error: Color(4283301890),
      onError: Color(4294967295),
      errorContainer: Color(4287365129),
      onErrorContainer: Color(4294967295),
      surface: Color(4294507007),
      onSurface: Color(4278190080),
      onSurfaceVariant: Color(4280230957),
      outline: Color(4282205005),
      outlineVariant: Color(4282205005),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4281217078),
      inversePrimary: Color(4293127423),
      primaryFixed: Color(4278207613),
      onPrimaryFixed: Color(4294967295),
      primaryFixedDim: Color(4278201687),
      onPrimaryFixedVariant: Color(4294967295),
      secondaryFixed: Color(4281287776),
      onSecondaryFixed: Color(4294967295),
      secondaryFixedDim: Color(4279774536),
      onSecondaryFixedVariant: Color(4294967295),
      tertiaryFixed: Color(4284623480),
      onTertiaryFixed: Color(4294967295),
      tertiaryFixedDim: Color(4282978144),
      onTertiaryFixedVariant: Color(4294967295),
      surfaceDim: Color(4292401888),
      surfaceBright: Color(4294507007),
      surfaceContainerLowest: Color(4294967295),
      surfaceContainerLow: Color(4294112250),
      surfaceContainer: Color(4293717492),
      surfaceContainerHigh: Color(4293388526),
      surfaceContainerHighest: Color(4292993769),
    );
  }

  ThemeData lightHighContrast() {
    return theme(lightHighContrastScheme());
  }

  static ColorScheme darkScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(4288989695),
      surfaceTint: Color(4288989695),
      onPrimary: Color(4278202717),
      primaryContainer: Color(4278211478),
      onPrimaryContainer: Color(4293850111),
      secondary: Color(4289972458),
      onSecondary: Color(4280037708),
      secondaryContainer: Color(4281090140),
      onSecondaryContainer: Color(4290827768),
      tertiary: Color(4293702143),
      onTertiary: Color(4283241572),
      tertiaryContainer: Color(4285741961),
      onTertiaryContainer: Color(4294963710),
      error: Color(4294948011),
      onError: Color(4285071365),
      errorContainer: Color(4287823882),
      onErrorContainer: Color(4294957782),
      surface: Color(4279309080),
      onSurface: Color(4292993769),
      onSurfaceVariant: Color(4290889682),
      outline: Color(4287336860),
      outlineVariant: Color(4282468177),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4292993769),
      inversePrimary: Color(4279460008),
      primaryFixed: Color(4292142079),
      onPrimaryFixed: Color(4278197305),
      primaryFixedDim: Color(4288989695),
      onPrimaryFixedVariant: Color(4278208643),
      secondaryFixed: Color(4292142079),
      onSecondaryFixed: Color(4278459446),
      secondaryFixedDim: Color(4289972458),
      onSecondaryFixedVariant: Color(4281550948),
      tertiaryFixed: Color(4294564095),
      onTertiaryFixed: Color(4281466950),
      tertiaryFixedDim: Color(4293702143),
      onTertiaryFixedVariant: Color(4284886652),
      surfaceDim: Color(4279309080),
      surfaceBright: Color(4281809214),
      surfaceContainerLowest: Color(4278980115),
      surfaceContainerLow: Color(4279835680),
      surfaceContainer: Color(4280098853),
      surfaceContainerHigh: Color(4280756783),
      surfaceContainerHighest: Color(4281480506),
    );
  }

  ThemeData dark() {
    return theme(darkScheme());
  }

  static ColorScheme darkMediumContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(4289449471),
      surfaceTint: Color(4288989695),
      onPrimary: Color(4278196016),
      primaryContainer: Color(4283864030),
      onPrimaryContainer: Color(4278190080),
      secondary: Color(4290235630),
      onSecondary: Color(4278196016),
      secondaryContainer: Color(4286419634),
      onSecondaryContainer: Color(4278190080),
      tertiary: Color(4293834751),
      onTertiary: Color(4280942651),
      tertiaryContainer: Color(4290214349),
      onTertiaryContainer: Color(4278190080),
      error: Color(4294949553),
      onError: Color(4281794561),
      errorContainer: Color(4294923337),
      onErrorContainer: Color(4278190080),
      surface: Color(4279309080),
      onSurface: Color(4294703871),
      onSurfaceVariant: Color(4291218391),
      outline: Color(4288586670),
      outlineVariant: Color(4286481294),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4292993769),
      inversePrimary: Color(4278208901),
      primaryFixed: Color(4292142079),
      onPrimaryFixed: Color(4278194471),
      primaryFixedDim: Color(4288989695),
      onPrimaryFixedVariant: Color(4278204263),
      secondaryFixed: Color(4292142079),
      onSecondaryFixed: Color(4278194471),
      secondaryFixedDim: Color(4289972458),
      onSecondaryFixedVariant: Color(4280432466),
      tertiaryFixed: Color(4294564095),
      onTertiaryFixed: Color(4280418353),
      tertiaryFixedDim: Color(4293702143),
      onTertiaryFixedVariant: Color(4283636586),
      surfaceDim: Color(4279309080),
      surfaceBright: Color(4281809214),
      surfaceContainerLowest: Color(4278980115),
      surfaceContainerLow: Color(4279835680),
      surfaceContainer: Color(4280098853),
      surfaceContainerHigh: Color(4280756783),
      surfaceContainerHighest: Color(4281480506),
    );
  }

  ThemeData darkMediumContrast() {
    return theme(darkMediumContrastScheme());
  }

  static ColorScheme darkHighContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(4294703871),
      surfaceTint: Color(4288989695),
      onPrimary: Color(4278190080),
      primaryContainer: Color(4289449471),
      onPrimaryContainer: Color(4278190080),
      secondary: Color(4294703871),
      onSecondary: Color(4278190080),
      secondaryContainer: Color(4290235630),
      onSecondaryContainer: Color(4278190080),
      tertiary: Color(4294965754),
      onTertiary: Color(4278190080),
      tertiaryContainer: Color(4293834751),
      onTertiaryContainer: Color(4278190080),
      error: Color(4294965753),
      onError: Color(4278190080),
      errorContainer: Color(4294949553),
      onErrorContainer: Color(4278190080),
      surface: Color(4279309080),
      onSurface: Color(4294967295),
      onSurfaceVariant: Color(4294703871),
      outline: Color(4291218391),
      outlineVariant: Color(4291218391),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4292993769),
      inversePrimary: Color(4278201170),
      primaryFixed: Color(4292601855),
      onPrimaryFixed: Color(4278190080),
      primaryFixedDim: Color(4289449471),
      onPrimaryFixedVariant: Color(4278196016),
      secondaryFixed: Color(4292601855),
      onSecondaryFixed: Color(4278190080),
      secondaryFixedDim: Color(4290235630),
      onSecondaryFixedVariant: Color(4278196016),
      tertiaryFixed: Color(4294631167),
      onTertiaryFixed: Color(4278190080),
      tertiaryFixedDim: Color(4293834751),
      onTertiaryFixedVariant: Color(4280942651),
      surfaceDim: Color(4279309080),
      surfaceBright: Color(4281809214),
      surfaceContainerLowest: Color(4278980115),
      surfaceContainerLow: Color(4279835680),
      surfaceContainer: Color(4280098853),
      surfaceContainerHigh: Color(4280756783),
      surfaceContainerHighest: Color(4281480506),
    );
  }

  ThemeData darkHighContrast() {
    return theme(darkHighContrastScheme());
  }


  ThemeData theme(ColorScheme colorScheme) => ThemeData(
     useMaterial3: true,
     brightness: colorScheme.brightness,
     colorScheme: colorScheme,
     textTheme: textTheme.apply(
       bodyColor: colorScheme.onSurface,
       displayColor: colorScheme.onSurface,
     ),
     scaffoldBackgroundColor: colorScheme.background,
     canvasColor: colorScheme.surface,
  );


  List<ExtendedColor> get extendedColors => [
  ];
}

class ExtendedColor {
  final Color seed, value;
  final ColorFamily light;
  final ColorFamily lightHighContrast;
  final ColorFamily lightMediumContrast;
  final ColorFamily dark;
  final ColorFamily darkHighContrast;
  final ColorFamily darkMediumContrast;

  const ExtendedColor({
    required this.seed,
    required this.value,
    required this.light,
    required this.lightHighContrast,
    required this.lightMediumContrast,
    required this.dark,
    required this.darkHighContrast,
    required this.darkMediumContrast,
  });
}

class ColorFamily {
  const ColorFamily({
    required this.color,
    required this.onColor,
    required this.colorContainer,
    required this.onColorContainer,
  });

  final Color color;
  final Color onColor;
  final Color colorContainer;
  final Color onColorContainer;
}
