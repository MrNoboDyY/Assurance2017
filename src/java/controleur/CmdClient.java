/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controleur;

import entity.ClientBean;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import packproject.NewJerseyClient;

/**
 *
 * @author lapin
 */
public class CmdClient implements Icommand{

    @Override
    public String execute(HttpServletRequest request, HttpServletResponse response) {
        
        NewJerseyClient njc = new NewJerseyClient();
        ClientBean cl1 = new ClientBean();
        
        
           
        return "WEB-INF/usagerjsp.jsp";
    }
    
}
