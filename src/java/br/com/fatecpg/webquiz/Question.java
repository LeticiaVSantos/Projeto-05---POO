package br.com.fatecpg.webquiz;

public class Question {
    private String question, answer, alternatives[];
    private boolean flag;    
    
    public Question(String question, String answer, String[] alternatives, boolean flag) {
        this.question = question;
        this.answer = answer;
        this.alternatives = alternatives;
        this.flag = flag;
    }

    public String getQuestion() { return question; }
    public void setQuestion(String question) { this.question = question; }
    public String getAnswer() { return answer; }
    public void setAnswer(String answer) { this.answer = answer; }
    public String[] getAlternatives() { return alternatives; }
    public void setAlternatives(String[] alternatives) { this.alternatives = alternatives; }

    public boolean getFlag() {
        return flag;
    }

    public void setFlag(boolean flag) {
        this.flag = flag;
    }
}