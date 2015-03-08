<?php 
	// 1. config.php contient la connexion et retourene $connect
	// 2. définition de la requête
	$sql = "SELECT * …"
	// 3. exécution de la requête
	$request = $connect	->query($sql)
		// a. affichage erreur éventuelle
		echo $connect->error
		// b. tester s'il y a au moins 1 enregisrtement
		if($request->num_rows > 0) :
		// c. si oui : boucle conversion en objet
			while( $row = $request->fetch_object() ): 
				éléments ) répéter en texte; HTML
				echo $row->champ; // affiche un champ (titre, auteur…)
			endwhile;
		endif;
?>	