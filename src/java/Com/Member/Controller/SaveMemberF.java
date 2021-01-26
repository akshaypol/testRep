/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Com.Member.Controller;

import Com.Member.Dao.MemberDao;
import Com.Member.Model.MemberModel;

import Com.service.SendMessage;

import Com.service.sendEmail;
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
@WebServlet(name = "SaveMemberF", urlPatterns = {"/SaveMemberF"})
public class SaveMemberF extends HttpServlet {

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
            System.out.println("ssssss" + SponcerID);
            if (SponcerID.equals(null)) {

            } else {
                m.setSponcerID(SponcerID);
            }

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
            m.setAge(request.getParameter("Age"));
            m.setGender(request.getParameter("Gender"));
            m.setPanNum(request.getParameter("PanNum"));
            m.setAadhaar(request.getParameter("Aadhaar"));
            m.setMcharch(request.getParameter("Mcharch"));
            m.setStatus(false);
            m.setAdharFront("");
            m.setAdharBack("");
            m.setPanCardIMG("");
            m.setBaptismcertificate("");

            MemberDao md = new MemberDao();
            boolean Msave = false;
            Msave = md.save(m);
            if (Msave) {

//                String subject = "From wecareenterprises Login Details";
//                String regMsg1 = "Congratulations!!!, "
//                        + "\n Your Registration with wecareenterprises.co.in is Successful. "
//                        + "\n Kindly Login To Your Account And Update Your Details "
//                        + "\n Login Credentials: "
//                        + "\n Username: " + m.getEmail()
//                        + "\n Password: " + m.getPassword()
//                        
//                        + "\nTeam wecareenterprises";
//
//                sendEmail.mailsend(m.getEmail(), regMsg1, subject);
                int i = 1;
                HttpSession session1 = request.getSession();
                session1.setAttribute("i", i);
                session1.setAttribute("msg", "Register Sucessfully");
                session1.setAttribute("RMem", m);

//                 out.println("<script type=\"text/javascript\">");
////                out.println("alert('Something wrong in OTP generation !!');");
//                out.println("location='href='https://www.payumoney.com/paybypayumoney/#/34E71196388A0021E997196B680FCA8F'';");
//                out.println("</script>");
                response.sendRedirect("payu.jsp");
//                response.sendRedirect("Login.jsp");

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
