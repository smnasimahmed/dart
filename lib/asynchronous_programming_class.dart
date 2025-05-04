class Todo {
  Todo(
      {required this.userId,
      required this.id,
      required this.title,
      required this.completed});

  factory Todo.fromJson(Map<String, Object?> jsonMapp) {
    return Todo(
        userId: jsonMapp['userId'] as int,
        id: jsonMapp['id'] as int,
        title: jsonMapp['title'] as String,
        completed: jsonMapp['completed'] as bool);
  }
  final int userId;
  final int id;
  final String title;
  final bool completed;

  @override
  String toString() {
    // TODO: implement toString
    return 'userId: $userId\n'
        'id: $id\n'
        'title: $title\n'
        'completed: $completed';
  }
}
