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
	});
	
	 $('#bouton').click(function(){
		    $('#formulaire').submit();
		  });

});
