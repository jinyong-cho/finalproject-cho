package org.kh.lovetest.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class LoveTestController {

   @RequestMapping("/loveTestMain.do")
   public String loveTestMain() {
      return "lovetest/loveTestMain";
   }

   @RequestMapping("/loveTest.do")
   public String loveTest() {
      return "lovetest/loveTest";
   }

   @RequestMapping("/personalityTest.do")
   public String personalityTest() {
      return "lovetest/personalityTest";
   }

   @RequestMapping("/funTest.do")
   public String funTest() {
      return "lovetest/funTest";
   }
   @RequestMapping("/tdtd.do")
   public String tdtd() {
      return "lovetest/tdtd";
   }
   
   
}