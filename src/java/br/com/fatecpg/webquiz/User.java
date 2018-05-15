package br.com.fatecpg.webquiz;

import java.util.ArrayList;

public class User {
    private String Username;
    private final ArrayList<Double> pontos = new ArrayList<>();

    public String getUsername() {
        return Username;
    }

    public void setUsername(String Username) {
        this.Username = Username;
    }
}
