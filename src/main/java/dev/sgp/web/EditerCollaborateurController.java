package dev.sgp.web;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class EditerCollaborateurController extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// recupere la valeur d'un parametre 
		String matriculeParam = req.getParameter("matricule");
		String titreParam = req.getParameter("titre");
		String nomParam = req.getParameter("nom");
		String prenomParam = req.getParameter("prenom");
		resp.setContentType("text/html");
		// code HTML ecrit dans le corps de la reponse
		resp.getWriter().write("");
		
		
		if (matriculeParam == null || titreParam == null || nomParam == null || prenomParam == null){
			 resp.sendError(resp.SC_BAD_REQUEST, "Veuillez renseigner toutes les informations requises");

		}else{
			resp.getWriter().write("<h1>Edition collaborateur</h1>" +"Matricule = " 
					+ matriculeParam + ", titre = "+ titreParam +", nom = "+ nomParam +", prenom = "+prenomParam);
		}
	}
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// recupere la valeur d'un parametre 
		String matriculeParam = req.getParameter("matricule");
		String titreParam = req.getParameter("titre");
		String nomParam = req.getParameter("nom");
		String prenomParam = req.getParameter("prenom");
		resp.setContentType("text/html");
		// code HTML ecrit dans le corps de la reponse
		// Avant d'appeler la JSP suivante, je stocke dans la requete HTTP la variable
//		req.setAttribute("matricule", matriculeParam);
//		req.getRequestDispatcher("/collab/collab.jsp");
		
		if (matriculeParam == null || matriculeParam.isEmpty() || titreParam == null || titreParam.isEmpty() || nomParam == null || nomParam.isEmpty() || prenomParam == null || prenomParam.isEmpty()){
			 resp.sendError(resp.SC_BAD_REQUEST, "Les parametres suivants sont incorrects :"+ paramNull(matriculeParam, "matricule")+paramNull(titreParam, "titre")+paramNull(nomParam, "nom")+paramNull(prenomParam, "prenom"));

		}else{
			resp.getWriter().write("<h1>Edition collaborateur</h1>" + "Creation d'un collaborateur avec les informations suivantes : <br /> Matricule = " 
										+ matriculeParam + ", titre = "+ titreParam +", nom = "+ nomParam +", prenom = "+prenomParam);
		}
	}
	
	private String paramNull(String s, String g){
		
		if (s == null || s.isEmpty()){
			return " "+g+" ";
		}{
		return "";
		}
		
	
		
	}
}