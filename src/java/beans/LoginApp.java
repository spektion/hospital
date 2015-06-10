/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package beans;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.File;
import javax.servlet.ServletContext;
import javax.xml.bind.JAXBContext;
import javax.xml.bind.JAXBException;
import javax.xml.bind.Unmarshaller;
/**
 *
 * @author Gonçalo Faria
 */
public class LoginApp extends HttpServlet {

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
        ServletContext servletContext = getServletContext();
        String path = servletContext.getRealPath("/WEB-INF/");
        System.out.println(path);
        File file = new File(path+"/user.xml");
        
        try (PrintWriter out = response.getWriter()) {
            System.out.println(file);
                JAXBContext jaxbContext = JAXBContext.newInstance(User.class);

                Unmarshaller jaxbUnmarshaller = jaxbContext.createUnmarshaller();
                User user = (User) jaxbUnmarshaller.unmarshal(file);
                //System.out.println(user);

                String user_in = request.getParameter("id");
                String pwd_in = request.getParameter("pwd");
                if (user_in.equals(user.getName()) && pwd_in.equals(user.getPwd())) {
                    HttpSession session = request.getSession();
                    session.setAttribute("User",user);
                    RequestDispatcher rd = request.getRequestDispatcher("/jsp/Gest.jsp");
                    rd.forward(request, response);
                } else {
                    RequestDispatcher rd = request.getRequestDispatcher("/jsp/LoginError.jsp");
                    rd.include(request, response);
                }
        } catch (NumberFormatException ex) {
            RequestDispatcher rd = request.getRequestDispatcher("/jsp/LoginError.jsp");
            rd.include(request, response);
        }
        catch (JAXBException e) {
                e.printStackTrace();
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
