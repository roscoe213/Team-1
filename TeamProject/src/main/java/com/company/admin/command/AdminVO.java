package com.company.admin.command;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class AdminVO {
	
	private int nno;
	private String name;
	private String addr;
	private String link;
	private int lnum;
	private int fanum;
	private String ilink;

}
