<?php 
  $keyword = $_GET['search']; // stock valeur de search dans l'URL dans var $keyword
  $sql = "SELECT *
          FROM articles JOIN categories
          ON articles.id_cat = categories.id_categories
          WHERE titre
          LIKE '%$keyword%' OR texte LIKE '%$keyword%'"; // POSSIBLE car PHP interprète les var entre double quotes

  $research = $connect->query($sql);  // applique la méth query de l'obj $connect à $research
  // echo $connect->error;
  // myPrint_r($research);
?>
<div id="col22">
  <h1>Résultats de recherche</h1> 
<?php
  if($research->num_rows > 0) :
    while( $row = $research->fetch_object() ): ?>
      <div class="article"> 
        <table width="100%">
          <tbody>
            <tr>
              <td scope="col" bgcolor="#bdd8f6" valign="top" width="4%">&nbsp;&nbsp;</td>
              <td scope="col" valign="top" width="68%">
                <h1><?php echo $row->titre ?></h1>               
                <p align="left">
                Par <?php echo $row->auteur ?>
                &nbsp;&nbsp;&nbsp;&nbsp;<a href="index.php?id_articles=<?php echo $row->id_articles ?>" class="plus">&gt;&gt;&gt;</a></p>

              </td>
              <td scope="col" valign="top" width="28%">
                <div align="left">
                  <p class="date"><?php echo $row->date ?></p>
                  <p class="date"><?php echo $row->categorie ?></p>
                </div>
              </td>
            </tr>
            <tr>
              <td colspan="3">&nbsp;</td>
              </tr>
          </tbody>
        </table>
      </div>
   <?php endwhile;
    else: echo '<div class="article"><p>Sorry, pas d’article répondant à  vos critères</p></div>';
    endif; ?>
</div>