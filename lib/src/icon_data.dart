library font_awesome_flutter;

// These are kept as PascalCase functions (rather than lowerCamelCase) for
// source compatibility with the previous IconData subclasses of the same
// name, and can't be const constructors since IconData is a final class.
// ignore_for_file: non_constant_identifier_names, non_const_argument_for_const_parameter

import 'package:flutter/widgets.dart';

/// Creates the [IconData] for a font awesome brand icon from a code point.
///
/// Code points can be obtained from fontawesome.com.
///
/// Note: [IconData] is a `final class` in Flutter, so it can no longer be
/// subclassed. This is a plain function instead of a `const` constructor, so
/// it cannot be used in a `const` context - use `IconData(...)` directly for
/// that, as [FontAwesomeIcons] does.
IconData IconDataBrands(int codePoint) => IconData(
  codePoint,
  fontFamily: 'FontAwesomeBrands',
  fontPackage: 'font_awesome_flutter',
);

/// Creates the [IconData] for a font awesome solid icon from a code point.
///
/// Code points can be obtained from fontawesome.com.
IconData IconDataSolid(int codePoint) => IconData(
  codePoint,
  fontFamily: 'FontAwesomeSolid',
  fontPackage: 'font_awesome_flutter',
);

/// Creates the [IconData] for a font awesome regular icon from a code point.
///
/// Code points can be obtained from fontawesome.com.
IconData IconDataRegular(int codePoint) => IconData(
  codePoint,
  fontFamily: 'FontAwesomeRegular',
  fontPackage: 'font_awesome_flutter',
);

/// Creates the [IconData] for a font awesome light icon from a code point.
/// Only works if light icons (font awesome pro) have been installed.
///
/// Code points can be obtained from fontawesome.com.
IconData IconDataLight(int codePoint) => IconData(
  codePoint,
  fontFamily: 'FontAwesomeLight',
  fontPackage: 'font_awesome_flutter',
);

/// Creates the [IconData] for a font awesome thin icon from a code point.
/// Only works if thin icons (font awesome pro, v6+) have been installed.
///
/// Code points can be obtained from fontawesome.com.
IconData IconDataThin(int codePoint) => IconData(
  codePoint,
  fontFamily: 'FontAwesomeThin',
  fontPackage: 'font_awesome_flutter',
);

/// [IconData] for a font awesome duotone icon, consisting of a [primary] and
/// a [secondary] layer. Only works if duotone icons (font awesome pro) have
/// been installed.
///
/// Code points can be obtained from fontawesome.com.
class IconDataDuotone {
  /// Primary glyph of the duotone icon.
  final IconData primary;

  /// Secondary glyph of the duotone icon.
  ///
  /// Due to tree-shaking restraints [secondary] cannot be the codepoint
  /// itself, but has to be an [IconData] object.
  final IconData? secondary;

  const IconDataDuotone(this.primary, {this.secondary});
}
