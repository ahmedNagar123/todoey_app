class TodoeyModel {
  final String name;
  bool isCheck;
  int index;

  TodoeyModel({this.name, this.isCheck = false});

  void toggle() {
    isCheck = !isCheck;
  }
}
