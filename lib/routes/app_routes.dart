part of 'app_pages.dart';

abstract class Routes {
  Routes._();

  static const appBottomBar = _Paths.appBottomBar;
  static const profile = _Paths.profile;
  static const products = _Paths.products;
  static const sales = _Paths.sales;
  static const details = _Paths.details;
  static const info = _Paths.info;
  static const home = _Paths.home;
}

abstract class _Paths {
  _Paths._();

  static const appBottomBar = '/app_bottom_bar';
  static const profile = '/profile';
  static const products = '/products';
  static const sales = '/sales';
  static const details = '/details';
  static const info = '/info';
  static const home = '/home';
}
