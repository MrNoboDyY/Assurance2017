/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controleur;

import com.sun.xml.rpc.processor.modeler.j2ee.xml.string;
import entity.ClientBean;
import java.util.HashMap;
import java.util.Map;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author lapin
 */
public class CmdConnexion implements Icommand{

    public CmdConnexion() {
    }
    
    

    @Override
    public String execute(HttpServletRequest request, HttpServletResponse response) {
       HttpSession hs = request.getSession();
       ClientBean cb = (ClientBean) hs.getAttribute("user");
        if (cb == null ) {
            return "WEB-INF/connexionjsp.jsp" ;
            
        }else{
            return "WEB-INF/accueiljsp.jsp";
        }
       
       
        
           
       
    }
    
}
