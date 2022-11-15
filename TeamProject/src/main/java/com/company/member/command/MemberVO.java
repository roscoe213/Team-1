package com.company.member.command;

import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class MemberVO {
	
	private String email;
	private String pw;
	private String name;
	private String nickName;
	private Date regDate;
	private int admin;

}