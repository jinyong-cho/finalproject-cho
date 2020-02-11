package org.kh.notice.model.service;

import java.util.ArrayList;

import org.kh.notice.model.dao.NoticeDao;
import org.kh.notice.model.vo.Notice;
import org.kh.notice.model.vo.NoticePageData;
import org.kh.notice.model.vo.NoticePhoto;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

@Service("noticeService")
public class NoticeService {
   @Autowired
   @Qualifier("noticeDao")
   NoticeDao noticeDao;
   
   public NoticePageData selectNoticeList(int currentPage) {
      int numPerPage = 10;
      int start = (currentPage - 1) * numPerPage +1;
      int end = currentPage * numPerPage;
      
      ArrayList<Notice> list = (ArrayList<Notice>)noticeDao.selectNoticeList(start, end);
      
      int totalCount = noticeDao.totalNoticeCount();
      int totalPage = 0;
      
      if(totalCount % numPerPage == 0) {
         totalPage = totalCount / numPerPage;
      }else {
         totalPage = totalCount / numPerPage +1;
      }
      int pageNaviSize = 5;
      
      int startNavi = ((currentPage -1)/pageNaviSize) * pageNaviSize +1;
      int endNavi = startNavi + pageNaviSize - 1;
      
      if(endNavi > totalPage) {
         endNavi = totalPage;
      }
      
      StringBuilder sb = new StringBuilder();
      sb.append(" <ul class=\"pagination\">");
      if(startNavi != 1) {
         sb.append("<li class=\"page-item\"><a class=\"page-link\" href='/noticeList.do?currentPage="+(startNavi -1)+"'>이전</a></li>");
         /*
          * sb.append("<a href='/noticeList.do?currentPage=" + (startNavi
          * -1)+"'>[이전]</a>");
          */
      }
      for(int i = startNavi; i <=endNavi; i++) {
         if(i != currentPage) {
            sb.append("<li  class=\"page-item\"><a class=\"page-link\" href='/noticeList.do?currentPage="+i+"'>"+i+"</a></li>");
            /* sb.append("<a href='/noticeList.do?currentPage=" + i + "'>" + i + "</a>"); */
         }else {
            sb.append("<li class=\"page-item\"><a class=\"page-link\" href='#'>"+i+"</a></li>");
            /* sb.append("<span>" + i + "</span>"); */
         }
      }
      if(endNavi !=totalPage) {
         sb.append("<li class=\"page-item\"><a class=\"page-link\" href='/noticeList.do?currentPage="+(endNavi +1)+"'>다음</a></li>");
         /*
          * sb.append("<a href='noticeList.do?currentPage="+(endNavi + 1) +
          * "'>[다음]</a>");
          */
      }
      sb.append(" </ul>");
      NoticePageData npd = new NoticePageData(list, sb.toString());
      return npd;
   }

   public int writeNotice(Notice notice) {
      int result = noticeDao.writeNotice(notice);
      return result;
   }
   

   public Notice detailNotice(int noticeNo) {
      Notice notice = noticeDao.detailNotice(noticeNo);
      return notice;
   }

   public int updateNotice(Notice notice) {
      int result = noticeDao.updateNotice(notice);
      return result;
   }

   public int deleteNotice(int noticeNo) {
      int result = noticeDao.deleteNotice(noticeNo);
      return result;
   }

   public NoticePageData selectNoticeList(Notice notice, int currentPage) {
      int numPerPage = 10;
      int start = (currentPage - 1) * numPerPage +1;
      int end = currentPage * numPerPage;
      
      notice.setStart(start);
      notice.setEnd(end);
      
      ArrayList<Notice> list = (ArrayList<Notice>)noticeDao.selectNoticeList(notice);
      int totalCount = noticeDao.searchTotalNotice(notice);
      int totalPage = 0;
      
      if(totalCount % numPerPage == 0) {
         totalPage = totalCount / numPerPage;
      }else {
         totalPage = totalCount / numPerPage +1;
      }
      int pageNaviSize = 5;
      
      int startNavi = ((currentPage -1)/pageNaviSize) * pageNaviSize +1;
      int endNavi = startNavi + pageNaviSize - 1;
      
      if(endNavi > totalPage) {
         endNavi = totalPage;
      }
      
      StringBuilder sb = new StringBuilder();
      
      if(startNavi != 1) {
         sb.append("<a href='/searchNotice.do?currentPage=" + (startNavi -1)+"&select="+notice.getSelect()+"&search="+notice.getSearch()+"'>[이전]</a>");
      }
      for(int i = startNavi; i <=endNavi; i++) {
         if(i != currentPage) {
            sb.append("<a href='/searchNotice.do?currentPage=" + i + "&select="+notice.getSelect()+"&search="+notice.getSearch()+"'>" + i + "</a>");
         }else {
            sb.append("<span>" + i + "</span>");
         }
      }
      if(endNavi !=totalPage) {
         sb.append("<a href='/searchNotice.do?currentPage="+(endNavi + 1) +"&select="+notice.getSelect()+"&search="+notice.getSearch()+"'>[다음]</a>");
      }
      
      NoticePageData npd = new NoticePageData(list, sb.toString());
      return npd;
   }

   public int countView(Notice view) {
      int result = noticeDao.countView(view);
      return result;
   }

   public Notice warpNotice(int countNo) {
      return noticeDao.warpNotice(countNo);
   }

   public Notice maxCountNo() {
      return noticeDao.maxCountNo();
   }

   public int selectNoticeNoticeNo(Notice n) {
      return noticeDao.selectNoticeNoticeNo(n);
   }

   public int insertCommentPhoto(NoticePhoto contentPhoto) {
      return noticeDao.insertCommentPhoto(contentPhoto);
   }

   public ArrayList<String> selectNoticeNoPhotoSearch(int noticeNo) {
      return (ArrayList<String>)noticeDao.selectNoticePhotoSearch(noticeNo);
   }

   public void contentPhotoRemove(String photoOne) {
      noticeDao.contentPhotoRemove(photoOne);
   }

   public Notice updatePageNotice(int noticeNo) {
      return noticeDao.updatePageNotice(noticeNo);
   }




}