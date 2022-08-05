package com.chainsys.sportsclub.dto;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.chainsys.sportsclub.model.Players;
import com.chainsys.sportsclub.model.PlayersFeesDetails;
import com.chainsys.sportsclub.model.Prizes;
import com.chainsys.sportsclub.model.SponseringDetails;
import com.chainsys.sportsclub.model.Sponsers;

public class SponsersAndSponseringDetailsDTO {
	@Autowired
	private Sponsers spons;
	public Sponsers getSpons() {
		return spons;
	}
	public void setSpons(Sponsers spons) {
		this.spons = spons;
	}
	public List<SponseringDetails> getSponserdetail() {
		return sponserdetail;
	}
	
	private List<SponseringDetails> sponserdetail = new ArrayList<SponseringDetails>();
	public void addSponseringDetails(SponseringDetails sd)
	{
		sponserdetail.add(sd);
	}
	
}

