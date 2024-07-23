import 'package:todo_flutter/Model/model.dart';
import 'package:todo_flutter/redux/actions.dart';

AppState appStateReducer(AppState State, action) {
  return AppState(
    items: itemReducer(State.items, action),
    );
}

List<Item> itemReducer(List<Item> state, action) {
  if (action is AddItemAction){
    return []
    ..addAll(state)
    ..add(Item(id: action.id, body: action.item))
    ;
  }

  if (action is RemoveItemAction) {
    return List.unmodifiable(List.from(state)..remove(action.item));
  }

  if (action is RemoveItemsAction) {
    return List.unmodifiable([]);
  }

  return state;
}