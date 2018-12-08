package com.spirngweb.model;

import org.springframework.stereotype.Repository;

@Repository
public class TeacherCounseling {

	private String day;
	private String t_initial_id;
	private String time1;
	private String time2;
	private String time3;
	private String time4;
	private String time5;
	private String time6;

	public String getDay() {
		return day;
	}

	public TeacherCounseling() {
		super();
	}

	public TeacherCounseling(String day, String t_initial_id, String time1, String time2, String time3, String time4,
			String time5, String time6) {
		this.day = day;
		this.t_initial_id = t_initial_id;
		this.time1 = time1;
		this.time2 = time2;
		this.time3 = time3;
		this.time4 = time4;
		this.time5 = time5;
		this.time6 = time6;
	}

	public TeacherCounseling(String time1, String time2, String time3, String time4, String time5, String time6) {
		this.time1 = time1;
		this.time2 = time2;
		this.time3 = time3;
		this.time4 = time4;
		this.time5 = time5;
		this.time6 = time6;
	}

	

	public String getT_initial_id() {
		return t_initial_id;
	}

	public void setT_initial_id(String t_initial_id) {
		this.t_initial_id = t_initial_id;
	}

	public String getTime1() {
		return time1;
	}

	public void setTime1(String time1) {
		this.time1 = time1;
	}

	public String getTime2() {
		return time2;
	}

	public void setTime2(String time2) {
		this.time2 = time2;
	}

	public String getTime3() {
		return time3;
	}

	public void setTime3(String time3) {
		this.time3 = time3;
	}

	public String getTime4() {
		return time4;
	}

	public void setTime4(String time4) {
		this.time4 = time4;
	}

	public String getTime5() {
		return time5;
	}

	public void setTime5(String time5) {
		this.time5 = time5;
	}

	public String getTime6() {
		return time6;
	}

	public void setTime6(String time6) {
		this.time6 = time6;
	}

	public void setDay(String day) {
		this.day = day;
	}

	@Override
	public String toString() {
		return "Teacher [day=" + day + ", t_initial_id=" + t_initial_id + ", time1=" + time1 + ", time2=" + time2
				+ ", time3=" + time3 + ", time4=" + time4 + ", time5=" + time5 + ", time6=" + time6 + ", getDay()="
				+ getDay() + ", getT_initial_id()=" + getT_initial_id() + ", getTime1()=" + getTime1() + ", getTime2()="
				+ getTime2() + ", getTime3()=" + getTime3() + ", getTime4()=" + getTime4() + ", getTime5()="
				+ getTime5() + ", getTime6()=" + getTime6() + "]";
	}

	
}
