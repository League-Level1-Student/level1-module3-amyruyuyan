package _06_gridworld;

import java.awt.Color;

import info.gridworld.actor.Bug;
import info.gridworld.actor.Flower;
import info.gridworld.grid.Location;
import info.gridworld.world.World;

public class GridWorld {
public static void main(String[] args) {
	World World = new World();
	World.show();
	
	Bug bug1 = new Bug();
	Bug bug2 = new Bug();
	bug2.setColor(Color.blue);
	
	Location location1 = new Location(6, 6);
	World.add(location1, bug1);
	
	Location location2 = new Location(3, 8);
	World.add(location2, bug2);
	bug2.turn();
	bug2.turn();
	
	Flower flower1 = new Flower();
	Location location3 = new Location(6, 7);
	World.add(location3, flower1);
	
	Flower flower2 = new Flower();
	Location location4 = new Location(6, 5);
	World.add(location4, flower2);
	
	for(int i = 0; i <100; i ++) {
	World.add(World.getRandomEmptyLocation(), new Flower());	
	}
	
	
	
	
	
}
}
