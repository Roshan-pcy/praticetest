class Question {
  final String question;
  final List<String> options; // Now using a List for options
  final int answer; // Store the correct answer as an index of the list

  Question({
    required this.question,
    required this.options,
    required this.answer, // The index of the correct option in the list
  });
}
