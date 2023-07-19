import 'data.dart';

class FoundationModel {
  //재료강도
  final int fck;
  final int fy;

  //하중
  final double deadLoad;
  final double liveLoad;
  final double selfWeight;
  final double soilHeight;
  final double foundationUpperLiveLoad;

  //기둥단면
  final double columnX;
  final double columnY;

  //기초판크기
  final double foundationX;
  final double foundationY;
  final double foundationHeight;

  //주근종류
  final Rebars rebar;

  FoundationModel({
    required this.soilHeight,
    required this.deadLoad,
    required this.liveLoad,
    required this.selfWeight,
    required this.foundationUpperLiveLoad,
    required this.columnX,
    required this.columnY,
    required this.foundationX,
    required this.foundationY,
    required this.foundationHeight,
    required this.fck,
    required this.fy,
    required this.rebar,
  });
}
