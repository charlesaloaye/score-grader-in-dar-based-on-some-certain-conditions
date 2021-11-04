// The main method(function)
int main(){
// Creating New Object of the ScoreGrader Class 
var scoreGrader = ScoreGrader();
//   user can input percentage score here
  scoreGrader.studentPercentageScore = 65;
//   user can input average class score here
  scoreGrader.studentClassAverageScore = 70;
//   subtracting from the average class score based on the second condition
  scoreGrader.avgClassScoreRange = scoreGrader.studentClassAverageScore - (scoreGrader.avgClassScorePoints);
//   Output
  print(scoreGrader.getScoreInfo());
}

// ScoreGrader Class
class ScoreGrader{
//   declaring properties
  int studentPercentageScore;
  int studentClassAverageScore; 
  int avgClassScoreRange;
  int avgClassScorePoints = 5; //score points to remove from average score
//   a method to get the score information
 int getScoreInfo(){
//   Checking if the percentage score is greater or thesame with 60
    if(studentPercentageScore >= 60){
/*    Validating whether the class average score is greater or thesame with 70 
 *    and the student percentage score is thesame with class score range which is 
 *    removing 5 from average class score
*/
      if(studentClassAverageScore == 70 && studentPercentageScore == avgClassScoreRange){
         print("This student has passed the semester"); 
      }
/*    Validating whether the class average score is 50
*     and the student percentage score is thesame or higher than 60
*/
      else if(studentClassAverageScore == 50  && studentPercentageScore >= 60){
         print("This student has passed the semester"); 
      }
      else{
      
      print("This student has failed the semester");
    }
    } 
     else{
      print("This student has failed the semester");
    }
   return studentClassAverageScore;
 }
  
}
