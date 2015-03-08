<?php
  global $connect; // va chercher $connect qui est dans une autre fct

  // requête SQL pour l'article principal
  $sql = "SELECT id_articles, titre, texte, auteur, categorie, DATE_FORMAT(date, '%d %m %Y') AS date_fr
          FROM articles JOIN categories
          ON articles.id_cat = categories.id_categories
          WHERE id_articles = ".$_GET["id_articles"]; // concat l'ID de l'article à la fin de la requête sql
         
    // requête SQL pour la sidebar
    $sql2 = "SELECT id_articles, titre, abstract, auteur, categorie, DATE_FORMAT(date, '%d %m %Y') AS date_fr
          FROM articles JOIN categories
          ON articles.id_cat = categories.id_categories
          WHERE id_articles != ".$_GET["id_articles"]." ORDER BY id_categories";

  // echo $sql;   // echo requête pour debug --> comparer avec le msg d'erreur

  $requestArticle = $connect->query($sql);        // col contient l'identifiant de la requête. L'objet $connect est dispo car config.php est chargée avant
  echo $connect->error;                           // affiche l'erreur s'il y en a une

  $requestSide = $connect->query($sql2);
?>
<!-- SIDEBAR
===========================================================================-->
  <div id="col1">
        <?php 
        // initialise le flag 
        $currentCat = 'aucune';
        // lance la boucle
        if($requestArticle -> num_rows > 0) :
          while($row = $requestSide->fetch_object()):
            // teste si la valeur de catégorie est != de $currentCat; par déf, oui
            if ($row->categorie != $currentCat):
              // si oui, écrit le titre de la catégorie
              echo "<h1>".$row->categorie."</h1>";
              // après avoir écrit le titre, redéfinit la var $currentCat pour la boucle suivante
              $currentCat = $row->categorie;
            endif ?>
          <div class="article">
          <h1><?php echo $row->titre ?></h1>
          <p class="date"><?php echo $row->date_fr ?></p>
          <p>
            <?php echo $row->abstract ?>
            <a href="index.php?id_articles=<?php echo $row->id_articles ?>" class="plus">&gt;&gt;&gt;</a>
          </p>
          <p class="signature"><?php echo $row->auteur ?></p>
              </div>
              <br>
          <?php endwhile; endif; ?>
      </div>

<!-- MAIN ARTICLE
===========================================================================-->
    <div id="col22">
      <?php if($requestArticle -> num_rows > 0) :
            while($row = $requestArticle->fetch_object()):?>
      <h1><?php echo $row->categorie ?></h1>
        <div class="article">
          <h1><?php echo $row->titre ?></h1>
          <p class="par"><?php echo $row->auteur ?></p>
          <p class="date"><?php echo $row->date_fr ?></p>
          <p><?php echo $row->texte ?></p>
        </div>
      <?php endwhile; endif; ?>
    </div>