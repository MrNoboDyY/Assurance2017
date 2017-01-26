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
public class CmdDeconnexion implements Icommand {

    public CmdDeconnexion() {
    }

    @Override
    public String execute(HttpServletRequest request, HttpServletResponse response) {
        HttpSession session = request.getSession();
       session.removeAttribute("user");
       return "WEB-INF/accueiljsp.jsp";
    }
    
}
