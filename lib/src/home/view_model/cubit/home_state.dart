part of 'home_cubit.dart';

class HomeState extends Equatable {
  HomeState(
      {this.selectedIndex = 0, this.widgetLayout = const MainBooksLayout()});
  final int selectedIndex;
  final Widget widgetLayout;

  HomeState copyWith({int? selectedIndex, Widget? widgetLayout}) {
    return HomeState(
        selectedIndex: selectedIndex ?? this.selectedIndex,
        widgetLayout: widgetLayout ?? this.widgetLayout);
  }

  @override
  List<Object> get props => [selectedIndex, widgetLayout];
}
