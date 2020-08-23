import 'dart:html';
import 'dart:async';
import 'package:angular/angular.dart';
import 'package:angular_router/angular_router.dart';
import 'package:js/js.dart';

import 'src/routes.dart';
import 'src/left/menu_component.dart';
import 'src/utils/mdc.dart';

@Component(selector: 'my-app', templateUrl: 'app_component.html', styleUrls: [
  'app_component.css'
], directives: [
  routerDirectives,
  MenuComponent,
], exports: [
  RoutePaths,
  Routes
], pipes: [
  commonPipes,
])
class AppComponent implements OnInit {
  final Router _router;
  Stream<RouterState> routerState;

  AppComponent(this._router);

  @override
  void ngOnInit() {
    // Assign stream update to routerState
    routerState = _router.onRouteActivated;

    MDCDrawer drawer = MDCDrawer.attachTo(querySelector('.mdc-drawer'));
    MDCTopAppBar topAppBar =
        MDCTopAppBar.attachTo(querySelector('.mdc-top-app-bar'));
    drawer.open = true;

    // Auto close after click on drawer:
    // Element listEl = querySelector('.mdc-drawer .mdc-list');
    // listEl.addEventListener('click', (event) => drawer.open = false);

    // Toggle drawer when clicking on nav icon
    topAppBar.setScrollTarget(querySelector('#main-content'));
    topAppBar.listen('MDCTopAppBar:nav', allowInterop((response) {
      drawer.open = !drawer.open;
    }));
  }

  String pathToTitle(String path) {
    switch (path) {
      case '/notes':
        return "Notes";
      case '/todos':
        return "Todos";
      case '/music':
        return "Music";
      case '/stocks':
        return "Stocks";
      default:
        return "Notes";
    }
  }
}
