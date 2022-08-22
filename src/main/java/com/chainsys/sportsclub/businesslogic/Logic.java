package com.chainsys.sportsclub.businesslogic;

import java.time.LocalDate;

public class Logic {
	private Logic() {
		
	}
	public static LocalDate getMinAge() {
        LocalDate date = LocalDate.now();
        return date.minusYears(16);
    }
    public static LocalDate getMaxAge() {
        LocalDate date = LocalDate.now();
        return date.minusYears(45);
    }


}
