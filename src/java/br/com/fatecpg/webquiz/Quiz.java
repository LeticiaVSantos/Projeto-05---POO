package br.com.fatecpg.webquiz;
import java.util.ArrayList;

public class Quiz {
    private static ArrayList<Question> test;
    public static ArrayList<Question> getTest(){
        if (test == null){
            test = new ArrayList<>();
            // ADICIONAR QUESTÕES AQUI
            
            test.add(new Question("O Chewbacca é co-piloto de qual nave em Star Wars? ", "Milennium Falcon", new String[]{"Star Destroyer","X-wing","Milennium Falcon"}, true)); 
            test.add(new Question("Qual o planeta que o Mestre Yoda, se exilou, apos a queda dos Jedi ?", "Dagobah", new String[]{"Dagobah", "Tatoine", "Coruscant"},true));
            test.add(new Question("Qual o nome do de batismo de Darth Vander", "Anakin Skywalker", new String[]{"MIchel Temer","Anakin Skywalker","Mark Hamill"}, true));
            test.add(new Question("O que era feito com as Fitas de Video Game quando elas não funcionavam?", "Soprava as Fitas", new String[]{"Soprava as Fitas", "Limpava com alcool isopropilico","Desligava o video game e ia ter vida"}, true));
            test.add(new Question("Qual o nome do metal que está nos ossos de Wolverine", "Adamantium", new String[]{"Aço inoxidavel","Adamantium", "Ferro"}, true));
            test.add(new Question("Qual foi o primeiro Game a ganhar uma versao cinematografica", "Super Mario Bros", new String[]{"Super Mario Bros", "Double Dragon", "Street Fighter"}, true));
            test.add(new Question("Qual o Planeta natal de Spock", "Volcano", new String[]{"Volcano", "Endor", "Jupiter"}, true));
            test.add(new Question("Qual o nome do dragão de O Hobbit", "Smaug", new String[]{"FileZilla","Godzilla","Smaug"}, true));
            test.add(new Question("Quem foi o responsavel pela trilha sonora de Sonic 3 ?", "Michael Jacson",new String[]{"Michael Jacson", "Roberto Carlos", "Produtores da Sega"}, true));
            test.add(new Question("Qual Game de corrida teve como trilha sonora musicas do mundo real?", "Rock n Roll Rancing", new String[]{"Rock n Roll Rancing", "Top Gear", "Need for Speed"}, true));





        }   
        return test;
    }
}