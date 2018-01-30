$(document).ready(function() {
	
	$('#creer').click(function(){
		var cpt = 0;
		$('input').each(function(){
			if (this.value==""){
				cpt++;
				$(this).addClass('is-invalid');
			}else{
				$(this).removeClass('is-invalid');
			}
			
			if(cpt==0){
				$('#confirmation').modal('show');
			}
		})
		
		$('#nommodal').text("Nom : "+$('#nom').val());
		$('#prenommodal').text("Prenom : "+$('#prenom').val());
		$('#datemodal').text("Date : "+$('#date').val());
		$('#adressemodal').text("Adresse : "+$('#adresse').val());
		$('#secumodal').text("Numero de securite sociale : "+$('#secu').val());
	});
	
	 $('#bouton').click(function(){
		    $('#formulaire').submit();
		  });
	 
	 

});
