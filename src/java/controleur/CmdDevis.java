package controleur;

import entity.ClientBean;
import entity.DevisBean;
import entity.RecapBean;
import static java.lang.System.out;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.hibernate.validator.internal.util.privilegedactions.NewJaxbContext;
import packproject.NewJerseyClient;
import packproject.NewJerseyDevis;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
/**
 *
 * @author lapin
 */
public class CmdDevis implements Icommand {

    public CmdDevis() {
    }

    @Override
    public String execute(HttpServletRequest request, HttpServletResponse response) {

        HttpSession hs = request.getSession(true);

        //NewJerseyDevis njd = new NewJerseyDevis();
        
        ClientBean cb = (ClientBean) hs.getAttribute("user");
        if (cb == null) {
            out.println("merci de vous enregistrer");
            return "WEB-INF/accueiljsp.jsp";

        } else {
            
           return "WEB-INF/devisjsp.jsp";
            

        }
    }
}

//dv.setId(39l);
//        dv.setClient(client);
//        dv.setRecap(recap);
//        njd.create_JSON(dv);
//        if (client.isValide()) {
//
//            hs.setAttribute("devis", dv);
//            return "WEB-INF/devisjsp.jsp";
//        } else {
//            return "WEB-INF/erreurjsp.jsp";
//        }
