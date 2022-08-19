package com.chainsys.sportsclub.dto;
import java.util.ArrayList;
import java.util.List;
import com.chainsys.sportsclub.model.SponseringDetails;
import com.chainsys.sportsclub.model.Sports;

public class SportsAndSponseringDetailsDTO {
	private Sports sport;
	public Sports getSport() {
		return sport;
	}
	public void setSport(Sports sport) {
		this.sport = sport;
	}

	private List<SponseringDetails> sponserdetail = new ArrayList<>();
	
	public List<SponseringDetails> getSponserdetail() {
		return sponserdetail;
	}
	
	public void addSponseringDetails(SponseringDetails sd)
	{
		sponserdetail.add(sd);
	}	
}

