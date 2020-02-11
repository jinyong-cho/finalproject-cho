package org.kh.datecourse.model.service;

import java.util.ArrayList;

import org.kh.datecourse.model.dao.DateCourseDao;
import org.kh.datecourse.model.vo.CheckSearchInfo;
import org.kh.datecourse.model.vo.DateCourse;
import org.kh.datecourse.model.vo.DateCoursePhoto;
import org.kh.datecourse.model.vo.Like;
import org.kh.datecourse.model.vo.PageData;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

@Service("datecourseService")
public class DateCourseService {
   @Autowired
   @Qualifier("datecourseDao")
   DateCourseDao dateCourseDao;

   public int insertDateCourse(DateCourse dCourse) {

      int result = dateCourseDao.insertDateCourse(dCourse);

      return result;
   }

   public PageData selectAllListCourse(int currentPage) {

      PageData pd = new PageData();
      int recordCountPerPage = 10; // 한 페이지당 보여줄 게시물의 갯수

      int start = currentPage * recordCountPerPage - (recordCountPerPage - 1);
      // 한 페이지에서 보여지는 게시물의 첫번째 게시물 1,11,21,31 ...
      int end = currentPage * recordCountPerPage;
      // 한 페이지에서 보여지는 게시물의 마지막 게시물 10,20,30,40...
      CheckSearchInfo checkSearchInfo = new CheckSearchInfo();
      checkSearchInfo.setStart(start);
      checkSearchInfo.setEnd(end);
      ArrayList<DateCourse> dList = dateCourseDao.selectAllListCourse(checkSearchInfo);
      int totalCount = dateCourseDao.totalDateCourseCount();
      // dao에있는 totalDateCourseCount 메소드 호출해서 totalCount에 저장/전체 게시물 갯수
      int totalPage = 0; // 전체 페이지수

      if (totalCount % recordCountPerPage == 0) {
         // 한페이지당 보여줄 게시물 갯수에서 전체게시물 갯수를 나눠서 나머지가 0이면
         totalPage = totalCount / recordCountPerPage;
         // 전체 페이지수 = 전체 게시물 갯수/ 한페이지당 보여줄 게시물수 로 맞춰준당.
         // 왜냐하믄 홀수일 경우 페이지가 하나 더 생겨야 하기 때문에 음..
         // 페이지갯수를 한페이지당 보여줄 게시물수로 전체 게시물 갯수로 나눈걸로 페이지수를 맞춰주면 댕다
      } else {
         totalPage = totalCount / recordCountPerPage + 1;
         // 전체 페이지수 = 전체게시물수/한페이지에서 보여줄 게시물수 +1
         // 그게아니면 막 나머지가 2,3,4 이런 오류 나면 무조건 +1 해줘서 한페이지 더 만들어 준당
      }

      int pageNaviSize = 5;
      // 페이지 네비게이션에서 보여줄 목록의 갯수!?
      int startNavi = ((currentPage - 1) / pageNaviSize) * pageNaviSize + 1;
      // startNavi는 1,2,3,4,5 에서 페이지 네비게이션에서 제일처음 시작하는 1페이지를 말하는거 같당/6,11 요론거
      int endNavi = startNavi + pageNaviSize - 1;
      // endNavi는 마지막5를 말하는거 같당 , 시작하는 navi 1이랑 전체 페이지 navi갯수 5를 더해서 1을 뺴면
      // 5가된당./10,15요론거

      if (endNavi > totalPage) {
         // 만약에 페이지네비에서 마지막이 전체 페이지 갯수보다 크면
         endNavi = totalPage;
         // 이렇게 만들어준다 왜냐하믄 페이지 네비에서 마지막에 표현될 수가 전체 페이지 갯수를 말하는데 그것보다 클 수가 없기 때문이당
      }

      StringBuilder sb = new StringBuilder();
      // StringBuilder는 String과 문자열을 더할 때 새로운 객체를 생성하는게 아니라 기존에 데이터에 더하는것임
      // StringBuilder 객체를 생성한당
      // 주로 append 메소드를 사용해서 문자열을 이어붙인다.
      sb.append("<ul class=\"pagination pagination-lg\">");
      if (startNavi != 1) {
         // 만약 스타트네비가 1이 아니면
         sb.append("<li class=\"page-item\"><a class=\"page-link\" href='/dateCourseList.do?currentPage=" + (startNavi - 1) + "'><</a></li>");
         // 현재페이지링크에서 바로 전 페이지(startNavi-1)이름을 <[이전]으로 해준당
         // 바로 전 페이지로 이동할 수 있게 해주는것이당.
         // 만약 6페이지이면 [이전]을 눌르면 5페이지루 감
      }
      for (int i = startNavi; i <= endNavi; i++) {
         // int형 변수 i가 페이지네비에서 제일처음 보여주는 스타트네비이고, i가 마지막네비랑 작거나 같을때까지 i를 증가시켜준당
         if (i != currentPage) {
            // 만약에 스타트네비가 현재 페이지가 아니라면
            sb.append("<li class=\"page-item\"><a class=\"page-link\" href='/dateCourseList.do?currentPage=" + i + "'>" + i + "</a></li>");
            // 현재 페이지가 1페이지이면 지금 이코드를 쓰면 1이라고 보이공 , 2페이지면 2, 3페이지면 3이라고 보여지는코드 를 이어붙여준당
         } else {
            sb.append("<li class='page-item'>");
            sb.append("<span>" + i + "</span>");
            sb.append("</li>");
            // 만약에 i가 현재 페이지면 현재페이지를 보여주는코드 1페이지면 1, 2페이지면2
         }
      }
      if (endNavi != totalPage) {
         // 만약에 endNavi가 전체페이지수가 아니면
         sb.append("<li class=\"page-item\"><a class=\"page-link\" href='/dateCourseList.do?currentPage=" + (endNavi + 1) + "'>></a></li>");
         // endNavi에 1을 더해준 링크에 다음이라고 이름정해주고 그거눌러주면 다음페이지로 이동, endNavi가 마지막 페이지가 아니기때문이쥐
      }
      sb.append("</ul>");
      pd.setDateCourseNavi(sb.toString());// pd에 값 저장
      pd.setDateCourse(dList); // pd 에 값저장
      return pd; // pd에 저장된 값 리턴~

   }

