import 'package:accomplisher/models/goals_model.dart';
import 'package:scoped_model/scoped_model.dart';

class AppState {
  bool isLoading;
  // GoalsModel goals = new GoalsModel();

  AppState({
    this.isLoading = false,
  });

  factory AppState.loading() => new AppState(isLoading: true);

  @override
  String toString() {
    return 'AppState(isLoading: $isLoading)';
  }
}