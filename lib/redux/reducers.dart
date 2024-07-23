import 'package:todo_flutter/Model/model.dart';
import 'package:todo_flutter/redux/actions.dart';

AppState appStateReducer(AppState State, action) {
  return AppState(
    items: itemReducer(State.items, action),
    );
}

List<Item> itemReducer(List<Item> state, action) {
  if (action is AddItemAction){
    return [];
  }

  return state;
}