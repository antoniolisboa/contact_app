import "package:flutter/material.dart";

class MaterialTheme {
  final TextTheme textTheme;

  const MaterialTheme(this.textTheme);

  static ColorScheme lightScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(4278191787),
      surfaceTint: Color(4281614585),
      onPrimary: Color(4294967295),
      primaryContainer: Color(4280627439),
      onPrimaryContainer: Color(4294440191),
      secondary: Color(4283389610),
      onSecondary: Color(4294967295),
      secondaryContainer: Color(4289310719),
      onSecondaryContainer: Color(4279704946),
      tertiary: Color(4283826283),
      onTertiary: Color(4294967295),
      tertiaryContainer: Color(4286980001),
      onTertiaryContainer: Color(4294963708),
      error: Color(4290386458),
      onError: Color(4294967295),
      errorContainer: Color(4294957782),
      onErrorContainer: Color(4282449922),
      surface: Color(4294703359),
      onSurface: Color(4279900965),
      onSurfaceVariant: Color(4282729814),
      outline: Color(4285887880),
      outlineVariant: Color(4291151321),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4281282362),
      inversePrimary: Color(4290691839),
      primaryFixed: Color(4292927743),
      onPrimaryFixed: Color(4278190700),
      primaryFixedDim: Color(4290691839),
      onPrimaryFixedVariant: Color(4278916836),
      secondaryFixed: Color(4292927743),
      onSecondaryFixed: Color(4278388581),
      secondaryFixedDim: Color(4290691839),
      onSecondaryFixedVariant: Color(4281810576),
      tertiaryFixed: Color(4294825727),
      onTertiaryFixed: Color(4281598018),
      tertiaryFixedDim: Color(4294160127),
      onTertiaryFixedVariant: Color(4286056084),
      surfaceDim: Color(4292532455),
      surfaceBright: Color(4294703359),
      surfaceContainerLowest: Color(4294967295),
      surfaceContainerLow: Color(4294243071),
      surfaceContainer: Color(4293848315),
      surfaceContainerHigh: Color(4293519093),
      surfaceContainerHighest: Color(4293124591),
    );
  }

  ThemeData light() {
    return theme(lightScheme());
  }

  static ColorScheme lightMediumContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(4278191787),
      surfaceTint: Color(4281614585),
      onPrimary: Color(4294967295),
      primaryContainer: Color(4280627439),
      onPrimaryContainer: Color(4294967295),
      secondary: Color(4281547148),
      onSecondary: Color(4294967295),
      secondaryContainer: Color(4284902850),
      onSecondaryContainer: Color(4294967295),
      tertiary: Color(4283826283),
      onTertiary: Color(4294967295),
      tertiaryContainer: Color(4286980001),
      onTertiaryContainer: Color(4294967295),
      error: Color(4287365129),
      onError: Color(4294967295),
      errorContainer: Color(4292490286),
      onErrorContainer: Color(4294967295),
      surface: Color(4294703359),
      onSurface: Color(4279900965),
      onSurfaceVariant: Color(4282466642),
      outline: Color(4284309104),
      outlineVariant: Color(4286151052),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4281282362),
      inversePrimary: Color(4290691839),
      primaryFixed: Color(4283785471),
      onPrimaryFixed: Color(4294967295),
      primaryFixedDim: Color(4281417207),
      onPrimaryFixedVariant: Color(4294967295),
      secondaryFixed: Color(4284902850),
      onSecondaryFixed: Color(4294967295),
      secondaryFixedDim: Color(4283258023),
      onSecondaryFixedVariant: Color(4294967295),
      tertiaryFixed: Color(4289546438),
      onTertiaryFixed: Color(4294967295),
      tertiaryFixedDim: Color(4287638443),
      onTertiaryFixedVariant: Color(4294967295),
      surfaceDim: Color(4292532455),
      surfaceBright: Color(4294703359),
      surfaceContainerLowest: Color(4294967295),
      surfaceContainerLow: Color(4294243071),
      surfaceContainer: Color(4293848315),
      surfaceContainerHigh: Color(4293519093),
      surfaceContainerHighest: Color(4293124591),
    );
  }

  ThemeData lightMediumContrast() {
    return theme(lightMediumContrastScheme());
  }

  static ColorScheme lightHighContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(4278190975),
      surfaceTint: Color(4281614585),
      onPrimary: Color(4294967295),
      primaryContainer: Color(4278192863),
      onPrimaryContainer: Color(4294967295),
      secondary: Color(4279047019),
      onSecondary: Color(4294967295),
      secondaryContainer: Color(4281547148),
      onSecondaryContainer: Color(4294967295),
      tertiary: Color(4282318927),
      onTertiary: Color(4294967295),
      tertiaryContainer: Color(4285726862),
      onTertiaryContainer: Color(4294967295),
      error: Color(4283301890),
      onError: Color(4294967295),
      errorContainer: Color(4287365129),
      onErrorContainer: Color(4294967295),
      surface: Color(4294703359),
      onSurface: Color(4278190080),
      onSurfaceVariant: Color(4280427314),
      outline: Color(4282466642),
      outlineVariant: Color(4282466642),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4281282362),
      inversePrimary: Color(4293651199),
      primaryFixed: Color(4278192863),
      onPrimaryFixed: Color(4294967295),
      primaryFixedDim: Color(4278191518),
      onPrimaryFixedVariant: Color(4294967295),
      secondaryFixed: Color(4281547148),
      onSecondaryFixed: Color(4294967295),
      secondaryFixedDim: Color(4279968117),
      onSecondaryFixedVariant: Color(4294967295),
      tertiaryFixed: Color(4285726862),
      onTertiaryFixed: Color(4294967295),
      tertiaryFixedDim: Color(4283367523),
      onTertiaryFixedVariant: Color(4294967295),
      surfaceDim: Color(4292532455),
      surfaceBright: Color(4294703359),
      surfaceContainerLowest: Color(4294967295),
      surfaceContainerLow: Color(4294243071),
      surfaceContainer: Color(4293848315),
      surfaceContainerHigh: Color(4293519093),
      surfaceContainerHighest: Color(4293124591),
    );
  }

  ThemeData lightHighContrast() {
    return theme(lightHighContrastScheme());
  }

  static ColorScheme darkScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(4290691839),
      surfaceTint: Color(4290691839),
      onPrimary: Color(4278191785),
      primaryContainer: Color(4278192331),
      onPrimaryContainer: Color(4291349503),
      secondary: Color(4290691839),
      onSecondary: Color(4280231289),
      secondaryContainer: Color(4281349769),
      onSecondaryContainer: Color(4291875327),
      tertiary: Color(4294160127),
      onTertiary: Color(4283760746),
      tertiaryContainer: Color(4284940416),
      onTertiaryContainer: Color(4294359807),
      error: Color(4294948011),
      onError: Color(4285071365),
      errorContainer: Color(4287823882),
      onErrorContainer: Color(4294957782),
      surface: Color(4279374620),
      onSurface: Color(4293124591),
      onSurfaceVariant: Color(4291151321),
      outline: Color(4287598499),
      outlineVariant: Color(4282729814),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4293124591),
      inversePrimary: Color(4281614585),
      primaryFixed: Color(4292927743),
      onPrimaryFixed: Color(4278190700),
      primaryFixedDim: Color(4290691839),
      onPrimaryFixedVariant: Color(4278916836),
      secondaryFixed: Color(4292927743),
      onSecondaryFixed: Color(4278388581),
      secondaryFixedDim: Color(4290691839),
      onSecondaryFixedVariant: Color(4281810576),
      tertiaryFixed: Color(4294825727),
      onTertiaryFixed: Color(4281598018),
      tertiaryFixedDim: Color(4294160127),
      onTertiaryFixedVariant: Color(4286056084),
      surfaceDim: Color(4279374620),
      surfaceBright: Color(4281874499),
      surfaceContainerLowest: Color(4279045399),
      surfaceContainerLow: Color(4279900965),
      surfaceContainer: Color(4280164137),
      surfaceContainerHigh: Color(4280887604),
      surfaceContainerHighest: Color(4281611327),
    );
  }

  ThemeData dark() {
    return theme(darkScheme());
  }

  static ColorScheme darkMediumContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(4291020543),
      surfaceTint: Color(4290691839),
      onPrimary: Color(4278190684),
      primaryContainer: Color(4286285311),
      onPrimaryContainer: Color(4278190080),
      secondary: Color(4291020543),
      onSecondary: Color(4278190684),
      secondaryContainer: Color(4286745057),
      onSecondaryContainer: Color(4278190080),
      tertiary: Color(4294292735),
      onTertiary: Color(4281073720),
      tertiaryContainer: Color(4291651302),
      onTertiaryContainer: Color(4278190080),
      error: Color(4294949553),
      onError: Color(4281794561),
      errorContainer: Color(4294923337),
      onErrorContainer: Color(4278190080),
      surface: Color(4279374620),
      onSurface: Color(4294834687),
      onSurfaceVariant: Color(4291480030),
      outline: Color(4288782773),
      outlineVariant: Color(4286677397),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4293124591),
      inversePrimary: Color(4279114213),
      primaryFixed: Color(4292927743),
      onPrimaryFixed: Color(4278190413),
      primaryFixedDim: Color(4290691839),
      onPrimaryFixedVariant: Color(4278192058),
      secondaryFixed: Color(4292927743),
      onSecondaryFixed: Color(4278190413),
      secondaryFixedDim: Color(4290691839),
      onSecondaryFixedVariant: Color(4280626303),
      tertiaryFixed: Color(4294825727),
      onTertiaryFixed: Color(4280483886),
      tertiaryFixedDim: Color(4294160127),
      onTertiaryFixedVariant: Color(4284350581),
      surfaceDim: Color(4279374620),
      surfaceBright: Color(4281874499),
      surfaceContainerLowest: Color(4279045399),
      surfaceContainerLow: Color(4279900965),
      surfaceContainer: Color(4280164137),
      surfaceContainerHigh: Color(4280887604),
      surfaceContainerHighest: Color(4281611327),
    );
  }

  ThemeData darkMediumContrast() {
    return theme(darkMediumContrastScheme());
  }

  static ColorScheme darkHighContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(4294834687),
      surfaceTint: Color(4290691839),
      onPrimary: Color(4278190080),
      primaryContainer: Color(4291020543),
      onPrimaryContainer: Color(4278190080),
      secondary: Color(4294834687),
      onSecondary: Color(4278190080),
      secondaryContainer: Color(4291020543),
      onSecondaryContainer: Color(4278190080),
      tertiary: Color(4294965754),
      onTertiary: Color(4278190080),
      tertiaryContainer: Color(4294292735),
      onTertiaryContainer: Color(4278190080),
      error: Color(4294965753),
      onError: Color(4278190080),
      errorContainer: Color(4294949553),
      onErrorContainer: Color(4278190080),
      surface: Color(4279374620),
      onSurface: Color(4294967295),
      onSurfaceVariant: Color(4294834687),
      outline: Color(4291480030),
      outlineVariant: Color(4291480030),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4293124591),
      inversePrimary: Color(4278191254),
      primaryFixed: Color(4293256447),
      onPrimaryFixed: Color(4278190080),
      primaryFixedDim: Color(4291020543),
      onPrimaryFixedVariant: Color(4278190684),
      secondaryFixed: Color(4293256447),
      onSecondaryFixed: Color(4278190080),
      secondaryFixedDim: Color(4291020543),
      onSecondaryFixedVariant: Color(4278190684),
      tertiaryFixed: Color(4294892799),
      onTertiaryFixed: Color(4278190080),
      tertiaryFixedDim: Color(4294292735),
      onTertiaryFixedVariant: Color(4281073720),
      surfaceDim: Color(4279374620),
      surfaceBright: Color(4281874499),
      surfaceContainerLowest: Color(4279045399),
      surfaceContainerLow: Color(4279900965),
      surfaceContainer: Color(4280164137),
      surfaceContainerHigh: Color(4280887604),
      surfaceContainerHighest: Color(4281611327),
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
