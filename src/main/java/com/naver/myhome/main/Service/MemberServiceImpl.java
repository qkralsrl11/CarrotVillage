package com.naver.myhome.main.Service;

import java.util.Map;

import org.springframework.stereotype.Service;
import com.naver.myhome.main.dao.MemberDAO;
import com.naver.myhome.main.domain.Member;
 
@Service
public class MemberServiceImpl implements MemberService {
    
    MemberDAO memberdao;
    
	@Override
	public void join(Map<String, Object> map, Member member) {
		
	}
 
   
}
