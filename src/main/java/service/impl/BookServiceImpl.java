package service.impl;


import model.dao.impl.BookDAOImpl;
import model.vo.BookVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import service.service.BookService;
import java.util.List;
import java.util.Map;

@Service
public class BookServiceImpl implements BookService {

    @Autowired
    private BookDAOImpl bookdao;

    //도서등록
    @Override
    public void insertBook(BookVO vo) {
        vo.setKeyword(vo.getGenre() + ", " +makeKeyword(vo.getTitle()));
        bookdao.insertBook(vo);
    }

    // 키워드 추출하는 메소드 (제목에서)
    public String makeKeyword(String title) {
        String keyword = "";
        int length = 0;
        for(String key : title.split(" ")) {
            if (key.length() > length) {
                keyword = key;
                length = key.length();
            }
        }
        return keyword;
    }

    //선택한 책 정보 불러오기
    @Override
    public BookVO selectBook(BookVO vo) {

        return bookdao.selectBook(vo);
    }


    //도서 정보 삭제
    @Override
    public void deleteBook(BookVO vo) {
        bookdao.deleteBook(vo);
    }

    //도서 정보 수정
    @Override
    public void updateBook(BookVO vo) {
        bookdao.updateBook(vo);
    }

    //등록된 도서 리스트 불러오기
    @Override
    public List<BookVO> bookList(BookVO vo) {

        return bookdao.bookList(vo);
    }

    @Override
    public List<BookVO> searchBook(Map map) {
        System.out.println("bookService 68Line : " + map.get("sbox"));
        return bookdao.searchBook(map);
    }


    @Override
    public List<Map<String, Object>> getGenreList() {
        return bookdao.getGenreSalesList();
    }

    public List<BookVO> genrebookList(String genre){
        return bookdao.genrebookList(genre);
    }

    @Override
    public List<BookVO> carouselBook() {
        return bookdao.carouselBook();
    }

    @Override
    public List<BookVO> bestBook() {
        return bookdao.bestBook();
    }

    @Override
    public List<BookVO> hotBook() {
        return bookdao.hotBook();
    }
}