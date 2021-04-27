<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isErrorPage="true"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UFT-8">
<title>Insert title here</title>
 <link rel="stylesheet" href="bootstrap-3.3.7-dist/css/bootstrap.css">

</head>
<body>
<a href="getAllTAdmin">查询所有</a>
<nav class="navbar navbar-inverse navbar-fixed-top">
 <div class="container">
  <div class="navbar-header">
   <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
    <span class="sr-only">Toggle navigation</span>
    <span class="icon-bar"></span>
    <span class="icon-bar"></span>
    <span class="icon-bar"></span>
   </button>
   <a class="navbar-brand" href="#">Project name</a>
  </div>
  <div id="navbar" class="navbar-collapse collapse">
   <form class="navbar-form navbar-right">
    <div class="form-group">
     <input type="text" placeholder="Email" class="form-control">
    </div>
    <div class="form-group">
     <input type="password" placeholder="Password" class="form-control">
    </div>
    <button type="submit" class="btn btn-success">Sign in</button>
   </form>
  </div><!--/.navbar-collapse -->
 </div>
</nav>

<!-- Main jumbotron for a primary marketing message or call to action -->
<div class="jumbotron">
 <div class="container">
  <h1>Hello, world!</h1>
  <p>This is a template for a simple marketing or informational website. It includes a large callout called a jumbotron and three supporting pieces of content. Use it as a starting point to create something more unique.</p>
  <p><a class="btn btn-primary btn-lg" href="#" role="button">Learn more &raquo;</a></p>
 </div>
</div>

<div class="container">
 <!-- Example row of columns -->
 <div class="row">
  <div class="col-md-4 col-xs-12">
   <h2>Heading</h2>
   <p>Donec id elit non mi porta gravida at eget metus. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Etiam porta sem malesuada magna mollis euismod. Donec sed odio dui. </p>
   <p><a class="btn btn-default" href="#" role="button">View details &raquo;</a></p>
   <table class="table table-hover">
    <tbody>
    <tr>
     <td><h1>h1. Bootstrap heading</h1></td>
     <td class="type-info">Semibold 36px</td>
    </tr>
    <tr>
     <td><h2>h2. Bootstrap heading</h2></td>
     <td class="type-info">Semibold 30px</td>
    </tr>
    <tr>
     <td><h3>h3. Bootstrap heading</h3></td>
     <td class="type-info">Semibold 24px</td>
    </tr>
    <tr>
     <td><h4>h4. Bootstrap heading</h4></td>
     <td class="type-info">Semibold 18px</td>
    </tr>
    <tr>
     <td><h5>h5. Bootstrap heading</h5></td>
     <td class="type-info">Semibold 14px</td>
    </tr>
    <tr>
     <td><h6>h6. Bootstrap heading</h6></td>
     <td class="type-info">Semibold 12px</td>
    </tr>
    </tbody>
   </table>
  </div>
  <div class="col-md-4 col-xs-12">
   <h2>Heading</h2>
   <p>Donec id elit non mi porta gravida at eget metus. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Etiam porta sem malesuada magna mollis euismod. Donec sed odio dui. </p>
   <p><a class="btn btn-default" href="#" role="button">View details &raquo;</a></p>
   <!-- Standard button -->
   <button type="button" class="btn btn-default glyphicon glyphicon-heart">（默认样式）Default</button>

   <!-- Provides extra visual weight and identifies the primary action in a set of buttons -->
   <button type="button" class="btn btn-primary">（首选项）Primary</button>

   <!-- Indicates a successful or positive action -->
   <button type="button" class="btn btn-success">（成功）Success</button>

   <!-- Contextual button for informational alert messages -->
   <button type="button" class="btn btn-info">（一般信息）Info</button>

   <!-- Indicates caution should be taken with this action -->
   <button type="button" class="btn btn-warning">（警告）Warning</button>

   <!-- Indicates a dangerous or potentially negative action -->
   <button type="button" class="btn btn-danger">（危险）Danger</button>

   <!-- Deemphasize a button by making it look like a link while maintaining button behavior -->
   <button type="button" class="btn btn-link">（链接）Link</button>

  </div>
  <div class="col-md-4 col-xs-12">
   <h2>Heading</h2>
   <p>Donec sed odio dui. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Vestibulum id ligula porta felis euismod semper. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus.</p>
   <p><a class="btn btn-default" href="#" role="button">View details &raquo;</a></p>
  </div>
 </div>

 <hr>

 <footer>
  <p>&copy; 2016 Company, Inc.</p>
 </footer>
</div> <!-- /container -->

 <script type="text/javascript" src="js/jquery-1.8.2.min.js"></script>
</body>
</html>