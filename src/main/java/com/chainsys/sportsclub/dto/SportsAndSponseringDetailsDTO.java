package com.chainsys.sportsclub.dto;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.chainsys.sportsclub.model.Players;
import com.chainsys.sportsclub.model.PlayersFeesDetails;
import com.chainsys.sportsclub.model.Prizes;
import com.chainsys.sportsclub.model.SponseringDetails;
import com.chainsys.sportsclub.model.Sponsers;
import com.chainsys.sportsclub.model.Sports;

public class SportsAndSponseringDetailsDTO {
	@Autowired
	private Sports sport;
	public Sports getSport() {
		return sport;
	}

	public void setSport(Sports sport) {
		this.sport = sport;
	}

	private List<SponseringDetails> sponserdetail = new ArrayList<SponseringDetails>();
	
	public List<SponseringDetails> getSponserdetail() {
		return sponserdetail;
	}
	
	public void addSponseringDetails(SponseringDetails sd)
	{
		sponserdetail.add(sd);
	}
	
}

