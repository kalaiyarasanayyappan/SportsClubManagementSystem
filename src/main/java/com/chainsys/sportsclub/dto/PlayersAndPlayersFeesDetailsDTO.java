package com.chainsys.sportsclub.dto;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.chainsys.sportsclub.model.Players;
import com.chainsys.sportsclub.model.PlayersFeesDetails;

public class PlayersAndPlayersFeesDetailsDTO {
	
		@Autowired
		private Players player;
		private List<PlayersFeesDetails> feesdetails = new ArrayList<PlayersFeesDetails>();
		
		public Players getPlayer() {
			return player;
		}
		public void setPlayer(Players player) {
			this.player = player;
		}
		public List<PlayersFeesDetails> getFeesdetails() {
			return feesdetails;
		}
		public void addPlayersandPlayersfeesdetails(PlayersFeesDetails pfd)
		{
			feesdetails.add(pfd);
		}
}
