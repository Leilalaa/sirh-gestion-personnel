<%@page import="java.util.List"%>
<%@ page language="java" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

  <head>
      <meta charset="UTF-8">
      <meta name="viewport" content="width=device-width, initial-scale=1.0">
      <meta http-equiv="X-UA-Compatible" content="ie=edge">
      <title>Nouveau collaborateur</title>
      <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/semantic-ui@2.2.13/dist/semantic.min.css">
      <!-- Bootstrap CSS -->
      <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
      <script src="https://code.jquery.com/jquery-3.1.1.min.js" integrity="sha256-hVVnYaiADRTO2PzUGmuLJr8BLUSjGIZsDYGmIJLv2b8=" crossorigin="anonymous"></script>
      <script src="https://cdn.jsdelivr.net/npm/semantic-ui@2.2.13/dist/semantic.min.js"></script>
      <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
	  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
	  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

       <script src="<%= request.getContextPath()%>/javaScript/creer-collab.js"></script>


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
<br />

<body class="ui container-fluid">
  <h1> Nouveau collaborateur </h1>

  <br />
  <div class="container-fluid float-center">
  <form id="formulaire" name="formulaire" method = "POST" action = "<%= request.getContextPath()%>/collaborateurs/creer">
    <div class="form-group row col-10">
      <label for="nom" class="col-sm-2 col-form-label">Nom</label>
      <div class="col-sm-6">
        <input type="text" class="form-control" id="nom" name="nom" required>
        <div class="invalid-feedback">
          Le nom est obligatoire.
        </div>
      </div>
    </div>
    <div class="form-group row col-10">
      <label for="prenom" class="col-sm-2 col-form-label">Prénom</label>
      <div class="col-sm-6">
        <input type="text" class="form-control" id="prenom" name="prenom" required>
        <div class="invalid-feedback">
          Le prénom est obligatoire.
        </div>
      </div>
    </div>
      <div class="form-group row col-10">
        <label for="date" class="col-sm-2 col-form-label">Date de naissance</label>
        <div class="col-sm-6">
          <input type="text" class="form-control" id="date" name="date" required>
          <div class="invalid-feedback">
            La date de naissance est obligatoire.
          </div>
        </div>
      </div>
      <div class="form-group row col-10">
        <label for="adresse" class="col-sm-2 col-form-label">Adresse</label>
        <div class="col-sm-6">
          <input type="text" class="form-control" id="adresse" name="adresse" rows="3" required>
          <div class="invalid-feedback">
            L'adresse est obligatoire.
          </div>
        </div>
      </div>
      <div class="form-group row col-10">
        <label for="secu" class="col-sm-2 col-form-label">Numéro de sécurité sociale</label>
        <div class="col-sm-6">
          <input type="text" class="form-control" id="secu" name="numSecu" required>
          <div class="invalid-feedback">
            Le numéro de sécurité sociale est obligatoire.
          </div>
        </div>
       </div>
      <div class="form-group row float-right">
        <div class="col-sm-4">
          <button type="button" class="btn btn-primary mb-2" id="creer">Créer</button>


      <!-- Modal -->
        <div class="modal fade" id="confirmation" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
          <div class="modal-dialog modal-dialog-centered">
            <div class="modal-content">
              <div class="modal-header">
                <h5 class="modal-title" id="titre">Créer un collaborateur</h5>
              </div>
              <div class="modal-body">
                Vous êtes sur le point de créer un nouveau collaborateur.
                <div class = "row col-10" id="nommodal">
                  
                </div>
                <div class = "row col-10" id="prenommodal">
          
                </div>
                <div class = "row col-10" id="datemodal">
          
                </div>
                <div class = "row col-10" id="adressemodal">
               
                </div>
                <div class = "row col-10" id="secumodal">
              
                </div>

              </div>
              <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Annuler</button>
                <button type="button" class="btn btn-primary" id="bouton">Confirmer</button>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    </div>
      </form>
  </div>
</body>

</html>
