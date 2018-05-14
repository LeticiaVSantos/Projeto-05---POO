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
    
    public void recordPontos(double media){
        pontos.add(media);
    }
    
    public double getMedia(){
        double soma = 0.0;
        for (int i = 0; i < pontos.size(); i++){
            soma += pontos.get(i);
        }
        return soma / (double) (pontos.size());
    }
}
