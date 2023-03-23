<?php
    // $bd = connexionPDO();
?>

<footer class="page-footer font-small stylish-color-dark pt-4">

  <div class="container text-center text-md-left">

    <div class="row">

      <div class="col-md-4 mx-auto">

        <h5 class="font-weight-bold text-uppercase mt-3 mb-4">Footer Content</h5>
        <p>Ici, vous pouvez utiliser des lignes et des colonnes pour organiser le contenu de votre pied de page. </p>

      </div>


   

      <div class="col-md-2 mx-auto">

        <h5 class="font-weight-bold text-uppercase mt-3 mb-4">Les catégories</h5>

        <ul class="list-unstyled">
            <li><a href="articles.php">Tous les articles</a></li>
            <?php if (isset($categories)) :?>
                <?php for ($i=0 ; $i<COUNT($categories); $i++) : ?>
                    <li>
                        <a href="articles.php?categorie=<?= $categories[$i]['id']?>&p=1"><?= ucwords(strtolower($categories[$i]['nom'])) ?></a>
                    </li>
                <?php endfor ;?>
            <?php endif ;?>
          
         
        </ul>

      </div>

      

      <div class="col-md-2 mx-auto">


        <h5 class="font-weight-bold text-uppercase mt-3 mb-4">Divers</h5>

        <ul class="list-unstyled">
        <?php if (isset($_SESSION['user']->id)) :?>
          <?php if ($_SESSION['user']->id_droits == 42 || $_SESSION['user']->id_droits == 1337 ) : ?>
              <li>
                <a href="creer-article.php" >Créer un article</a>
              </li>
          <?php endif ;?>
          <?php if ( $_SESSION['user']->id_droits == 1337 ) : ?>
              <li>
                <a href="admin.php" >Espace administrateur</a>
              </li>
          <?php endif ;?>
          <li>
            <a href="profil.php" >Mon compte</a>
          </li>
        <?php else :?>
          <li>
            <a href="connexion.php" >Connexion</a>
          </li>
          <li>
            <a href="inscription.php" >Inscription</a>
          </li>
        <?php endif ;?>
        </ul>

      </div>



    </div>

  </div>

<!-- SI PAS CONNECTE  -->
<?php if (!isset($_SESSION['user']->id)) : ?>
  <hr>

  <ul class="list-unstyled list-inline text-center py-2">
   
    <li class="list-inline-item">
      <a href="inscription.php" class="btn btn-danger btn-rounded">S'enregistrer</a>
    </li>
  </ul>
 
<?php else : ?>
    <hr>
    <ul class="list-unstyled list-inline text-center py-2">
   
   <li class="list-inline-item">
     <a href="php/traitement/deconnexion.php" class="btn btn-danger btn-rounded">Se deconnecter</a>
   </li>
 </ul>
  <hr>
<?php endif ;?>
  <ul class="list-unstyled list-inline text-center">
  
  </ul>

  <div class="footer-copyright text-center py-3">
    <p> © 2023 Copyright: Douib M. Rigaud G.</p>
  </div>
</footer>