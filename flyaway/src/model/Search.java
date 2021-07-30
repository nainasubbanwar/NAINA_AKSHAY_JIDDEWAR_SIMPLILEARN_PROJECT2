package model;

public abstract class Search {
    public static String date;
    public static String day;
    public static String source;
    public static String destination;
    public static int persons;

    public static String getQuery() {
        return "SELECT * FROM flights WHERE SOURCE = '"+source+"' AND DESTINATION='"+destination+"' AND DAY='"+day+"'";
    }
}