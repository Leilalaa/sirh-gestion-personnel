<%@page import="java.util.List"%>
<%@page import="dev.sgp.entite.Collaborateur"%>
<%@ page language="java" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Travaux Pratiques Bootstrap</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/semantic-ui@2.2.13/dist/semantic.min.css">
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.1.1.min.js" integrity="sha256-hVVnYaiADRTO2PzUGmuLJr8BLUSjGIZsDYGmIJLv2b8=" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/semantic-ui@2.2.13/dist/semantic.min.js"></script>
    <script src="index.js"></script>
</head>

<header>
  <ul class="nav nav-tabs">
  <li class="nav-item">
    <a class="nav-link active" href="index.html">Collaborateurs</a>
  </li>
  <li class="nav-item">
    <a class="nav-link" href="#">Statistiques</a>
  </li>
  <li class="nav-item">
    <a class="nav-link" href="#">Activités</a>
  </li>
</ul>
</header>

<body class="ui container-fluid">
  <a href="creer" role = "button" class="btn btn-primary" style='float:right;'>Ajouter un nouveau collaborateur</a>
  <h1 class="ui header">Les collaborateurs</h1>
  <div class="d-flex flex-row flex-wrap">
    <div class="p-2">
      <form>
        <div class="form-check form-check-inline">
            Rechercher un nom ou un prénom qui commence par :
          </div>
        </div>
          <div class="p-2">
            <div class="form-group mx-sm-3 mb-2">
              <input type="text" class="form-control" id="input2">
            </div>
          </div>
          <div class="p-2">
          <button type="submit" class="btn btn-primary mb-2">Rechercher</button>
        </div>

      </form>
    <div class="ml-auto align-self-center">
       <form>
          <input class="form-check-input" type="checkbox" id="inlineCheckbox1" value="option1">
          <label class="form-check-label" for="inlineCheckbox1">Voir les collaborateurs desactivés</label>
      </form>
    </div>
  </div>

<br />
<form>
  <p align = "center"> Filtrer par département :
    <select>
      <optgroup>
    			    <option value="1">Tous</option>
    			    <option value="2">Comptabilité</option>
    			    <option value="3">Ressources humaines</option>
    			    <option value="4">Informatique</option>
    	</optgroup>
  	</select>
  </p>
</form>
  <br />
  
	<div class="container-fluid float-center">
		<div class="d-flex flex-row flex-wrap">
 <%
			List<Collaborateur> collabs = (List<Collaborateur>)request.getAttribute("listeNoms");
			for(Collaborateur collab : collabs){
		%>
			<div class="col-xs-12 col-sm-6 col-lg-4 p-2 d-flex">
				<div class="card" height="100%">
					<h5 class="card-header"><%=collab.getNom().toUpperCase()%>
						<%=collab.getPrenom()%></h5>
					<div class="card-body">
						<div class="d-flex flex-row flex-wrap">
							<div class="col-xs-12 col-sm-5 p-0">
								<img class="figure-img img-fluid round" width=200px
									src="https://image.freepik.com/free-icon/question-mark_318-52837.jpg"
									alt="Generic placeholder image">
							</div>
							<div class="col-xs-12 col-sm-7 p-0">
								<p class="card-text">
									Date de naissance :
									<%=collab.getDateDeNaissance()%></p>
								<p class="card-text">
									Adresse :
									<%=collab.getAdresse()%></p>
								<p class="card-text">
									Numéro de sécurité sociale :
									<%=collab.getNumSecu()%></p>
							</div>

						</div>
						<div class="d-flex flex-row flex-wrap float-right">
							<a href="#" class="btn btn-primary" align="right">Editer</a>
						</div>
					</div>
				</div>
			</div>
		<%
			}
		%>
			</div>
			</div>
		

		
</body>
</html>
