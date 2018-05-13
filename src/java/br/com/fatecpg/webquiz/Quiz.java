package br.com.fatecpg.webquiz;
import java.util.ArrayList;

public class Quiz {
    private static ArrayList<Question> test;
    public static ArrayList<Question> getTest(){
        if (test == null){
            test = new ArrayList<>();
            test.add(new Question("O Chewbacca é co-piloto de qual nave em Star Wars?", "Milennium Falcon", new String[]{"Star Destroyer","X-wing","Milennium Falcon"}, true)); 
            test.add(new Question("Em qual planeta o Mestre Yoda se exilou apos a queda dos Jedi?", "Dagobah", new String[]{"Dagobah", "Tatooine", "Coruscant"},true));
            test.add(new Question("Qual o nome de batismo do Darth Vader?", "Anakin Skywalker", new String[]{"Michel Temer","Anakin Skywalker","Mark Hamill"}, true));
            test.add(new Question("O que era feito com as fitas (ou cartuchos) de videogame quando elas não funcionavam?", "Assopravam-se as fitas", new String[]{"Assopravam-se as fitas", "Limpavam-se as fitas com álcool isopropílico","Desligava-se o video game e ia viver"}, true));
            test.add(new Question("Qual o nome do metal que está nos ossos do Wolverine?", "Adamantium", new String[]{"Aço inoxidável","Adamantium", "Ferro"}, true));
            test.add(new Question("Qual foi o primeiro jogo a ganhar uma versao cinematográfica?", "Super Mario Bros", new String[]{"Super Mario Bros", "Double Dragon", "Street Fighter"}, true));
            test.add(new Question("Qual o Planeta natal do Spock?", "Volcano", new String[]{"Volcano", "Endor", "Júpiter"}, true));
            test.add(new Question("Qual o nome do dragão de O Hobbit?", "Smaug", new String[]{"FileZilla","Godzilla","Smaug"}, true));
            test.add(new Question("Quem foi o responsável pela trilha sonora de Sonic 3?", "Michael Jackson",new String[]{"Michael Jackson", "Roberto Carlos", "Produtores da Sega"}, true));
            test.add(new Question("Qual jogo de corrida teve como trilha sonora músicas do mundo real?", "Rock n Roll Racing", new String[]{"Rock n Roll Racing", "Top Gear", "Need for Speed"}, true));
        }   
        return test;
    }
}