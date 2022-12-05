package com.company.controller;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.nio.file.Files;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.UUID;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.company.member.command.MemberFileDTO;
import com.company.member.command.MemberVO;
import com.company.member.service.MemberService;

import net.coobird.thumbnailator.Thumbnailator;

@Controller
@RequestMapping("/member/*")
public class MemberController {

	/*
	 * 테이블 create table members( email varchar2(50) primary key, pw varchar2(30) not
	 * null, name varchar2(30) not null, nickname varchar2(30) unique not null,
	 * regdate date default sysdate );
	 * 
	 * "org.zerock.member.command.MemberVO"를 생성
	 * 
	 */

	@Autowired
	public MemberService service;
	
	// 업로드 폴더 생성
	private String getFolder() {
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		Date date = new Date();
		String str =  sdf.format(date);
		return str.replace("-", File.separator);
	}
	
	// 이미지 파일 판단
	private boolean checkImageType(File file) {
		try {
			String contentType = Files.probeContentType(file.toPath());
			
			return contentType.startsWith("image");
		} catch (IOException e) {
			e.getStackTrace();
		}
		return false;
	}
	

	
	// 로그인 회원가입 페이지
	@RequestMapping("/join_loginPage")
	public String loginPage() {
		return "/member/join_loginPage";
	}
	
	//업데이트 페이지 
		@RequestMapping(value="/updatePage",method=RequestMethod.GET)
		public String updatePage(HttpSession session,MemberVO vo) {
		
			if(session.getAttribute("user_email")==null) {
				return "member/join_loginPage";
			}
			//mapper.updateMembers(vo);
			return "member/updatePage";
		}
	
	// 삭제 페이지
	@RequestMapping(value="/deletePage",method=RequestMethod.GET)
	public String deletePage(HttpSession session) {
		if(session.getAttribute("user_email")==null) {
			return "member/join_loginPage";
		}
		return "member/deletePage";
	}
	
	//마이페이지
	@RequestMapping(value="/myPage",method=RequestMethod.GET)
	public String myPage(HttpSession session) {
		
		if(session.getAttribute("user_email")==null) {
			return "member/join_loginPage";
		}		
		return "member/myPage";				
	}
	
	//마이페이지
		@RequestMapping(value="/confirmForm",method=RequestMethod.POST)
		public String confirm(MemberVO vo, HttpSession session,RedirectAttributes ra) {
			int result = service.confirm(vo);
			
			if (result == 1) {				
				return "member/pwUpdatePage"; // Home으로 이동
			} else {
				ra.addFlashAttribute("msg", "아이디 혹은 비밀번호를 확인하세요.");
				return "member/confirmPage";
				
			}
		}
	
	
	//비번 변경페이지
		@RequestMapping(value="/pwUpdatePage",method=RequestMethod.GET)
		public String pwUpdatePage(HttpSession session) {
			
			if(session.getAttribute("user_email")==null) {
				return "member/join_loginPage";
			}		
			return "member/confirmPage";				
		}

	// 로그인 폼 처리
	@RequestMapping("/loginForm")
	public String loginForm(MemberVO vo, HttpSession session, RedirectAttributes RA) {

		// 로그인 구동을 구현하세요!!
		// 서비스 영역에 login()를 만들어서 동작하게 해주세요
		// 마이바티스에서 login()를 인터페이스에 구현하고, 동작하게 하세요!
		MemberVO result = service.login(vo);

		if (result != null) {
			// 로그인 성공시 동작
			session.setAttribute("user_email", result.getEmail());
			session.setAttribute("user_nick", result.getNickName());
			session.setAttribute("user_name", result.getName());
			session.setAttribute("user_admin", result.getAdmin());
			System.out.println();
			return "redirect:/"; // Home으로 이동
		} else {
			// 로그인 실패시 동작
			RA.addFlashAttribute("msg", "아이디 혹은 비밀번호를 확인하세요!"); // 1회성 데이터에 msg저장
			return "redirect:/member/join_loginPage";
		}

	}
	
	// 회원가입 처리
	@RequestMapping("/joinForm")
	public String joinForm(MemberVO vo, RedirectAttributes ra) {
		int result = service.join(vo);
		System.out.println(result);

		if (result == 1) {
			ra.addFlashAttribute("회원가입 성공");
		} else {
			ra.addFlashAttribute("회원가입 실패");
		}
		return "redirect:/";
	}
	
	//로그아웃 처리 
		@RequestMapping("/logout")
		public String logout(HttpSession session){
			session.invalidate();
			return "redirect:/";
		}
		
	// 이메일 중복 체크
		@RequestMapping(value = "/checkEmail", method = RequestMethod.POST)
		@ResponseBody
		public int checkEmail(@RequestParam("email") String email) {
			System.out.println("컨트롤러"+email);
			int result = service.emailCheck(email);
			System.out.println(result);
			return result;
		}
		
