import 'package:angular_router/angular_router.dart';

import 'route_paths.dart';
import 'mid/notes_component.template.dart' as notes_template;
import 'mid/todos_component.template.dart' as todos_template;
import 'mid/music_component.template.dart' as music_template;
import 'mid/stocks_component.template.dart' as stocks_template;

export 'route_paths.dart';

class Routes {
  static final root = RouteDefinition.redirect(
    path: '',
    redirectTo: RoutePaths.notes.toUrl(),
  );
  static final notes = RouteDefinition(
      routePath: RoutePaths.notes,
      component: notes_template.NotesComponentNgFactory);
  static final todos = RouteDefinition(
      routePath: RoutePaths.todos,
      component: todos_template.TodosComponentNgFactory);
  static final music = RouteDefinition(
      routePath: RoutePaths.music,
      component: music_template.MusicComponentNgFactory);
  static final stocks = RouteDefinition(
      routePath: RoutePaths.stocks,
      component: stocks_template.StocksComponentNgFactory);

  static final all = <RouteDefinition>[root, notes, todos, music, stocks];
}
