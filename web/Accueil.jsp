<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> <!--pour pouvoir print en faisant <c : out> -->
<!DOCTYPE html>
<html lang="fr">

  <head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Accueil Festival</title>

    <!-- Bootstrap core CSS -->
    <link href="style/bootstrap.min.css" rel="stylesheet">
    <link href="style/bootstrap.css" rel="stylesheet">
    
    <!-- Custom styles for this template -->
    <link href="style/shop-homepage.css" rel="stylesheet">

  </head>

  <body>

    <!-- Navigation -->
    <jsp:include page="Header.jsp" />

    <!-- Page Content -->
        <div class="container">
        <div class="row">
          <div class="col-lg-11 mx-auto">
              <img src="Images/ImageFestival.jpg" class="img-rounded" alt="Image Festival 2018">
          </div>
        </div>
      </div>
    <!-- /.container -->

    <!-- Footer -->
    <jsp:include page="Footer.jsp" />

    <!-- Bootstrap core JavaScript -->
    <script src="js/jquery.min.js"></script>
    <script src="js/bootstrap.bundle.min.js"></script>
  </body>

</html>