	//	닉네임 중복 체크
		@RequestMapping(value = "/checkNickName", method = RequestMethod.POST)
		@ResponseBody
		public int checkNickName(@RequestParam("nickName") String nickName) {
			System.out.println(nickName);
			int result = service.nickNameCheck(nickName);
			System.out.println(result);
			return result;
		}			
		
		@RequestMapping("/deleteForm")
		public String deleteForm(HttpSession session,MemberVO vo) {
		
		
		service.deleteMembers(vo);
		session.removeAttribute("user_email");
		session.invalidate();
		return "redirect:/";
		
	}
		@RequestMapping("/updateForm")
		public String updateForm(HttpSession session,MemberVO vo) {
			
			service.updateMembers(vo);
			session.setAttribute("user_nick", vo.getNickName());
			return "redirect:/member/myPage";
		}
		
		@RequestMapping("/pwUpdateForm")
		public String pwUpdateForm(HttpSession session,MemberVO vo) {
			
			service.pwUpdate(vo);
			
			return "redirect:/member/myPage";
		}
		
		@RequestMapping("/forgotPassword")
		public String forgotPassword(HttpSession session,MemberVO vo) {
			return "member/forgotPassword";
			
		}
		@RequestMapping("/findPwForm")
		public String findPwForm(MemberVO vo) {
			int result = service.findPw(vo);
			if(result == 1) {
			System.out.println("yes");
			return "member/newPassword";
			}else {
				System.out.println("no");
				return "redirect:/member/join_loginPage";
			}
			
		}
		
		@RequestMapping("/newpwUpdateForm")
		public String newpwUpdateForm(MemberVO vo) {
			
			int result = service.pwUpdate(vo);
			if(result == 1) {
				System.out.println("yes");
				}else {
					System.out.println("no");
				}
			return "redirect:/";
		}
		
		@GetMapping("/uploadAjax")
		public String uploadAjax() {
			System.out.println("upload ajax");
			return "member/uploadAjax";
		}
		
	
		@PostMapping(value = "/uploadAjaxAction", produces = MediaType.APPLICATION_JSON_UTF8_VALUE)
		@ResponseBody
		public ResponseEntity<List<MemberFileDTO>> uploadAjaxAction(MultipartFile[] uploadFile) {
			
			List<MemberFileDTO> list = new ArrayList<>();
			String uploadFolder = "C:\\upload";
			
			String uploadFolderPath = getFolder();
			
			File uploadPath = new File(uploadFolder, uploadFolderPath);
			System.out.println("upload path : " + uploadPath);
			
			if (uploadPath.exists() == false) {
				uploadPath.mkdirs();
			}
			
			for (MultipartFile multipartFile: uploadFile) {
				MemberFileDTO mfDTO = new MemberFileDTO();
				
				String uploadFileName = multipartFile.getOriginalFilename();
				
				uploadFileName = uploadFileName.substring(uploadFileName.lastIndexOf("\\")+1);
				System.out.println("only file name : " + uploadFileName);
				mfDTO.setFileName(uploadFileName);
				
				UUID uuid = UUID.randomUUID();
				uploadFileName = uuid.toString() + "_" + uploadFileName;
				
				
				try {
					File saveFile = new File(uploadPath, uploadFileName);
					multipartFile.transferTo(saveFile);
					
					mfDTO.setUuid(uuid.toString());
					mfDTO.setUploadPath(uploadFolderPath);
					
					if(checkImageType(saveFile)) {
						mfDTO.setImage(true);
						FileOutputStream thumbnail = new FileOutputStream(new File(uploadPath, "s_" + uploadFileName));
						Thumbnailator.createThumbnail(multipartFile.getInputStream(), thumbnail, 100,100);
						thumbnail.close();
					}
					
					list.add(mfDTO);
					
				} catch (Exception e) {
					e.getStackTrace();
				}
			}
			return new ResponseEntity<>(list, HttpStatus.OK);
			
		}
		
		// 이미지 데이터 전송 코드
		@GetMapping("/display")
		@ResponseBody
		public ResponseEntity<byte[]> getFile(String fileName){
			System.out.println("fileName : " + fileName);
			File file = new File("c:\\upload\\" + fileName);
			System.out.println("file : " + file);
			ResponseEntity<byte[]> result = null;
			
			try {
				HttpHeaders header = new HttpHeaders();
				
				header.add("Content-Type", Files.probeContentType(file.toPath()));
				result = new ResponseEntity<>(FileCopyUtils.copyToByteArray(file),header,HttpStatus.OK);
			} catch (IOException e) {
				e.printStackTrace();
			}
			return result;
		}
		
		@RequestMapping("/imgRegister")
		public String imgRegister() {
			return "/member/imgRegister";
		}
		
}



