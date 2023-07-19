enum Rebars {
  D10,
  D13,
  D16,
  D19,
  D22,
  D25,
  D29,
  D32,
  D35,
}

class Rebar {
  final Rebars rebar;

  Rebar(this.rebar);

  double diameter() => switch (rebar) {
        Rebars.D10 => 9.53,
        Rebars.D13 => 12.7,
        Rebars.D16 => 15.9,
        Rebars.D19 => 19.1,
        Rebars.D22 => 22.2,
        Rebars.D25 => 25.4,
        Rebars.D29 => 28.6,
        Rebars.D32 => 31.8,
        Rebars.D35 => 34.9,
      };

  double area() => switch (rebar) {
        Rebars.D10 => 71.3,
        Rebars.D13 => 126.7,
        Rebars.D16 => 198.6,
        Rebars.D19 => 286.5,
        Rebars.D22 => 387.1,
        Rebars.D25 => 506.7,
        Rebars.D29 => 642.4,
        Rebars.D32 => 794.2,
        Rebars.D35 => 956.6,
      };
}
