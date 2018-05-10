package br.com.fatecpg.webquiz;

public class Question {
    private String question, answer, alternatives[];

    public Question(String question, String answer, String[] alternatives) {
        this.question = question;
        this.answer = answer;
        this.alternatives = alternatives;
    }

    public String getQuestion() { return question; }
    public void setQuestion(String question) { this.question = question; }
    public String getAnswer() { return answer; }
    public void setAnswer(String answer) { this.answer = answer; }
    public String[] getAlternatives() { return alternatives; }
    public void setAlternatives(String[] alternatives) { this.alternatives = alternatives; }
}