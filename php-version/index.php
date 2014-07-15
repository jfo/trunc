<?php

  class JeffList
  {
    public function something()
    {
      echo "hi";
    }
  }

  $x = new JeffList();
  $submitted = isset($_POST["var"]);
?>

<!DOCTYPE html>

<html>

  <head>
  </head>

  <body>


      <?php if($submitted) {
        echo var_dump($_POST);
        $x->something();
      }?>

      <form method="POST" action="/">
        <input type="text" name="var"/>
        <input type="submit" value="whatever" />
      </form>


  </body>

</html>
