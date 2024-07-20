package com.phgym.mypage.util;

import java.util.ArrayList;
import java.util.List;

import com.phgym.mypage.model.CheckinHisDTO;

public class MypageStatisticsUtil {

	public double[] dayPercent(List<CheckinHisDTO> checkinHisList) {
		int mon = 0;
		int tue = 0;
		int wed = 0;
		int thu = 0;
		int fri = 0;
		int sat = 0;
		int sun = 0;
		int total = 0;
		
		for(CheckinHisDTO dto : checkinHisList) {
			if(dto.getCheckinDate().toLocalDate().getDayOfWeek().getValue() == 1) {
				mon++;
				total++;
			} else if(dto.getCheckinDate().toLocalDate().getDayOfWeek().getValue() == 2) {
				tue++;
				total++;
			} else if(dto.getCheckinDate().toLocalDate().getDayOfWeek().getValue() == 3) {
				wed++;
				total++;
			} else if(dto.getCheckinDate().toLocalDate().getDayOfWeek().getValue() == 4) {
				thu++;
				total++;
			} else if(dto.getCheckinDate().toLocalDate().getDayOfWeek().getValue() == 5) {
				fri++;
				total++;
			} else if(dto.getCheckinDate().toLocalDate().getDayOfWeek().getValue() == 6) {
				sat++;
				total++;
			} else if(dto.getCheckinDate().toLocalDate().getDayOfWeek().getValue() == 7) {
				sun++;
				total++;
			}
		}
		
		double monPercent = (double)mon / total * 100;
		double tuePercnet = (double)tue / total * 100;
		double wedPercnet = (double)wed / total * 100;
		double thuPercnet = (double)thu / total * 100;
		double friPercnet = (double)fri / total * 100;
		double satPercnet = (double)sat / total * 100;
		double sunPercnet = (double)sun / total * 100;
		
		double[] dayPercnet = {monPercent, tuePercnet, wedPercnet, thuPercnet, friPercnet, satPercnet, sunPercnet};
		return dayPercnet;
	}
	
	public double[] timePercnet(List<CheckinHisDTO> checkinHisList) {
		int section04 = 0;
		int section48 = 0;
		int section812 = 0;
		int section1216 = 0;
		int section1620 = 0;
		int section2024 = 0;
		int total = 0;
		
		for(CheckinHisDTO dto : checkinHisList) {
			if(0 <= dto.getCheckinDate().toLocalTime().getHour() && dto.getCheckinDate().toLocalTime().getHour() < 4) {
				section04++;
				total++;
			} else if(4 <= dto.getCheckinDate().toLocalTime().getHour() && dto.getCheckinDate().toLocalTime().getHour() < 8) {
				section48++;
				total++;
			} else if(8 <= dto.getCheckinDate().toLocalTime().getHour() && dto.getCheckinDate().toLocalTime().getHour() < 12) {
				section812++;
				total++;
			} else if(12 <= dto.getCheckinDate().toLocalTime().getHour() && dto.getCheckinDate().toLocalTime().getHour() < 16) {
				section1216++;
				total++;
			} else if(16 <= dto.getCheckinDate().toLocalTime().getHour() && dto.getCheckinDate().toLocalTime().getHour() < 20) {
				section1620++;
				total++;
			} else if(20 <= dto.getCheckinDate().toLocalTime().getHour() && dto.getCheckinDate().toLocalTime().getHour() < 24) {
				section2024++;
				total++;
			}
		}
		
		double section04Percent = (double)section04 / total * 100;
		double section48Percent = (double)section48 / total * 100;
		double section812Percent = (double)section812 / total * 100;
		double section1216Percent = (double)section1216 / total * 100;
		double section1620Percent = (double)section1620 / total * 100;
		double section2024Percent = (double)section2024 / total * 100;
		
		double[] timePercnet = {section04Percent, section48Percent, section812Percent, section1216Percent, section1620Percent, section2024Percent};
		return timePercnet;
	}
}
