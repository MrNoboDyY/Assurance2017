package controleur;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
import controleur.CmdDevis;
import java.io.IOException;
import java.io.PrintWriter;
import static java.lang.Compiler.command;
import java.util.HashMap;
import java.util.Map;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Milou
 */
public class Assurance2017Controleur extends HttpServlet {

    private Map commands = new HashMap();
    private static Integer compteur = 0;

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");

        try (PrintWriter out = response.getWriter()) {

            compteur++;

            HttpSession hs = request.getSession(true);
            hs.setAttribute("cleCpt", compteur);

            String cmd = request.getParameter("cmd");
            String urlSuite;//urlSuite,adresse de la page apres le controleur !!

            urlSuite = "WEB-INF/erreur.jsp";
            //verif si clé existe
            if (cmd != null) {
                Icommand cde = (Icommand) commands.get(cmd);
                urlSuite = cde.execute(request, response);
//                if (cmd.equals("devis")) {
//                    urlSuite = "WEB-INF/devisjsp.jsp";
                //}
            } else {
                Icommand cde = (Icommand) commands.get("accueil");
                urlSuite = cde.execute(request, response);
            }
//            } else {
//                //si cmd.equals("Devis") alors
//                //DevisBean db= new DevisBean(request),la demande
//                //on verifi avec les champs du controleur le formulaire
//                //puis on dispatch vers une autre pageurlSuite
//                //request.getRequestDispatcher(urlSuite).forward(request, response);
//                //sinon c'est urlSuite = erreurjsp.jsp
//                //request.getRequestDispatcher(urlSuite).forward(request, response);
//            }
            request.getRequestDispatcher(urlSuite).forward(request, response);
        }

    }

    @Override
    public void init() {

        commands.put("devis", new CmdDevis());
        commands.put("recap", new CmdRecap());
        commands.put("usager", new CmdClient());
        commands.put("creacli", new CmdCreacli());
        commands.put("accueil", new CmdAccueil());
        commands.put("connexion" ,new CmdConnexion());
        commands.put("essaiconnexion", new CmdEssaiConnex());
        commands.put("deconnexion", new CmdDeconnexion());
        commands.put("prime", new CmdPrime());
//        commands.put("vehicule", new CmdVehicule());
//        commands.put("personnes", new CmdPersonnes());        
    }
    //urlSuite = "WEB-INF/erreurjsp.jsp";
    // request.getRequestDispatcher(urlSuite).forward(request, response);

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
