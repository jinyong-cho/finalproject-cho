package org.kh.notice.model.dao;

import java.util.ArrayList;
import java.util.List;

import org.kh.notice.model.vo.Notice;
import org.kh.notice.model.vo.NoticePhoto;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

@Repository("noticeDao")
public class NoticeDao {
   @Autowired
   @Qualifier("sqlSessionTemplate")
   SqlSessionTemplate sqlSession;
   
   public int totalNoticeCount() {
      return sqlSession.selectOne("notice.totalNotice");
   }
   
   public int searchTotalNotice(Notice notice) {
      return sqlSession.selectOne("notice.searchTotalNotice",notice);
   }

   public List<Notice> selectNoticeList(int start, int end) {
      Notice n = new Notice();
      n.setStart(start);
      n.setEnd(end);
      return sqlSession.selectList("notice.selectNoticeList",n);
   }

   
   public int writeNotice(Notice notice) {
      return sqlSession.insert("notice.writeNotice",notice);
   }
   
   public Notice detailNotice(int noticeNo) {
      return sqlSession.selectOne("notice.detailNotice",noticeNo);
   }

   public int updateNotice(Notice notice) {
      return sqlSession.update("notice.updateNotice",notice);
   }

   public int deleteNotice(int noticeNo) {
      return sqlSession.delete("notice.deleteNotice",noticeNo);
   }

   public List<Notice> selectNoticeList(Notice notice) {
      return sqlSession.selectList("notice.selectNoticeList",notice);
   }

   public int countView(Notice view) {
      return sqlSession.update("notice.countView",view);
   }

   public Notice warpNotice(int countNo) {
      return sqlSession.selectOne("notice.warpNotice",countNo);
      
   }

   public Notice maxCountNo() {
      return sqlSession.selectOne("notice.maxCountNo");
   }

   public int selectNoticeNoticeNo(Notice n) {
      return sqlSession.selectOne("notice.selectNoticeNoticeNo",n);
   }

   public int insertCommentPhoto(NoticePhoto contentPhoto) {
      return sqlSession.insert("notice.insertCommentPhoto", contentPhoto);
   }

   public List<String> selectNoticePhotoSearch(int noticeNo) {
      return sqlSession.selectList("notice.selectNoticeNoPhotoSearch", noticeNo);
   }

   public void contentPhotoRemove(String photoOne) {
      sqlSession.delete("notice.contentPhotoRemove", photoOne);
   }

   public Notice updatePageNotice(int noticeNo) {
      return sqlSession.selectOne("notice.updatePageNotice",noticeNo);
   }



}