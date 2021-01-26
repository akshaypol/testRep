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
@WebServlet(name = "ForgotPass", urlPatterns = {"/ForgotPass"})
public class ForgotPass extends HttpServlet {

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
//            String User_ID = request.getParameter("User_ID");
            String Email = request.getParameter("Email");

            MemberModel m = new MemberDao().getbyEmail(Email);
            if (m == null) {
                int i = 2;
                HttpSession session1 = request.getSession();
                session1.setAttribute("i", i);
                session1.setAttribute("msg", "Enter Correct  Email Id");

                response.sendRedirect("Forgetpass.jsp");
            } else {

                String subject = "From wecareenterprises Login Details";
                            String regMsg1 = ""
                                    + "\n Login Credentials: "
                                    + "\n Username: " + m.getUsername()
                                    + "\n Password: " + m.getPassword()
                                    + "\nTeam wecareenterprises";
     //
                            sendEmail.mailsend(m.getEmail(), regMsg1, subject);
                
                    response.sendRedirect("Login.jsp");

//                } else {
//                    int i = 2;
//                    HttpSession session1 = request.getSession();
//                    session1.setAttribute("i", i);
//                    session1.setAttribute("msg", "Wrong UserID Or Mobile/Email");
//
//                    response.sendRedirect("Front/ForgotPassword.jsp");
//                }
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
