package controleur;

import entity.ClientBean;
import entity.DevisBean;
import entity.RecapBean;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import packproject.NewJerseyClient;
import packproject.NewJerseyDevis;
import packproject.NewJerseyRecap;
import servlets.calculprime;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
/**
 *
 * @author lapin
 */
public class CmdRecap implements Icommand {

    public CmdRecap() {
    }

    @Override
    public String execute(HttpServletRequest request, HttpServletResponse response) {
        NewJerseyClient njc = new NewJerseyClient();
        NewJerseyRecap njr = new NewJerseyRecap();
        NewJerseyDevis njd = new NewJerseyDevis();
        RecapBean recap = new RecapBean();
        //recap.setId();
        recap.setUtilisationVehicule(request.getParameter("Utilisations"));
        recap.setFormule(request.getParameter("Formules"));
        recap.setMarque(request.getParameter("Marques"));
        recap.setModele(request.getParameter("Modeles"));
        recap.setKilometrage(request.getParameter("Kilometrages"));
        recap.setMontant(request.getParameter("Montant"));

        ////////////////////////////// //////////////////////////////////
/*ceation / recuperation de la session*/
        HttpSession hs = request.getSession(true);
        ClientBean client = njc.find_JSON(ClientBean.class, "1");
        
        /* creation du DevisBean */
        DevisBean devis = new DevisBean();
        
        /* creation du Recap */
        njr.create_JSON(recap);
        List<RecapBean> lrb = njr.recaps();
//        for (RecapBean recapBean : lrb) {
//            System.out.println(recapBean.getId() + " hthfth");
//        }
//        System.out.println(lrb.get(lrb.size()-1).getId());

        
        devis.setRecap(lrb.get(lrb.size()-1));//recuperer le dernier objet entré !!     
        devis.setClient(client);
        
        //recuperation de la prime du client!!
        
        
        njd.create_JSON(devis);
        request.setAttribute("devis", devis);

        return "WEB-INF/recapjsp.jsp";
//        if (devis.isValide() && client.isValide()) {
//            hs.setAttribute("Devis", devis);
//            return "WEB-INF/recapjsp.jsp";
//        } else {
//            return "WEB-INF/erreurjsp.jsp";
//        }
    }
}
//      devis.setClient((Client) hs.getAttribute("client"));

//        dvb.setUtilisation_vehicule(request.getParameter("Utilisations"));
//        dvb.setKilometrage(request.getParameter("Kilometrages"));
//        dvb.setMarque(request.getParameter("Marques"));
//        dvb.setModele(request.getParameter("Modeles"));
//        //dvb.setDate_circulation(request.getParameter("date_circulation"));
//        dvb.setFormule(request.getParameter("Formules"));
//        dvb.setMontant(request.getParameter("Montant"));
////////////////////////////////////////////////////////////////////////////////////////////
//DevisBean dvb = new DevisBean();
//Client cl = new Client();
//appel au web service ici !!!!
//calculer 
// 
//String nom = request.getParameter("nom");
//        dvb.setNom(request.getParameter("nom"));
//        dvb.setPrenom(request.getParameter("prenom"));
//        dvb.setTel(request.getParameter("numeroDeTel"));
//        dvb.setAdresse(request.getParameter("adresse"));
