package com.human.java.domain;

import lombok.Data;

@Data
public class MemberVO {
	// @@2 롬북설정
	// getter / setter / toString/ 생성자가 다 여기에 있는 것
	private String userId;
	private String userPass;
	private String userName;
	private String userNo;
}
