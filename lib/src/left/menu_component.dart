import 'package:angular/angular.dart';
import 'package:angular_router/angular_router.dart';

import '../routes.dart';

@Component(selector: 'menu', templateUrl: 'menu_component.html', styleUrls: [
  'menu_component.css'
], directives: [
  routerDirectives,
], exports: [
  Routes,
  RoutePaths,
])
class MenuComponent {
  // RouterState
}
