class Note {
  final int? id;
  final String title;
  final String content;
  final DateTime createdAt;
  final int userId; // Thêm userId

  Note({
    this.id,
    required this.title,
    required this.content,
    required this.createdAt,
    required this.userId, // userId là bắt buộc
  });

  factory Note.fromMap(Map<String, dynamic> map) {
    return Note(
      id: map['id'] as int?,
      title: map['title'] ?? 'Untitled',
      content: map['content'] ?? 'No content',
      createdAt: map['createdAt'] != null
          ? DateTime.parse(map['createdAt'])
          : DateTime.now(),
      userId: (map['userId'] != null) ? map['userId'] as int : -1, // Giá trị mặc định
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'title': title,
      'content': content,
      'createdAt': createdAt.toIso8601String(),
      'userId': userId, // Đưa userId vào map
    };
  }
}
