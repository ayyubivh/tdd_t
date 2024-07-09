
class TeacherRating{
   int rating;
  final String question;
  final String questionIndex;

  TeacherRating({required this.question, required this.questionIndex,  this.rating = 0, });
  toJson()=>{
    "rating":rating,
    "question":question,
    "index":questionIndex
  };
}