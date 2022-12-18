/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controlador;

import Modelo.Camiseta;
import Modelo.Carrito;
import ModeloDAO.CamisetaDAO;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author nicox
 */
public class Controlador extends HttpServlet {

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
    List<Camiseta> camisetas = new ArrayList<>();
    
    List<Carrito> listaCarrito = new ArrayList<>();
    int item;
    double totalPagar = 0.0;
    int cantidad = 1;
    
    int idcam;
    Carrito car;
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
            
            String accion = request.getParameter("accion");
            camisetas = camdao.listar();
            switch (accion) {
                case "Comprar":
                    totalPagar = 0;
                    idcam = Integer.parseInt(request.getParameter("idCamiseta"));
                    cam = camdao.listarId(idcam);
                    item = item+1;
                    car = new Carrito();
                    car.setItem(item);
                    car.setIdProducto(cam.getIdCamiseta());
                    car.setNombres(cam.getNombreCamiseta());
                    car.setDescripcion(cam.getDescripcion());
                    car.setTallas(cam.getTalla());
                    car.setPrecioCompra(cam.getPrecio());
                    car.setCantidad(cantidad);
                    car.setSubTotal(cantidad*cam.getPrecio());
                    listaCarrito.add(car);
                    for (int i = 0; i < listaCarrito.size(); i++) {
                       totalPagar=totalPagar+listaCarrito.get(i).getSubTotal();
                    }
                    request.setAttribute("totalPagar", totalPagar);
                    request.setAttribute("carrito", listaCarrito);
                    request.setAttribute("contador", listaCarrito.size());
                    request.getRequestDispatcher("Carrito.jsp").forward(request, response);
                    break;
                case "AgregarCarrito":
                    idcam = Integer.parseInt(request.getParameter("idCamiseta"));
                    cam = camdao.listarId(idcam);
                    item = item+1;
                    car = new Carrito();
                    car.setItem(item);
                    car.setIdProducto(cam.getIdCamiseta());
                    car.setNombres(cam.getNombreCamiseta());
                    car.setDescripcion(cam.getDescripcion());
                    car.setTallas(cam.getTalla());
                    car.setPrecioCompra(cam.getPrecio());
                    car.setCantidad(cantidad);
                    car.setSubTotal(cantidad*cam.getPrecio());
                    listaCarrito.add(car);
                    
                    request.setAttribute("contador", listaCarrito.size());
                    request.getRequestDispatcher("Controlador?accion=Inicio").forward(request, response);
                    break;    
                case "Delete":
                    int idproducto=Integer.parseInt(request.getParameter("idp"));
                    for (int i = 0; i <listaCarrito.size(); i++) {
                        if(listaCarrito.get(i).getItem()==idproducto){
                            listaCarrito.remove(i);
                        }
                    }

                    request.getRequestDispatcher("controlador?accion=Carrito").forward(request, response);
                    break;
                case "Carrito":
                    totalPagar = 0.0;
                    request.setAttribute("carrito", listaCarrito);
                    for (int i = 0; i < listaCarrito.size(); i++) {
                       totalPagar=totalPagar+listaCarrito.get(i).getSubTotal();
                    }
                    request.setAttribute("totalPagar", totalPagar);
                    request.getRequestDispatcher("Carrito.jsp").forward(request, response);
                    break;
                default:
                    request.setAttribute("camisetas", camisetas);
                    request.getRequestDispatcher("Principal.jsp").forward(request, response);
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
