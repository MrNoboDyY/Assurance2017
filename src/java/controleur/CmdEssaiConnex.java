/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controleur;

import entity.ClientBean;
import java.util.List;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.jboss.weld.servlet.SessionHolder;
import packproject.NewJerseyClient;

/**
 *
 * @author lapin
 */
public class CmdEssaiConnex implements Icommand {

    public CmdEssaiConnex() {
    }

    @Override
    public String execute(HttpServletRequest request, HttpServletResponse response) {
        HttpSession hs = request.getSession();
        String username = request.getParameter("username");
        String telephone = request.getParameter("telephone");
        NewJerseyClient njc = new NewJerseyClient();
        
        List<ClientBean> listConnex = njc.trouverTelephone_JSON(telephone);
        System.out.println(listConnex.isEmpty());  
        if (!listConnex.isEmpty() && username.equals(listConnex.get(0).getNom())){           
            hs.setAttribute("user", listConnex.get(0));
            return "WEB-INF/accueiljsp.jsp";
        }
        return "WEB-INF/maerreurjsp.jsp";
       
    }
}