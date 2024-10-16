import "package:flutter/material.dart";

class MaterialTheme {
  final TextTheme textTheme;

  const MaterialTheme(this.textTheme);

  static ColorScheme lightScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xFF6750A4),
      surfaceTint: Color(0xFF6750A4),
      onPrimary: Color(0xFFD0BCFF),
      primaryContainer: Color(0xFF4A0072),
      onPrimaryContainer: Color(0xFFEADDFF),
      secondary: Color(0xFF625B71),
      onSecondary: Color(0xFFFFD8E4),
      secondaryContainer: Color(0xFFE8DEF8),
      onSecondaryContainer: Color(0xFF324763),
      tertiary: Color(0xFF7D5260),
      onTertiary: Color(0xFFFFB59F),
      tertiaryContainer: Color(0xFF633B48),
      onTertiaryContainer: Color(0xFFEADDFF),
      error: Color(0xFFB3261E),
      onError: Color(0xFFD0BCFF),
      errorContainer: Color(0xFF93000A),
      onErrorContainer: Color(0xFFD1AEB8),
      surface: Color(0xFF6650A4),
      onSurface: Color(0xFFD9D9D9),
      onSurfaceVariant: Color(0xFFD1AEB8),
      outline: Color(0xFF827393),
      outlineVariant: Color(0xFFAAACBB),
      shadow: Color(0xFF000000),
      scrim: Color(0xFF000000),
      inverseSurface: Color(0xFF1E192B),
      inversePrimary: Color(0xFF6750A4),
      primaryFixed: Color(0xFFB3261E),
      onPrimaryFixed: Color(0xFFD1AEB8),
      primaryFixedDim: Color(0xFF6750A4),
      onPrimaryFixedVariant: Color(0xFFD1AEB8),
      secondaryFixed: Color(0xFFB3261E),
      onSecondaryFixed: Color(0xFF625B71),
      secondaryFixedDim: Color(0xFF7D5260),
      onSecondaryFixedVariant: Color(0xFF8C7D83),
      tertiaryFixed: Color(0xFFB3273A),
      onTertiaryFixed: Color(0xFF8C7D83),
      tertiaryFixedDim: Color(0xFFD9D9D9),
      onTertiaryFixedVariant: Color(0xFF7D5260),
      surfaceDim: Color(0xFFD9D9D9),
      surfaceBright: Color(0xFFD8D6F8),
      surfaceContainerLowest: Color(0xFFFFFFFF),
      surfaceContainerLow: Color(0xFFD9D9D9),
      surfaceContainer: Color(0xFFD8D6F8),
      surfaceContainerHigh: Color(0xFFD9D9D9),
      surfaceContainerHighest: Color(0xFFD1AEB8),
    );
  }

  ThemeData light() {
    return theme(lightScheme());
  }

  static ColorScheme lightMediumContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xFF6750A4),
      surfaceTint: Color(0xFF6750A4),
      onPrimary: Color(0xFFFFFFFF),
      primaryContainer: Color(0xFF4A0072),
      onPrimaryContainer: Color(0xFFFFFFFF),
      secondary: Color(0xFF625B71),
      onSecondary: Color(0xFFFFFFFF),
      secondaryContainer: Color(0xFFE8DEF8),
      onSecondaryContainer: Color(0xFFFFFFFF),
      tertiary: Color(0xFF7D5260),
      onTertiary: Color(0xFFFFFFFF),
      tertiaryContainer: Color(0xFF633B48),
      onTertiaryContainer: Color(0xFFFFFFFF),
      error: Color(0xFFB3261E),
      onError: Color(0xFFFFFFFF),
      errorContainer: Color(0xFF93000A),
      onErrorContainer: Color(0xFFFFFFFF),
      surface: Color(0xFF6650A4),
      onSurface: Color(0xFFD9D9D9),
      onSurfaceVariant: Color(0xFFD1AEB8),
      outline: Color(0xFF827393),
      outlineVariant: Color(0xFFAAACBB),
      shadow: Color(0xFF000000),
      scrim: Color(0xFF000000),
      inverseSurface: Color(0xFF1E192B),
      inversePrimary: Color(0xFF6750A4),
      primaryFixed: Color(0xFFB3261E),
      onPrimaryFixed: Color(0xFFFFFFFF),
      primaryFixedDim: Color(0xFF6750A4),
      onPrimaryFixedVariant: Color(0xFFFFFFFF),
      secondaryFixed: Color(0xFFE8DEF8),
      onSecondaryFixed: Color(0xFFFFFFFF),
      secondaryFixedDim: Color(0xFFD9D9D9),
      onSecondaryFixedVariant: Color(0xFFFFFFFF),
      tertiaryFixed: Color(0xFFB3273A),
      onTertiaryFixed: Color(0xFFFFFFFF),
      tertiaryFixedDim: Color(0xFFD9D9D9),
      onTertiaryFixedVariant: Color(0xFFFFFFFF),
      surfaceDim: Color(0xFFD9D9D9),
      surfaceBright: Color(0xFFD8D6F8),
      surfaceContainerLowest: Color(0xFFFFFFFF),
      surfaceContainerLow: Color(0xFFD9D9D9),
      surfaceContainer: Color(0xFFD8D6F8),
      surfaceContainerHigh: Color(0xFFD9D9D9),
      surfaceContainerHighest: Color(0xFFD1AEB8),
    );
  }

  ThemeData lightMediumContrast() {
    return theme(lightMediumContrastScheme());
  }

  static ColorScheme lightHighContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xFF018786),
      surfaceTint: Color(0xFF6750A4),
      onPrimary: Color(0xFFFFFFFF),
      primaryContainer: Color(0xFF6750A4),
      onPrimaryContainer: Color(0xFFFFFFFF),
      secondary: Color(0xFF03DAC6),
      onSecondary: Color(0xFFFFFFFF),
      secondaryContainer: Color(0xFF625B71),
      onSecondaryContainer: Color(0xFFFFFFFF),
      tertiary: Color(0xFF4C6B92),
      onTertiary: Color(0xFFFFFFFF),
      tertiaryContainer: Color(0xFF7D5260),
      onTertiaryContainer: Color(0xFFFFFFFF),
      error: Color(0xFFCF6679),
      onError: Color(0xFFFFFFFF),
      errorContainer: Color(0xFFB3261E),
      onErrorContainer: Color(0xFFFFFFFF),
      surface: Color(0xFF6750A4),
      onSurface: Color(0xFF000000),
      onSurfaceVariant: Color(0xFF819CA9),
      outline: Color(0xFF4D4D4D),
      outlineVariant: Color(0xFF4D4D4D),
      shadow: Color(0xFF000000),
      scrim: Color(0xFF000000),
      inverseSurface: Color(0xFF1E192B),
      inversePrimary: Color(0xFFCF6679),
      primaryFixed: Color(0xFF6750A4),
      onPrimaryFixed: Color(0xFFFFFFFF),
      primaryFixedDim: Color(0xFF6750A4),
      onPrimaryFixedVariant: Color(0xFFFFFFFF),
      secondaryFixed: Color(0xFF625B71),
      onSecondaryFixed: Color(0xFFFFFFFF),
      secondaryFixedDim: Color(0xFF4C4C4C),
      onSecondaryFixedVariant: Color(0xFFFFFFFF),
      tertiaryFixed: Color(0xFF7D5260),
      onTertiaryFixed: Color(0xFFFFFFFF),
      tertiaryFixedDim: Color(0xFF2A2A2A),
      onTertiaryFixedVariant: Color(0xFFFFFFFF),
      surfaceDim: Color(0xFF8E8E93),
      surfaceBright: Color(0xFFD8D6F8),
      surfaceContainerLowest: Color(0xFFFFFFFF),
      surfaceContainerLow: Color(0xFFD9D9D9),
      surfaceContainer: Color(0xFFD8D6F8),
      surfaceContainerHigh: Color(0xFFD9D9D9),
      surfaceContainerHighest: Color(0xFFE1E2E9),
    );
  }

  ThemeData lightHighContrast() {
    return theme(lightHighContrastScheme());
  }

  static ColorScheme darkScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xFF7ABFFF),
      surfaceTint: Color(0xFF7ABFFF),
      onPrimary: Color(0xFF084265),
      primaryContainer: Color(0xFF0854F6),
      onPrimaryContainer: Color(0xFFFFE6FF),
      secondary: Color(0xFF8049FF),
      onSecondary: Color(0xFF5C0374),
      secondaryContainer: Color(0xFF6B55BC),
      onSecondaryContainer: Color(0xFFA39DFF),
      tertiary: Color(0xFF72C1FF),
      onTertiary: Color(0xFF7D4AD8),
      tertiaryContainer: Color(0xFF6566B3),
      onTertiaryContainer: Color(0xFFFFF5C7),
      error: Color(0xFFFF0003),
      onError: Color(0xFF9A0215),
      errorContainer: Color(0xFF8F3A2A),
      onErrorContainer: Color(0xFFFF0000),
      surface: Color(0xFF48A9F8),
      onSurface: Color(0xFF94A7CD),
      onSurfaceVariant: Color(0xFF74A1E0),
      outline: Color(0xFF6FEFFF),
      outlineVariant: Color(0xFF562A91),
      shadow: Color(0xFF000000),
      scrim: Color(0xFF000000),
      inverseSurface: Color(0xFF94A7CD),
      inversePrimary: Color(0xFF6750A4),
      primaryFixed: Color(0xFF7F9DFF),
      onPrimaryFixed: Color(0xFF040A30),
      primaryFixedDim: Color(0xFF7ABFFF),
      onPrimaryFixedVariant: Color(0xFF084E35),
      secondaryFixed: Color(0xFF7F9DFF),
      onSecondaryFixed: Color(0xFF041CBE),
      secondaryFixedDim: Color(0xFF8049FF),
      onSecondaryFixedVariant: Color(0xFF65C2F4),
      tertiaryFixed: Color(0xFFAAF6FF),
      onTertiaryFixed: Color(0xFF716B85),
      tertiaryFixedDim: Color(0xFF72C1FF),
      onTertiaryFixedVariant: Color(0xFF6585AC),
      surfaceDim: Color(0xFF48A9F8),
      surfaceBright: Color(0xFF66CFC4),
      surfaceContainerLowest: Color(0xFF3D27D3),
      surfaceContainerLow: Color(0xFF4C6B92),
      surfaceContainer: Color(0xFF4115F5),
      surfaceContainerHigh: Color(0xFF4967BF),
      surfaceContainerHighest: Color(0xFF51AB42),
    );
  }

  ThemeData dark() {
    return theme(darkScheme());
  }

  static ColorScheme darkMediumContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xFF7FFFD3),
      surfaceTint: Color(0xFF7ABFFF),
      onPrimary: Color(0xFF008000),
      primaryContainer: Color(0xFFAA99F6),
      onPrimaryContainer: Color(0xFF000000),
      secondary: Color(0xFF9955BE),
      onSecondary: Color(0xFF008000),
      secondaryContainer: Color(0xFF66FF82),
      onSecondaryContainer: Color(0xFF000000),
      tertiary: Color(0xFFBFFF7F),
      onTertiary: Color(0xFFCC0003),
      tertiaryContainer: Color(0xFF996C53),
      onTertiaryContainer: Color(0xFF000000),
      error: Color(0xFFFF0001),
      onError: Color(0xFFFF2A41),
      errorContainer: Color(0xFFFAEBFF),
      onErrorContainer: Color(0xFF000000),
      surface: Color(0xFF48A9F8),
      onSurface: Color(0xFFDDDDDD),
      onSurfaceVariant: Color(0xFFCC55A7),
      outline: Color(0xFFAAA3DE),
      outlineVariant: Color(0xFF996CDE),
      shadow: Color(0xFF000000),
      scrim: Color(0xFF000000),
      inverseSurface: Color(0xFF94A7CD),
      inversePrimary: Color(0xFF086395),
      primaryFixed: Color(0xFF7F9DFF),
      onPrimaryFixed: Color(0xFF044AB9),
      primaryFixedDim: Color(0xFF7ABFFF),
      onPrimaryFixedVariant: Color(0xFF084F97),
      secondaryFixed: Color(0xFF7F9DFF),
      onSecondaryFixed: Color(0xFF044AB9),
      secondaryFixedDim: Color(0xFF8049FF),
      onSecondaryFixedVariant: Color(0xFF41BCE2),
      tertiaryFixed: Color(0xFFAAF6FF),
      onTertiaryFixed: Color(0xFF040103),
      tertiaryFixedDim: Color(0xFFBFFF7F),
      onTertiaryFixedVariant: Color(0xFF41BE3A),
      surfaceDim: Color(0xFF48A9F8),
      surfaceBright: Color(0xFF66CFC4),
      surfaceContainerLowest: Color(0xFF3D27D3),
      surfaceContainerLow: Color(0xFF4C6B92),
      surfaceContainer: Color(0xFF4115F5),
      surfaceContainerHigh: Color(0xFF4967BF),
      surfaceContainerHighest: Color(0xFF51AB42),
    );
  }

  ThemeData darkMediumContrast() {
    return theme(darkMediumContrastScheme());
  }

  static ColorScheme darkHighContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xFDDBBBFF),
      surfaceTint: Color(0xFF7ABFFF),
      onPrimary: Color(0xFF000000),
      primaryContainer: Color(0xFF7FFFD3),
      onPrimaryContainer: Color(0xFF000000),
      secondary: Color(0xFDDBBBFF),
      onSecondary: Color(0xFF000000),
      secondaryContainer: Color(0xFFAFC0DE),
      onSecondaryContainer: Color(0xFF000000),
      tertiary: Color(0xFFFFFFFF),
      onTertiary: Color(0xFF000000),
      tertiaryContainer: Color(0xFFBFFF7F),
      onTertiaryContainer: Color(0xFF000000),
      error: Color(0xFFFFFFD9),
      onError: Color(0xFF000000),
      errorContainer: Color(0xFFFF0001),
      onErrorContainer: Color(0xFF000000),
      surface: Color(0xFF48A9F8),
      onSurface: Color(0xFFFFFFFF),
      onSurfaceVariant: Color(0xFDDBBBFF),
      outline: Color(0xFFCCCCD8),
      outlineVariant: Color(0xFFCCCCD8),
      shadow: Color(0xFF000000),
      scrim: Color(0xFF000000),
      inverseSurface: Color(0xFF94A7CD),
      inversePrimary: Color(0xFF084F96),
      primaryFixed: Color(0xFF7FFFD3),
      onPrimaryFixed: Color(0xFF000000),
      primaryFixedDim: Color(0xFF7FFFD3),
      onPrimaryFixedVariant: Color(0xFF008000),
      secondaryFixed: Color(0xFF7FFFD3),
      onSecondaryFixed: Color(0xFF000000),
      secondaryFixedDim: Color(0xFFAFC0DE),
      onSecondaryFixedVariant: Color(0xFF008000),
      tertiaryFixed: Color(0xFFFFAAFF),
      onTertiaryFixed: Color(0xFF000000),
      tertiaryFixedDim: Color(0xFFBFFF7F),
      onTertiaryFixedVariant: Color(0xFFCC5B2B),
      surfaceDim: Color(0xFF48A9F8),
      surfaceBright: Color(0xFF66CFC4),
      surfaceContainerLowest: Color(0xFF3D27D3),
      surfaceContainerLow: Color(0xFF4C6B92),
      surfaceContainer: Color(0xFF4115F5),
      surfaceContainerHigh: Color(0xFF4967BF),
      surfaceContainerHighest: Color(0xFF51AB42),
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
        scaffoldBackgroundColor: colorScheme.surface,
        canvasColor: colorScheme.surface,
      );

  List<ExtendedColor> get extendedColors => [];
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
