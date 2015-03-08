<?php
/* cette version fonctionne */

// définition de la requête dans une var
	function request($sector){
		global $connect; // va chercher $connect qui est dans une autre fct
		$sql = "SELECT id_articles, titre, abstract, auteur, DATE_FORMAT(date, '%d %m %Y') AS date_fr
						FROM articles JOIN categories
						ON articles.id_cat= categories.id_categories
						WHERE categorie = '$sector'
						ORDER BY date DESC";	// fait requête sql avec le param secteur, converti la date en affichage fr et change son nom en date_fr
						// qd on fait un select, TOUJOURS prendre la clé primaire

		// echo $sql;	// echo requête pour debug --> comparer avec le msg d'erreur

	 	$col = $connect->query($sql);		// col contient l'identifiant de la requête. L'objet $connect est dispo car config.php est chargée avant
 		echo $connect->error;						// affiche l'erreur s'il y en a une
 		return $col;										// fct renvoie $ col
		// myPrint_r($col1); // pour débug
	}
?>
<div id="col1">
	<h1>Economie</h1>
	<!-- démarre boucle php -->
	<?php
	$col1 = request("Economie");
		if($col1->num_rows > 0) :										// num_rows nombre d'enregistrements qu'enregistre la req (ici 1 car 1 article dans la catégorie Economie)
			while($article = $col1->fetch_object()) :	// tant qu'il y en a, récup les contenus de la catégorie sous forme d'objet + déclaration var article et stockage dedans
	?>
	<div class="article">
	<!-- titre php -->
		<h1><?php echo $article->titre; ?></h1>
		<!-- date php -->
		<p class="date"><?php echo $article->date_fr; ?></p>
		<p>
		<!-- extrait php -->
			<?php echo $article->abstract; ?>
			<!-- rechargement de la page avec l'article correspondant en param d'URL pour le controller -->
			<a href="index.php?id_articles=<?php echo $article->id_articles ?>" class="plus">&gt;&gt;&gt;</a>
			</p>
		<p class="signature"><?php echo $article->auteur; ?></p>
	</div>
	<!-- fin boucle php -->
	<?php endwhile; endif; ?>
	<br>
</div>

<div id="col2">
	<h1>Social</h1>
	<?php
		$col2 = request("Social"); 
		if ($col2->num_rows > 0) :
			while($article = $col2->fetch_object()) : 
	?>
	<div class="article">
		<h1><?php echo $article->titre; ?></h1>
		<p class="date"><?php echo $article->date_fr; ?></p>
		<p>
			<?php echo $article->abstract; ?>
			<a href="index.php?id_articles=<?php echo $article->id_articles ?>" class="plus">&gt;&gt;&gt;</a>
		</p>
		<p class="signature"><?php echo $article->auteur; ?><br></p>
	</div>
	<?php endwhile; endif; ?>
</div>

<div id="col3">
	<h1>Sport</h1>
	<?php 
		$col3 = request("Sport");
		if($col3->num_rows > 0) :
			while($article = $col3->fetch_object()) :
	 ?>
	<div class="article">
		<h1><?php echo $article->titre; ?></h1>
		<p class="date"><?php echo $article->date_fr; ?></p>
		<p>
			<?php echo $article->abstract; ?>
			<a href="index.php?id_articles=<?php echo $article->id_articles ?>" class="plus">&gt;&gt;&gt;</a>
		</p>
		<p class="signature"><?php echo $article->auteur; ?><br></p>
	</div>
	<?php endwhile; endif; ?>