package _05_netflix;

public class Netflix {
public static void main(String[] args) {
Movie EndGame = new Movie("EndGame", 8);	
Movie FarFromHome = new Movie("FarFromHome", 7);	
Movie  IT = new Movie("IT", 7);	
Movie Jumanji = new Movie("Jumanji", 6);
Movie NightmareBeforeChristmas = new Movie("NightmareBeforeChristmas", 8);
EndGame.getTicketPrice();

NetflixQueue netflix = new NetflixQueue();
netflix.addMovie(EndGame);
netflix.addMovie(FarFromHome);
netflix.addMovie(IT);
netflix.addMovie(Jumanji);
netflix.addMovie(NightmareBeforeChristmas);

System.out.println(EndGame);
System.out.println(FarFromHome);
System.out.println(IT);
System.out.println(Jumanji);
System.out.println(NightmareBeforeChristmas);
netflix.sortMoviesByRating();
System.out.println("The best movie is " + .get(1).getTitle);
}
}
