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
import packproject.NewJerseyClient;

/**
 *
 * @author lapin
 */
public class CmdCreacli implements Icommand{

    public CmdCreacli() {
    }

    @Override
    public String execute(HttpServletRequest request, HttpServletResponse response) {
        NewJerseyClient njc = new NewJerseyClient();
        ClientBean cl1= new ClientBean();
        
        //cl1.setId(15l);
        cl1.setNom(request.getParameter("nom"));
        cl1.setPrenom(request.getParameter("prenom"));
        cl1.setAdresse(request.getParameter("adresse"));
        cl1.setTelephone(request.getParameter("telephone"));
        
        njc.create_JSON(cl1);
        
        HttpSession hs = request.getSession();
        
        hs.setAttribute("client", cl1);
        
        return "WEB-INF/accueiljsp.jsp";
    }
    
}
