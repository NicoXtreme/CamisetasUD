/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Interface.java to edit this template
 */
package interfaces;

import entidades.Camisa;
import java.util.List;

/**
 *
 * @author Ojitos
 */
public interface DAOCamisa {
    public void registrar(Camisa cam) throws Exception;
    public void modificar(Camisa cam) throws Exception;
    public void eliminar(Camisa cam) throws Exception;
    public List<Camisa> listar() throws Exception;
    
}
