part of 'coupon_cubit.dart';

sealed class CouponState extends Equatable {
  const CouponState();

  @override
  List<Object> get props => [];
}

final class CouponInitial extends CouponState {}
final class ChangeColor extends CouponState {}
final class ChangeValue extends CouponState {
  final int value;
  const ChangeValue({required this.value});
}
final class ChangeRadio extends CouponState {
  final int value;
  const ChangeRadio({required this.value});
}
