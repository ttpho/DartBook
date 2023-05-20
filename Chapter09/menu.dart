class Menu {
  int? id;
  int? groupId;
  Menu({this.id, this.groupId});

  @override
  noSuchMethod(Invocation invocation) {
    if (invocation.memberName == #getId) {
      return id;
    }
    return super.noSuchMethod(invocation);
  }
}

void main(List<String> args) {
  dynamic menu = Menu(id: 0x0, groupId: 0x12);
  print(menu.getId()); // 0
  print(menu.getGroupId()); // NoSuchMethodError
}
