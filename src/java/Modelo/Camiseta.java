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
    InputStream fotoCamiseta;
    String nombreCamiseta;
    String descripcionCamiseta;
    int precioCamiseta;
    String colorCamiseta;
    String tallaCamiseta;
    String etiquetaCamiseta;
    int stockCamiseta;

    public Camiseta() {
    }

    public Camiseta(int idCamiseta, InputStream fotoCamiseta, String nombreCamiseta, String descripcionCamiseta, int precioCamiseta, String colorCamiseta, String tallaCamiseta, String etiquetaCamiseta, int stockCamiseta) {
        this.idCamiseta = idCamiseta;
        this.fotoCamiseta = fotoCamiseta;
        this.nombreCamiseta = nombreCamiseta;
        this.descripcionCamiseta = descripcionCamiseta;
        this.precioCamiseta = precioCamiseta;
        this.colorCamiseta = colorCamiseta;
        this.tallaCamiseta = tallaCamiseta;
        this.etiquetaCamiseta = etiquetaCamiseta;
        this.stockCamiseta = stockCamiseta;
    }

    public int getIdCamiseta() {
        return idCamiseta;
    }

    public void setIdCamiseta(int idCamiseta) {
        this.idCamiseta = idCamiseta;
    }

    public InputStream getFotoCamiseta() {
        return fotoCamiseta;
    }

    public void setFotoCamiseta(InputStream fotoCamiseta) {
        this.fotoCamiseta = fotoCamiseta;
    }

    public String getNombreCamiseta() {
        return nombreCamiseta;
    }

    public void setNombreCamiseta(String nombreCamiseta) {
        this.nombreCamiseta = nombreCamiseta;
    }

    public String getDescripcionCamiseta() {
        return descripcionCamiseta;
    }

    public void setDescripcionCamiseta(String descripcionCamiseta) {
        this.descripcionCamiseta = descripcionCamiseta;
    }

    public int getPrecioCamiseta() {
        return precioCamiseta;
    }

    public void setPrecioCamiseta(int precioCamiseta) {
        this.precioCamiseta = precioCamiseta;
    }

    public String getColorCamiseta() {
        return colorCamiseta;
    }

    public void setColorCamiseta(String colorCamiseta) {
        this.colorCamiseta = colorCamiseta;
    }

    public String getTallaCamiseta() {
        return tallaCamiseta;
    }

    public void setTallaCamiseta(String tallaCamiseta) {
        this.tallaCamiseta = tallaCamiseta;
    }

    public String getEtiquetaCamiseta() {
        return etiquetaCamiseta;
    }

    public void setEtiquetaCamiseta(String etiquetaCamiseta) {
        this.etiquetaCamiseta = etiquetaCamiseta;
    }

    public int getStockCamiseta() {
        return stockCamiseta;
    }

    public void setStockCamiseta(int stockCamiseta) {
        this.stockCamiseta = stockCamiseta;
    }
    
    
    
    
    
}
