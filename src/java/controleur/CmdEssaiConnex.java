/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controleur;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author lapin
 */
public class CmdEssaiConnex implements Icommand{

    public CmdEssaiConnex() {
    }

    @Override
    public String execute(HttpServletRequest request, HttpServletResponse response) {
        
        String email = request.getParameter("email");
            String password = request.getParameter("password");
            
            HttpSession hs = request.getSession();
            
            hs.setAttribute("email", email);
            hs.setAttribute("password", password);
        
        
        return "WEB-INF/accueiljsp.jsp";
    }
    
}
