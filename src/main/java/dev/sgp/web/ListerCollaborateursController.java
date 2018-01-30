package dev.sgp.web;

import java.io.IOException;
import java.util.Arrays;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dev.sgp.service.CollaborateurService;
import dev.sgp.util.Constantes;

public class ListerCollaborateursController extends HttpServlet {
	
	public static CollaborateurService collabService = Constantes.COLLAB_SERVICE;
	
	@Override
	public void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		req.setAttribute("listeNoms", collabService.listerCollaborateurs());
		req.getRequestDispatcher("/WEB-INF/views/collab/listerCollaborateur.jsp").forward(req, resp);
	}
}