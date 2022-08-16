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
	private Sponsers spons;
	private List<SponseringDetails> sponserdetail = new ArrayList<SponseringDetails>();
	public Sponsers getSpons() {
		return spons;
	}
	public void setSpons(Sponsers spons) {
		this.spons = spons;
	}
	public List<SponseringDetails> getSponserdetail() {
		return sponserdetail;
	}
	public void addSponsersandSponseringdetails( SponseringDetails spd) {
		sponserdetail.add(spd);
	}

	
	
}

