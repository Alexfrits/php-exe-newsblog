<?php
/*
* VERSION TEST --> version fonctionnelle = accueil-working.php
*/

// définition de la requête dans une var
	global $connect;
	$sql = "SELECT id_articles, id_categories, id_cat, categorie, titre, abstract, auteur, DATE_FORMAT(date, '%d %m %Y') AS date_fr
					FROM articles JOIN categories
					ON articles.id_cat = categories.id_categories
					ORDER BY id_categories";

 	$col = $connect->query($sql);
 	// débug:
		// echo $connect->error;
		// myPrint_r($col);

		// initialise flag en dehors de la boucle pour qu'il ne soit pas réinitialisé à chaque tour
  $flag = 'initial';
  // teste s'il y a des articles
	if($col -> num_rows > 0) :
		while ($article = $col->fetch_object()) :
 			// teste si la cat est diff de la précédente et si elle n'est pas celle de base (pour exclure la première colonne)
 			if ($flag != $article->categorie && $flag != 'initial'):
 				// si oui, cela veut dire qu'il y a déjà une div colonne ouverte qui doit être fermée
 				echo '</div>';
 			endif;
 			// teste la valeur du flag
 			if($flag != $article->categorie) :
 				// ouverture de la div colonne
 				echo '<div id="col'.$article->id_categories.'">';
 				// titre colonne
				echo '<h1>'.$article->categorie.'</h1>';
			endif;
			// sors du test de flag et écrit l'article
			echo '<div class="article">
						<h1>'.$article->titre.'</h1>
						<p class="date">'.$article->date_fr.'</p>
						<p>'.$article->abstract.'
						<a href="index.php?id_articles='.$article->id_articles.'" class="plus">&gt;&gt;&gt;</a></p>
						<p class="signature">'.$article->auteur.'</p>
						</div>';
			// change la valeur du flag après chaque tour
			$flag = $article->categorie;
		endwhile;
	endif;
?>