   // =======================================================================================================

   public DateCourse selectDateCourseContent(int dcNo) {
      dateCourseDao.updateDcViews(dcNo);
      DateCourse dateCourse = dateCourseDao.selectDateCourseContent(dcNo);
      return dateCourse;
   }

   public int updateDateCourseContent(DateCourse dCourse) {
      int result = dateCourseDao.updateDateCourseContent(dCourse);
      return result;
   }

   public int deleteDateCourseContent(int dcNo) {

      int result = dateCourseDao.deleteDateCourseContent(dcNo);
      return result;
   }

   // ===============================전체보기 제목검색 페이징
   // =============================================
   public PageData searchDateCourse(CheckSearchInfo checkSearchInfo, int currentPage) {

      PageData pd = new PageData();
      int recordCountPerPage = 10; // 한 페이지당 보여줄 게시물의 갯수

      int start = currentPage * recordCountPerPage - (recordCountPerPage - 1);
      // 한 페이지에서 보여지는 게시물의 첫번째 게시물 1,11,21,31 ...
      int end = currentPage * recordCountPerPage;
      // 한 페이지에서 보여지는 게시물의 마지막 게시물 10,20,30,40...
      checkSearchInfo.setStart(start);
      checkSearchInfo.setEnd(end);

      ArrayList<DateCourse> dList = dateCourseDao.selectAllListCourse(checkSearchInfo);

      int totalCount = dateCourseDao.searchTotalDateCourseCount(checkSearchInfo);
      // dao에있는 totalDateCourseCount 메소드 호출해서 totalCount에 저장/전체 게시물 갯수
      int totalPage = 0; // 전체 페이지수

      if (totalCount % recordCountPerPage == 0) {
         // 한페이지당 보여줄 게시물 갯수에서 전체게시물 갯수를 나눠서 나머지가 0이면
         totalPage = totalCount / recordCountPerPage;
         // 전체 페이지수 = 전체 게시물 갯수/ 한페이지당 보여줄 게시물수 로 맞춰준당.
         // 왜냐하믄 홀수일 경우 페이지가 하나 더 생겨야 하기 때문에 음..
         // 페이지갯수를 한페이지당 보여줄 게시물수로 전체 게시물 갯수로 나눈걸로 페이지수를 맞춰주면 댕다
      } else {
         totalPage = totalCount / recordCountPerPage + 1;
         // 전체 페이지수 = 전체게시물수/한페이지에서 보여줄 게시물수 +1
         // 그게아니면 막 나머지가 2,3,4 이런 오류 나면 무조건 +1 해줘서 한페이지 더 만들어 준당
      }

      int pageNaviSize = 5;
      // 페이지 네비게이션에서 보여줄 목록의 갯수!?
      int startNavi = ((currentPage - 1) / pageNaviSize) * pageNaviSize + 1;
      // startNavi는 1,2,3,4,5 에서 페이지 네비게이션에서 제일처음 시작하는 1페이지를 말하는거 같당/6,11 요론거
      int endNavi = startNavi + pageNaviSize - 1;
      // endNavi는 마지막5를 말하는거 같당 , 시작하는 navi 1이랑 전체 페이지 navi갯수 5를 더해서 1을 뺴면
      // 5가된당./10,15요론거

      if (endNavi > totalPage) {
         // 만약에 페이지네비에서 마지막이 전체 페이지 갯수보다 크면
         endNavi = totalPage;
         // 이렇게 만들어준다 왜냐하믄 페이지 네비에서 마지막에 표현될 수가 전체 페이지 갯수를 말하는데 그것보다 클 수가 없기 때문이당
      }

      StringBuilder sb = new StringBuilder();
      // StringBuilder는 String과 문자열을 더할 때 새로운 객체를 생성하는게 아니라 기존에 데이터에 더하는것임
      // StringBuilder 객체를 생성한당
      // 주로 append 메소드를 사용해서 문자열을 이어붙인다.
      sb.append("<ul class=\"pagination pagination-lg\">");
      if (startNavi != 1) {
         // 만약 스타트네비가 1이 아니면
         if (checkSearchInfo.getDcType() == null) {
            
            sb.append("<li class=\"page-item\"><a class=\"page-link\" href='/searchDateCourseList.do?currentPage=" + (startNavi - 1) + "&searchValue="
                  + checkSearchInfo.getSearchValue() + "&selectType=" + checkSearchInfo.getSelectType()
                  + "'>[이전]</a></li>");
         }else {
            sb.append("<li class=\"page-item\"><a class=\"page-link\" href='/searchDateCourseList.do?currentPage=" + (startNavi - 1) + "&searchValue="
                  + checkSearchInfo.getSearchValue() + "&selectType=" + checkSearchInfo.getSelectType());

            for (int i = 0; i < checkSearchInfo.getDcType().length; i++) {
               sb.append("&dcType=" + checkSearchInfo.getDcType()[i]);
            }
            for (int i = 0; i < checkSearchInfo.getDcArea().length; i++) {
               sb.append("&dcArea=" + checkSearchInfo.getDcArea()[i]);
            }
            sb.append("&dcCash=" + checkSearchInfo.getDcCash() + "'><</a></li>");
         }
      } 

      if (checkSearchInfo.getDcType() == null) {
         for (int i = startNavi; i <= endNavi; i++) {
            if (i != currentPage) {
               sb.append("<li class=\"page-item\"><a href='/searchDateCourseList.do?currentPage=" + i + "&searchValue="
                     + checkSearchInfo.getSearchValue() + "&selectType=" + checkSearchInfo.getSelectType() + "'>"
                     + i + "</a></li>");
            } else {
               sb.append("<li class='page-item'>");
               sb.append("<span>" + i + "</span>");
               sb.append("</li>");
            }
         }
         if (endNavi != totalPage) {

            sb.append("<li class=\"page-item\"><a class=\"page-link\" href='/searchDateCourseList.do?currentPage=" + (endNavi + 1) + "&searchValue="
                  + checkSearchInfo.getSearchValue() + "&selectType=" + checkSearchInfo.getSelectType()
                  + "'>></a></li>");
         }
      } else {
         for (int i = startNavi; i <= endNavi; i++) {
            if (i != currentPage) {
               sb.append(" <li class=\"page-item\"><a class=\"page-link\" href='/searchDateCourseList.do?currentPage=" + i + "&searchValue="+ checkSearchInfo.getSearchValue() + "&selectType=" + checkSearchInfo.getSelectType());
               for (int j = 0; j < checkSearchInfo.getDcType().length; j++) {
                  sb.append("&dcType=" + checkSearchInfo.getDcType()[j]);
               }
               for (int j = 0; j < checkSearchInfo.getDcArea().length; j++) {
                  sb.append("&dcArea=" + checkSearchInfo.getDcArea()[j]);
               }
               sb.append("&dcCash=" + checkSearchInfo.getDcCash()+"'>"+i+"</a></li>");

            } else {
               sb.append("<li class='page-item'>");
               sb.append("<span>" + i + "</span>");
               sb.append("</li>");
            }
         }

         if (endNavi != totalPage) {
            sb.append("<li class=\"page-item\"><a class=\"page-link\" href='/searchDateCourseList.do?currentPage=" + (endNavi + 1) + "&searchValue="+ checkSearchInfo.getSearchValue() + "&selectType=" + checkSearchInfo.getSelectType());
            for (int i = 0; i < checkSearchInfo.getDcType().length; i++) {
               sb.append("&dcType=" + checkSearchInfo.getDcType()[i]);
            }
            for (int i = 0; i < checkSearchInfo.getDcArea().length; i++) {
               sb.append("&dcArea=" + checkSearchInfo.getDcArea()[i]);
            }   
            sb.append("'>></a></li>");
         }

      }
      sb.append("</ul>");
      pd.setDateCourseNavi(sb.toString());// pd에 값 저장
      pd.setDateCourse(dList); // pd 에 값저장

      return pd; // pd에 저장된 값 리턴~
   }

