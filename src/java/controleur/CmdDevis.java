package controleur;

import entity.ClientBean;
import entity.DevisBean;
import entity.RecapBean;
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

        NewJerseyDevis njd = new NewJerseyDevis();
        //RecapBean recap = new RecapBean();
        ClientBean client = new ClientBean();
        //DevisBean dv = new DevisBean();

        //dv.setId(39l);
//        dv.setClient(client);
//        dv.setRecap(recap);
        
//        njd.create_JSON(dv);
        
        return "WEB-INF/devisjsp.jsp";

//        if (client.isValide()) {
//
//            hs.setAttribute("devis", dv);
//            return "WEB-INF/devisjsp.jsp";
//        } else {
//            return "WEB-INF/erreurjsp.jsp";
//        }

    }
}
