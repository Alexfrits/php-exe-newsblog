<?php require("config.php"); ?>
<?php include("header.php"); ?>
<?php
// MAIN CONTROLLER:
// s'il y a un param id_article dans l'URL, affiche l'article à l'id correspondant
  if(isset($_GET['id_articles'])) :
    include("articles_details.php");
  // sinon teste s'il y a un param search dans l'URL (du chanp de recherche)
  elseif (isset($_GET['search'])) :
  	include("result_search.php");
  // sinon affiche uniqt l'accueil
  else : include('accueil.php');
  endif;
?>
<?php include("footer.php"); ?>