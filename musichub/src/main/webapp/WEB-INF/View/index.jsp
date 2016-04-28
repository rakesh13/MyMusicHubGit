<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://www.springframework.org/tags" %>
<!DOCTYPE html>
<html lang="en">

<head>

	<jsp:include page="header.jsp" />
    <title>Welcome Page</title>

</head>

<body>

    <header class="business-header">
        <div class="container">
          <!--   <div class="row">
                <div class="col-lg-12">
                    <h1 class="tagline">Let's Rock On with the feet of music</h1>
                </div>
                
            </div>
           --> 
           <div id="myCarousel" class="carousel slide" data-ride="carousel" style="width:100%;height: 30%">
    <!-- Carousel indicators -->
    <ol class="carousel-indicators">
        <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
        <li data-target="#myCarousel" data-slide-to="1"></li>
        <li data-target="#myCarousel" data-slide-to="2"></li>
         <li data-target="#myCarousel" data-slide-to="3"></li>
    </ol>   
    <!-- Wrapper for carousel items -->
    <div class="carousel-inner">
        <div class="item active">
            <img src="<c:url value='/resources/images/guitar.jpg' />" height="30%" alt="First Slide">
        </div>
        <div class="item">
            <img src="<c:url value='/resources/images/dafli.jpg'/>" height="30%" alt="Second Slide">
        </div>
        <div class="item">
            <img src="<c:url value='/resources/images/violin.jpg'/>" height="30%" alt="Third Slide">
        </div>
        <div class="item">
            <img src="<c:url value='/resources/images/accessories.jpg'/>" height="30%" alt="Third Slide">
        </div>
    
    </div>
    <!-- Carousel controls -->
    <a class="carousel-control left" href="#myCarousel" data-slide="prev">
        <span class="glyphicon glyphicon-chevron-left"></span>
    </a>
    <a class="carousel-control right" href="#myCarousel" data-slide="next">
        <span class="glyphicon glyphicon-chevron-right"></span>
    </a>
</div>
           
        </div>
    </header>

    <!-- Page Content -->
    <br><br><br>
    <div class="container">

        <hr>

        <div class="row">
            <div class="col-sm-8">
                <h2>Music Hub !!! Get all that you need</h2>
                <p>Music is a form of entertainment that puts sounds together in a way that people like or find interesting. Most music includes people singing with their voices or playing musical instruments, such as the piano, guitar, or drums.</p>
                <p>Even in the stone age people made music. The first music was probably made trying to imitate sounds and rhythms that occurred naturally. Human music may echo these phenomena using patterns, repetition and tonality. This kind of music is still here today. Shamans sometimes imitate sounds that are heard in nature. It may also serve as entertainment (games), or have practical uses, like luring animals when hunting.</p>
                <p>
                    <a class="btn btn-default btn-lg" href="#">View More &raquo;</a>
                </p>
            </div>
            <div class="col-sm-4">
                <h2>Contact Us</h2>
                <address>
                    <strong>Music Hub Ltd</strong>
                    <br>Bangalore, India
                    <br>Bangalore India
                    <br>
                </address>
                <address>
                    <abbr title="Phone">P:</abbr>(826)057-9885
                    <br>
                    <abbr title="Email">E:</abbr> <a href="mailto:#">rakesh.pandit@niit.com</a>
                </address>
            </div>
        </div>
        <!-- /.row -->

        <hr>

        <div class="row">
            <div class="col-sm-4">
                <a href="#"><img class="img-circle img-responsive img-center" src="<c:url value="/resources/images/products.jpg" />" height="200px" width="200px" alt="">
                <center><h2>Products</h2></center></a>
                <p>Click Here and View about all the Products we have</p>
            </div>
            <div class="col-sm-4">
                <a href="#"><img class="img-circle img-responsive img-center" src="<c:url value="/resources/images/productZone.jpg" />" height="200px" width="200px" alt="">
                <center><h2>Special Zone</h2></center></a>
                <p>This is the Special Zone for the music Lovers. Please note you will be charged as per our policy</p>
            </div>
            <div class="col-sm-4">
                <a href="#"><img class="img-circle img-responsive img-center" src="<c:url value="/resources/images/accessories.jpg" />" height="280px" width="280px" alt="">
                <center><h2>Accessories</h2></center></a>
                <p>Yes we do sell all the Accessories.</p>
            </div>
        </div>
        <!-- /.row -->

        <hr>

        

    </div>
    <!-- /.container -->

	<jsp:include page="footer.jsp" />


</body>

</html>
