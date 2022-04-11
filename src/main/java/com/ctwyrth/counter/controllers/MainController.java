package com.ctwyrth.counter.controllers;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MainController {

    @RequestMapping("/")
    public String index(HttpSession session) {
        if (session.getAttribute("counter") == null) {
            session.setAttribute("counter", 0);
        } else {
            Integer tempCount = (Integer) session.getAttribute("counter");
            session.setAttribute("counter", tempCount + 1);
        }
        return "index.jsp";
    }
    
    @RequestMapping("/counter")
    public String counter(HttpSession session, Model model) {
    	Integer indexPageCount = (Integer) session.getAttribute("counter");
    	model.addAttribute("count", indexPageCount);
    	return "counter.jsp";
    }
    
    @RequestMapping("/addtwo")
    public String addtwo(HttpSession session) {
    	if (session.getAttribute("counter") == null) {
            session.setAttribute("counter", 2);
        } else {
            Integer tempCount = (Integer) session.getAttribute("counter");
            session.setAttribute("counter", tempCount + 2);
        }
        return "index.jsp";
    }
    
    @RequestMapping("/reset")
    public String reset(HttpSession session) {
    	session.setAttribute("counter", 0);
    	return "index.jsp";
    }
    
    @RequestMapping("/reset2")
    public String reset(HttpSession session, Model model) {
    	session.setAttribute("counter", 0);
    	Integer tempCount = (Integer) session.getAttribute("counter");
    	model.addAttribute("count", tempCount);
    	return "counter.jsp";
    }

}