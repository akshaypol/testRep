/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Com.Member.Controller;

import Com.Member.Dao.MemberDao;
import Com.Member.Model.MemberModel;
import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Iterator;
import java.util.List;
import java.util.Random;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileItemFactory;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

/**
 *
 * @author roveena
 */
@WebServlet(name = "UpdateImageServlet", urlPatterns = {"/UpdateImageServlet"})
public class UpdateImageServlet extends HttpServlet {

    private static final String UPLOAD_DIRECTORY = "KYCDocument";
    private static final int THRESHOLD_SIZE = 1024 * 1024 * 3;  // 3MB
    private static final int MAX_FILE_SIZE = 1024 * 1024 * 40; // 40MB
    private static final int MAX_REQUEST_SIZE = 1024 * 1024 * 50; // 50MB

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
        PrintWriter out = response.getWriter();
        int a = 0;
        String itemName = "";
        System.out.println("id in servlet.....");
        String DOcumnetName = request.getParameter("DOcumnetName");
        String userID = request.getParameter("id");
        System.out.println("id userID " + userID);
        long id = Long.parseLong(userID);
        System.out.println("id " + id);
        MemberDao md = new MemberDao();
        MemberModel m = new MemberModel();
        m = md.getById(id);

        String uploadPath = getServletContext().getRealPath("") + File.separator + UPLOAD_DIRECTORY;
        System.out.println("upload directory is" + UPLOAD_DIRECTORY);
        boolean isMultipart = ServletFileUpload.isMultipartContent(request);
        if (!isMultipart) {
        } else {
            FileItemFactory factory = new DiskFileItemFactory();
            ServletFileUpload upload = new ServletFileUpload(factory);
            List items = null;
            try {
                items = upload.parseRequest(request);
            } catch (FileUploadException e) {
                e.printStackTrace();
            }
            Iterator itr = items.iterator();
            while (itr.hasNext()) {
                FileItem item = (FileItem) itr.next();
                if (item.isFormField()) {

                    System.err.println(item.getString() + item.getFieldName());

                } else {
                    try {
                        char[] chars1 = "abcdefghjkmnpqrstuvwxyzABCDEFGHJKMNPQRSTUVWXYZ".toCharArray();
                        StringBuilder sb = new StringBuilder();
                        Random random = new Random();
                        for (int i1 = 0; i1 < 6; i1++) {
                            char c = chars1[random.nextInt(chars1.length)];
                            sb.append(c);
                        }
                        String Imgname = sb.toString();
                        itemName = Imgname;

                        // File savedFile = new File("D:\\"+itemName);
                        item.write(new File(uploadPath + File.separator + itemName));

                        if (DOcumnetName.equals("AdharFront")) {
                            if (item.getFieldName().equals("Image")) {
                                m.setAdharFront(itemName);
                            }
                        } else {
                            if (DOcumnetName.equals("AdharBack")) {
                                if (item.getFieldName().equals("Image")) {
                                    m.setAdharBack(itemName);
                                }
                            } else {
                                if (DOcumnetName.equals("PanCard")) {
                                    if (item.getFieldName().equals("Image")) {
                                        m.setPanCardIMG(itemName);
                                    }
                                }else
                                {
                                 if (DOcumnetName.equals("Baptismcertificate")) {
                                     if (item.getFieldName().equals("Image")) {
                                        m.setBaptismcertificate(itemName);
                                    }
                                 }
                                }
                            }
                        }

                        //   afm.setImagePath(imagePath);
//                        System.out.println("image length" + a);
                        // System.out.println("image object"+img);
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                }

            }

            md.Update(m);

            int i = 1;
            HttpSession session = request.getSession();
            session.setAttribute("i", i);
            session.setAttribute("msg", "Document Updated Sucessfully");

            response.sendRedirect("Member/KYCDetails.jsp");

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
