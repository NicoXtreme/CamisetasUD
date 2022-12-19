/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controlador;

import Modelo.Camiseta;
import Modelo.Carrito;
import Modelo.Compra;
import Modelo.Usuario;
import ModeloDAO.CamisetaDAO;
import ModeloDAO.CompraDAO;
import config.Fecha;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

/**
 *
 * @author nicox
 */
@MultipartConfig
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
                    car.setNombres(cam.getNombre());
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
                    int pos = 0;
                    cantidad = 1;
                    idcam = Integer.parseInt(request.getParameter("idCamiseta"));
                    cam = camdao.listarId(idcam);
                    if(listaCarrito.size() > 0){
                        for (int i = 0; i < listaCarrito.size(); i++) {
                            if(idcam == listaCarrito.get(i).getIdProducto()){
                                pos=i;
                            }
                        }
                        if(idcam == listaCarrito.get(pos).getIdProducto()){
                            cantidad = listaCarrito.get(pos).getCantidad()+cantidad;
                            double subtotal = listaCarrito.get(pos).getPrecioCompra()*cantidad;
                            listaCarrito.get(pos).setCantidad(cantidad);
                            listaCarrito.get(pos).setSubTotal(subtotal);
                        } else {
                            item = item+1;
                            car = new Carrito();
                            car.setItem(item);
                            car.setIdProducto(cam.getIdCamiseta());
                            car.setNombres(cam.getNombre());
                            car.setDescripcion(cam.getDescripcion());
                            car.setTallas(cam.getTalla());
                            car.setPrecioCompra(cam.getPrecio());
                            car.setCantidad(cantidad);
                            car.setSubTotal(cantidad*cam.getPrecio());
                            listaCarrito.add(car);
                        }
                    }else{
                        item = item+1;
                        car = new Carrito();
                        car.setItem(item);
                        car.setIdProducto(cam.getIdCamiseta());
                        car.setNombres(cam.getNombre());
                        car.setDescripcion(cam.getDescripcion());
                        car.setTallas(cam.getTalla());
                        car.setPrecioCompra(cam.getPrecio());
                        car.setCantidad(cantidad);
                        car.setSubTotal(cantidad*cam.getPrecio());
                        listaCarrito.add(car);
                    }
                    
                    request.setAttribute("contador", listaCarrito.size());
                    request.getRequestDispatcher("Controlador?accion=Inicio").forward(request, response);
                    break;    
                    
                case "Delete":
                    int idproducto=Integer.parseInt(request.getParameter("idcam"));
                       for (int i = 0; i <listaCarrito.size(); i++) {
                            if(listaCarrito.get(i).getItem()==idproducto){
                                listaCarrito.remove(i);
                            }
                        }
                        request.getRequestDispatcher("Controlador?accion=Carrito").forward(request, response);
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
                    
                case "GenerarCompra":
                    Usuario usuario = new Usuario();
                    usuario.setId(1);
                    CompraDAO dao = new CompraDAO();
                    Compra compra = new Compra(usuario, 1, Fecha.FechaBD(), totalPagar, "Enviado", listaCarrito);
                    int res = dao.GenerarCompra(compra);
                    if(res!=0&&totalPagar>0){
                        request.getRequestDispatcher("Carrito.jsp").forward(request, response);
                    } else{
                        request.getRequestDispatcher("index.jsp").forward(request, response);
                    }
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
