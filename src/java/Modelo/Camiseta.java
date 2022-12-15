/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Modelo;

import java.io.InputStream;

/**
 *
 * @author NicoXtreme
 */
public class Camiseta {
    int idCamiseta;
    InputStream foto;
    String nombreCamiseta;
    String descripcion;
    int precio = 0;
    String color;
    String talla;
    String etiqueta;
    int stock = 0;

    public Camiseta() {
    }

    public Camiseta(int idCamiseta, InputStream foto, String nombreCamiseta, String descripcion, String color, String talla, String etiqueta) {
        this.idCamiseta = idCamiseta;
        this.foto = foto;
        this.nombreCamiseta = nombreCamiseta;
        this.descripcion = descripcion;
        this.color = color;
        this.talla = talla;
        this.etiqueta = etiqueta;
    }

    public int getIdCamiseta() {
        return idCamiseta;
    }

    public void setIdCamiseta(int idCamiseta) {
        this.idCamiseta = idCamiseta;
    }

    public InputStream getFoto() {
        return foto;
    }

    public void setFoto(InputStream foto) {
        this.foto = foto;
    }

    public String getNombreCamiseta() {
        return nombreCamiseta;
    }

    public void setNombreCamiseta(String nombreCamiseta) {
        this.nombreCamiseta = nombreCamiseta;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    public int getPrecio() {
        return precio;
    }

    public void setPrecio(int precio) {
        this.precio = precio;
    }

    public String getColor() {
        return color;
    }

    public void setColor(String color) {
        this.color = color;
    }

    public String getTalla() {
        return talla;
    }

    public void setTalla(String talla) {
        this.talla = talla;
    }

    public String getEtiqueta() {
        return etiqueta;
    }

    public void setEtiqueta(String etiqueta) {
        this.etiqueta = etiqueta;
    }

    public int getStock() {
        return stock;
    }

    public void setStock(int stock) {
        this.stock = stock;
    }

}
