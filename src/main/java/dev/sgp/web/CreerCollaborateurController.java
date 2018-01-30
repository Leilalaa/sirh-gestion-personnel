package dev.sgp.web;

import java.io.IOException;
import java.time.LocalDate;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dev.sgp.entite.Collaborateur;
import dev.sgp.service.CollaborateurService;
import dev.sgp.util.Constantes;

public class CreerCollaborateurController extends HttpServlet { 
	
	public static CollaborateurService collabService = Constantes.COLLAB_SERVICE;
	
	
	@Override
	public void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	
		req.getRequestDispatcher("/WEB-INF/views/collab/creerCollaborateurs.jsp").forward(req, resp); // On affiche le collab nouvellement fourni grace a lister collab
	}
	
	public void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		// A METTRE DANS LE DOPOST
		String nom = req.getParameter("nom");
		String prenom = req.getParameter("prenom");
		String dtn = req.getParameter("date");
		String adresse = req.getParameter("adresse");
		String numSecu = req.getParameter("numSecu");
		String[] dateDeNaissance = dtn.split("/");
		LocalDate newDateDeNaissance = LocalDate.of(Integer.parseInt(dateDeNaissance[2]), Integer.parseInt(dateDeNaissance[1]),  Integer.parseInt(dateDeNaissance[0]));
		resp.setContentType("text/html");
		
		
		collabService.sauvegarderCollaborateur(new Collaborateur(
				"M01",
				nom,
				prenom,
				newDateDeNaissance,
				adresse,
				numSecu, null, null, null, true));
	
	  req.setAttribute("listeNoms", collabService.listerCollaborateurs());
      req.getRequestDispatcher("/WEB-INF/views/collab/listerCollaborateur.jsp").forward(req, resp);
		
	
		
	}
}


