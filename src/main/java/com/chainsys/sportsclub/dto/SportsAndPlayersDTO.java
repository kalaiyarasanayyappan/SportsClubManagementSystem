package com.chainsys.sportsclub.dto;

import java.util.ArrayList;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;

import com.chainsys.sportsclub.model.Players;

import com.chainsys.sportsclub.model.Sports;

public class SportsAndPlayersDTO {
	@Autowired
	private Sports sport;
	
	public Sports getSport() {
		return sport;
	}
	public void setSport(Sports sport) {
		this.sport = sport;
	}
	private List<Players> playerdetail = new ArrayList<Players>();
	
	
	public List<Players> getPlayerdetail() {
		return playerdetail;
	}
	
	public void addPlayersDetails(Players pl)
	{
		playerdetail.add(pl);
	}
	
}


