import 'package:upwind_redux/model/app_state.dart';
import 'package:upwind_redux/redux/actions.dart';

AppState reducer (AppState prevState, dynamic action) {
  AppState newState = AppState.fromAppState(prevState);

  if (action is FontSize) {
    newState.sliderFontSize = action.payload;
  } else if (action is Bold) {
    newState.bold = action.payload;
  } else if (action is Italic) {
    newState.italic = action.payload;
  }

  return newState;
}