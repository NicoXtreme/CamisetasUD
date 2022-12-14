/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controlador;

import Modelo.Camiseta;
import ModeloDAO.CamisetaDAO;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

/**
 *
 * @author NicoXtreme
 */
@MultipartConfig
public class Guardar extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    
    CamisetaDAO camdao = new CamisetaDAO();
    Camiseta cam = new Camiseta();
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try ( PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet Guardar</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet Guardar at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
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
            String accion = request.getParameter("accion");
            
            if(accion.equalsIgnoreCase("Guardar")){
                Part part = request.getPart("fileFoto");
                InputStream inputStream = part.getInputStream();
                String nombre = request.getParameter("txtshirtname");
                String descripcion = request.getParameter("txtshirtdesc");
                int precio = Integer.parseInt(request.getParameter("txtshirtprice"));
                int stock = Integer.parseInt(request.getParameter("txtshirtstock"));
                String color = request.getParameter("color");
                String talla = request.getParameter("size");
                String etiqueta = request.getParameter("tag");

                cam.setFoto(inputStream);
                cam.setNombre(nombre);
                cam.setDescripcion(descripcion);
                cam.setPrecio(precio);
                cam.setStock(stock);
                cam.setColor(color);
                cam.setTalla(talla);
                cam.setEtiqueta(etiqueta);
                
                if(request.getParameter("txtshirtprice") == null || request.getParameter("txtshirtstock") == null){
                    response.sendRedirect("SubirCamiseta.jsp");
                }
                
                camdao.agregar(cam);
                
                if(camdao.agregar(cam)){
                response.sendRedirect("SubirSuccess.jsp");
                } else{
                    response.sendRedirect("SubirCamiseta.jsp");
                }
            }
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
