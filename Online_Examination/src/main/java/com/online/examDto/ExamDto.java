package com.online.examDto;

public class ExamDto {
 private int question_id;
 private String exam_id;
 private String questions;
 private String OptionA;
 private String OptionB;
 private String OptionC;
 private String OptionD;
 private String correct_option;
public int getQuestion_id() {
	return question_id;
}
public void setQuestion_id(int question_id) {
	this.question_id = question_id;
}
public String getExam_id() {
	return exam_id;
}
public void setExam_id(String exam_id) {
	this.exam_id = exam_id;
}
public String getQuestions() {
	return questions;
}
public void setQuestions(String questions) {
	this.questions = questions;
}
public String getOptionA() {
	return OptionA;
}
public void setOptionA(String optionA) {
	OptionA = optionA;
}
public String getOptionB() {
	return OptionB;
}
public void setOptionB(String optionB) {
	OptionB = optionB;
}
public String getOptionC() {
	return OptionC;
}
public void setOptionC(String optionC) {
	OptionC = optionC;
}
public String getOptionD() {
	return OptionD;
}
public void setOptionD(String optionD) {
	OptionD = optionD;
}
public String getCorrect_option() {
	return correct_option;
}
public void setCorrect_option(String correct_option) {
	this.correct_option = correct_option;
}
@Override
public String toString() {
	return "ExamDto [question_id=" + question_id + ", exam_id=" + exam_id + ", questions=" + questions + ", OptionA="
			+ OptionA + ", OptionB=" + OptionB + ", OptionC=" + OptionC + ", OptionD=" + OptionD + ", correct_option="
			+ correct_option + "]";
}
 
 
 
}
