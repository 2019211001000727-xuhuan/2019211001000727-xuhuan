package com.xuhuan.week2;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

//now its just a java class
//extend HttpServlet
public class HelloWorldServlet extends HttpServlet {
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
    //when client request method is GET - inside doGet()
    //we want vto send Hello to client
    //we need to write Hello in response
    //get write - java.io
        PrintWriter writer = response.getWriter();
        writer.println("Name :Xuhuan");
        writer.println("Id :2019211001000727");
        writer.println("Date and Time:Sun Mar 14 16:10 CST 2021");
        //next we need to tell about this servlet tomcat - how ? - web.xml

    }
    public void doPost(HttpServletRequest request, HttpServletResponse response){
    //when client request method is Post - inside doGet()
    }
}