   // ================================================================================================================================
   public Like selectOneLikes(Like like) {

      Like likeInfo = dateCourseDao.selectOneLikes(like);
      return likeInfo;
   }

   public int insertLikeMemberInfo(Like like) {
      int result2 = dateCourseDao.insertLikeMemberInfo(like);

      return result2;
   }

   public int deleteLikeMemberInfo(Like like) {
      int result = dateCourseDao.deleteLikeMemberInfo(like);
      return result;
   }

   public int updateLikes(Like like) {
      int result3 = dateCourseDao.updateLikes(like);
      return result3;
   }

   public int deleteLikes(Like like) {
      int result4 = dateCourseDao.deleteLikes(like);
      return result4;
   }

   // --------------------------------------------체크박스 선택 후 나오는 결과값 페이징
   // --------------------------------------------
   public PageData selectType(CheckSearchInfo checkSearchInfo, int currentPage) {

      PageData pd = new PageData();
      int recordCountPerPage = 10; // 한 페이지당 보여줄 게시물의 갯수

      int start = currentPage * recordCountPerPage - (recordCountPerPage - 1);
      // 한 페이지에서 보여지는 게시물의 첫번째 게시물 1,11,21,31 ...
      int end = currentPage * recordCountPerPage;

      checkSearchInfo.setStart(start);
      checkSearchInfo.setEnd(end);

      ArrayList<DateCourse> dList = dateCourseDao.selectType(checkSearchInfo);

      int totalCount = dateCourseDao.DateCourseSearchCount(checkSearchInfo);
      // dao에있는 totalDateCourseCount 메소드 호출해서 totalCount에 저장/전체 게시물 갯수
      int totalPage = 0; // 전체 페이지수

      if (totalCount % recordCountPerPage == 0) {
         // 한페이지당 보여줄 게시물 갯수에서 전체게시물 갯수를 나눠서 나머지가 0이면
         totalPage = totalCount / recordCountPerPage;
         // 전체 페이지수 = 전체 게시물 갯수/ 한페이지당 보여줄 게시물수 로 맞춰준당.
         // 왜냐하믄 홀수일 경우 페이지가 하나 더 생겨야 하기 때문에 음..
         // 페이지갯수를 한페이지당 보여줄 게시물수로 전체 게시물 갯수로 나눈걸로 페이지수를 맞춰주면 댕다
      } else {
         totalPage = totalCount / recordCountPerPage + 1;
         // 전체 페이지수 = 전체게시물수/한페이지에서 보여줄 게시물수 +1
         // 그게아니면 막 나머지가 2,3,4 이런 오류 나면 무조건 +1 해줘서 한페이지 더 만들어 준당
      }

      int pageNaviSize = 5;
      // 페이지 네비게이션에서 보여줄 목록의 갯수!?
      int startNavi = ((currentPage - 1) / pageNaviSize) * pageNaviSize + 1;
      // startNavi는 1,2,3,4,5 에서 페이지 네비게이션에서 제일처음 시작하는 1페이지를 말하는거 같당/6,11 요론거
      int endNavi = startNavi + pageNaviSize - 1;
      // endNavi는 마지막5를 말하는거 같당 , 시작하는 navi 1이랑 전체 페이지 navi갯수 5를 더해서 1을 뺴면
      // 5가된당./10,15요론거

      if (endNavi > totalPage) {
         // 만약에 페이지네비에서 마지막이 전체 페이지 갯수보다 크면
         endNavi = totalPage;
         // 이렇게 만들어준다 왜냐하믄 페이지 네비에서 마지막에 표현될 수가 전체 페이지 갯수를 말하는데 그것보다 클 수가 없기 때문이당
      }

      StringBuilder sb = new StringBuilder();
      // StringBuilder는 String과 문자열을 더할 때 새로운 객체를 생성하는게 아니라 기존에 데이터에 더하는것임
      // StringBuilder 객체를 생성한당
      // 주로 append 메소드를 사용해서 문자열을 이어붙인다.
      
      sb.append("<ul class='pagination pagination-lg'>");
      if (startNavi != 1) {
         // 만약 스타트네비가 1이 아니면
         sb.append("<li class=\"page-item\"><a class=\"page-link\" href='/choiceSelect.do?currentPage=" + (startNavi - 1));
         for (int i = 0; i < checkSearchInfo.getDcType().length; i++) {
            sb.append("&dcType=" + checkSearchInfo.getDcType()[i]);
         }
         for (int i = 0; i < checkSearchInfo.getDcArea().length; i++) {
            sb.append("&dcArea=" + checkSearchInfo.getDcArea()[i]);
         }
         sb.append("&dcCash=" + checkSearchInfo.getDcCash() + "'><</a></li>");
         // 현재페이지링크에서 바로 전 페이지(startNavi-1)이름을 <[이전]으로 해준당
         // 바로 전 페이지로 이동할 수 있게 해주는것이당.
         // 만약 6페이지이면 [이전]을 눌르면 5페이지루 감
         // <a
         // href='/choiceSelect.do?currentPage=2&dcType=고기&dcType=곡이&dcArea=느그집&dcCash=5만원'>[이전]</a>
      }

      for (int i = startNavi; i <= endNavi; i++) {
         if (i != currentPage) {
            
            sb.append("<li class=\"page-item\"><a class='page-link' href='/choiceSelect.do?currentPage=" + i);
            for (int j = 0; j < checkSearchInfo.getDcType().length; j++) {
               sb.append("&dcType=" + checkSearchInfo.getDcType()[j]);
            }
            for (int j = 0; j < checkSearchInfo.getDcArea().length; j++) {
               sb.append("&dcArea=" + checkSearchInfo.getDcArea()[j]);
            }
            sb.append("&dcCash=" + checkSearchInfo.getDcCash() + "'>" + i + "</a></li>");
         } else {
            sb.append("<li class=\"page-item\">");
            sb.append("<span class=\"page-link\">" + i + "</span>");
            sb.append("</li>");
         }
      }

      if (endNavi != totalPage) {
         sb.append("<li class=\"page-item\"><a class=\"page-link\" href='/choiceSelect.do?currentPage=" + (endNavi + 1));
         for (int j = 0; j < checkSearchInfo.getDcType().length; j++) {
            sb.append("&dcType=" + checkSearchInfo.getDcType()[j]);
         }
         for (int j = 0; j < checkSearchInfo.getDcArea().length; j++) {
            sb.append("&dcArea=" + checkSearchInfo.getDcArea()[j]);
         }
         sb.append("&dcCash=" + checkSearchInfo.getDcCash() + "'>></a></li>");
      }
      sb.append("</ul>");

      pd.setDateCourseNavi(sb.toString());// pd에 값 저장
      pd.setDateCourse(dList); // pd 에 값저장

      return pd; // pd에 저장된 값 리턴~
   }
   // ==================================================================================================================

   public int removePicture(int dcNo) {
      int result2 = dateCourseDao.removePicture(dcNo);
      return result2;
   }

   public int selectDateCourseDcNo(DateCourse dCourse) {
      return dateCourseDao.selectDateCourseDcNo(dCourse);
   }

   public int insertCommentPhoto(DateCoursePhoto contentPhoto) {
      return dateCourseDao.insertCommentPhoto(contentPhoto);
   }

   public ArrayList<String> selectDateCourseNoPhotoSearch(int dcNo) {
      return (ArrayList<String>)dateCourseDao.selectDateCourseNoPhotoSearch(dcNo);
   }

   public void contentPhotoRemove(String photoOne) {
      dateCourseDao.contentPhotoRemove(photoOne);
   }


}