/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Com.Member.Controller;

import Com.Member.Dao.MemberDao;
import Com.Member.Model.MemberModel;

import Com.service.SendMessage;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Random;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author roveena
 */
@WebServlet(name = "SaveMemberF1", urlPatterns = {"/SaveMemberF1"})
public class SaveMemberF1 extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
//                  
//                 

            MemberModel m = new MemberModel();

            String Name = request.getParameter("Name");
            String SponcerID = request.getParameter("SponcerID");
            String Email = request.getParameter("Email");
            String MObNO = request.getParameter("MObNO");
            String Password = request.getParameter("Password");
            String Occupation = request.getParameter("Occupation");
            String City = request.getParameter("City");

            m.setSponcerID(SponcerID);
            m.setName(Name);
            m.setCity(City);
            m.setOccupation(Occupation);
            m.setMObNO(MObNO);
            m.setEmail(Email);
            m.setPassword(Password);

            char[] chars = "1023456789".toCharArray();
            StringBuilder sb = new StringBuilder();
            Random random = new Random();
            for (int i = 0; i < 4; i++) {
                char c = chars[random.nextInt(chars.length)];
                sb.append(c);
            }
            String Username = "WECE" + sb.toString();

            m.setUsername(Username);
            Date d = new Date();
            SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");

            String ldate = formatter.format(d);
            m.setRDate(ldate);

            m.setPassword(Password);
            m.setAdmin("");
            m.setGender(request.getParameter("Age"));
            m.setGender(request.getParameter("Gender"));
            m.setPanNum(request.getParameter("PanNum"));
            m.setAadhaar(request.getParameter("Aadhaar"));
            m.setMcharch(request.getParameter("Mcharch"));
            
                     
            MemberDao md = new MemberDao();
            boolean Msave = false;
            Msave = md.save(m);
            if (Msave) {

//                String message = "Dear " + m.getName()
//                        + "\n Welcome to Dcf"
//                        + "\n User ID : " + m.getUsername()
//                        + "\n Password : " + m.getPassword()
//                        + "\n \t\t Thank You,"
//                        + "\n WebSite:godgiftcf.in";
                //   System.out.println("Mobile"+ar.getRestaurant_No1());
//                SendMessage.sendMobileMSG(m.getMobNO(), message);
                int i = 1;
                HttpSession session1 = request.getSession();
                session1.setAttribute("i", i);
                session1.setAttribute("msg", "Register Sucessfully");

                response.sendRedirect("Login.jsp");

            } else {
                int i = 2;
                HttpSession session1 = request.getSession();
                session1.setAttribute("i", i);
                session1.setAttribute("msg", "'Error ");
                response.sendRedirect("index.jsp");
            }

        }
    }

// <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
