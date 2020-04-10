<!DOCTYPE html>
<html>
<meta charset="utf-8">
<head>
    <link rel="stylesheet" href="CSSPageRecherche.css">
    <title> Recherche </title>
</head>


<body>
<h1>Supprimer un bien</h1>

<form action="SupprimerUnBien.php" method ="POST">
  <fieldset>
    <label for="idBien">idBien</label>
    <input type="number" name="idBien" id="idBien"/>
    <br><br>
    <button type="reset" name="effacer" value="Rétablir">Effacer</button>
    <button type="submit" value = "supprimer" name="supprimer">Supprimer</button>

</fieldset>
</form>
    <a href="PageBiens.html"><button >retour</button></a>

<br>


<footer class="footer">
    <a href="Contact.html">
        Contact</a>
</footer>

</body>
</html>
