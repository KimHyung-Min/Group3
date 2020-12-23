package service;

import model.dao.MemberDAOImpl;
import model.vo.MemberVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service("memberService")
public class MemberServiceImpl implements MemberService{

@Autowired
private MemberDAOImpl memberDao;

        @Override
        public int memberInsert(MemberVO vo) {

                return memberDao.memberInsert(vo);
        }

        @Override
        public MemberVO memberlogin(MemberVO vo) {
                return memberDao.memberlogin(vo);
        }
        @Override
        public void memberupdate(MemberVO vo){
                memberDao.memberlogin(vo);
         }


}