package br.com.fatecpg.webquiz;

import java.util.ArrayList;

public class Bd {
    private static final ArrayList<User> user = new ArrayList<>();
    private static final ArrayList<String[]> historico = new ArrayList<>();
    
    public static ArrayList<User> getUser() {
        return user;
    }

    public static void addResult(String username, String grade){
        historico.add(new String[]{ username, grade });
    }

    public static ArrayList<String[]> getHistorico(){
        return historico;
    }
}
