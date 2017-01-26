/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controleur;

import entity.ClientBean;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author lapin
 */
public class CmdPrime implements Icommand{

    public CmdPrime() {
    }

    @Override
    public String execute(HttpServletRequest request, HttpServletResponse response) {
        HttpSession hs = request.getSession(true);
        
        
        
        return "WEB-INF/devisjsp.jsp"; 
    }
    
}
