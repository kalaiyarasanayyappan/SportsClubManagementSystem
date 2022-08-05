package com.chainsys.sportsclub.dto;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.chainsys.sportsclub.model.Players;
import com.chainsys.sportsclub.model.PlayersFeesDetails;
import com.chainsys.sportsclub.model.Prizes;

public class PlayersAndPlayersPrizeDetailsDTO {
	@Autowired
	private Players play;
	private List<Prizes> prizedetails = new ArrayList<Prizes>();
	
	public Players getPlay() {
		return play;
	}
	public void setPlayer(Players play) {
		this.play = play;
	}
	public List<Prizes> getPrizedetails() {
		return prizedetails;
	}
	public void addPlayersandPrizedetails(Prizes prd)
	{
		prizedetails.add(prd);
	}
}
