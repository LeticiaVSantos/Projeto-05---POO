package br.com.fatecpg.webquiz;

import java.util.ArrayList;

public class Bd {
    private static final ArrayList<User> user = new ArrayList<>();

    public static ArrayList<User> getUser() {
        return user;
    }
}
