/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Com.Member.Controller;

import Com.Member.Dao.MemberDao;
import Com.Member.Model.MemberModel;
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
 * @author genesis
 */
@WebServlet(name = "UpdateDetail", urlPatterns = {"/UpdateDetail"})
public class UpdateDetail extends HttpServlet {

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

            //           UserID
            MemberModel g = new MemberDao().getById(Long.parseLong(request.getParameter("UserID")));
            g.setName(request.getParameter("personName"));
            g.setEmail(request.getParameter("Email"));
            g.setPanNum(request.getParameter("PanNumber"));
            g.setAge(request.getParameter("Age"));
            g.setGender(request.getParameter("Gender"));
            g.setPanNum(request.getParameter("PanNum"));
            g.setAadhaar(request.getParameter("AadhaarNum"));
            g.setMcharch(request.getParameter("MemCharch"));

            g.setCity(request.getParameter("City"));

            g.setMObNO(request.getParameter("Mobile"));
            g.setOccupation(request.getParameter("Occupation"));
            new MemberDao().Update(g);

            int i = 1;
            HttpSession session1 = request.getSession();
            session1.setAttribute("i", i);
            session1.setAttribute("msg", "Update Sucessfully");

            response.sendRedirect("Member/Profile.jsp");

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
