package br.com.fatecpg.webquiz;
import java.util.ArrayList;

public class Quiz {
    private static ArrayList<Question> test;
    public static ArrayList<Question> getTest(){
        if (test == null){
            test = new ArrayList<>();
            // ADICIONAR QUESTÕES AQUI
        }
        return test;
    }
}