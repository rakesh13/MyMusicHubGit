<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ include file="/WEB-INF/views/template/header.jsp" %>

        <!-- Carousel
        ================================================== -->
        <div id="myCarousel" class="carousel slide" data-ride="carousel">
            <!-- Indicators -->
            <ol class="carousel-indicators">
                <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                <li data-target="#myCarousel" data-slide-to="1"></li>
                <li data-target="#myCarousel" data-slide-to="2"></li>
            </ol>
            <div class="carousel-inner" role="listbox">
                <div class="item active">
                    <img class="first-slide home-image" src="<c:url value="/resources/images/back1.jpg" />" alt="First slide">
                    <div class="container">
                        <div class="carousel-caption">
                            <h1>Welcome to Rakesh's Music Hub</h1>
                            <p>Here you can view and buy Guitar. Piano and other music related Accessories.!</p>
                        </div>
                    </div>
                </div>
                <div class="item">
                    <img class="second-slide home-image" src="<c:url value="/resources/images/back2.jpg" />" alt="Second slide">
                    <div class="container">
                        <div class="carousel-caption">
                            <h1>Facts You Should know About Music</h1>
                            <p>Music brings joy, Its one of the best thing to relax, so purchase as many as you want.</p>
                        </div>
                    </div>
                </div>
                <div class="item">
                    <img class="third-slide home-image " src="<c:url value="/resources/images/back3.jpg" />" alt="Third slide">
                    <div class="container">
                        <div class="carousel-caption">
                            <h1>It's A Guitar Collection </h1>
                            <p>Checkout out Awesome list of Guitar.</p>
                        </div>
                    </div>
                </div>
            </div>
            <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
                <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
                <span class="sr-only">Previous</span>
            </a>
            <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
                <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
                <span class="sr-only">Next</span>
            </a>
        </div><!-- /.carousel -->


      

        <div class="container marketing">

            <!-- Three columns of text below the carousel -->
            <div class="row">
                <div class="col-lg-4">
                    <a class="btn btn-default" href="<c:url value="/product/productList?searchCondition=Guitar" />" role="button">
                        <img class="img-circle" src="<c:url value="/resources/images/instrument.jpg"/>" alt="Instrument Image" width="140" height="140">
                    </a>

                    <h2>Guitar</h2>
                    <p>The guitar is a popular musical instrument classified as a string instrument with anywhere from 4 to 18 strings, usually having 6</p>

                </div>



                <div class="col-lg-4">
                    <a class="btn btn-default" href="<c:url value="/product/productList?searchCondition=Piano" />" role="button">
                        <img class="img-circle" src="<c:url value="/resources/images/record.gif"/>" alt="Instrument Image" width="140" height="140">
                    </a>

                    <h2>Piano</h2>
                    <p>The piano is a musical instrument played using a keyboard, which is a row of keys (small levers) that the performer presses down or strikes with the fingers </p>

                </div>


                <div class="col-lg-4">
                    <a class="btn btn-default" href="<c:url value="/product/productList?searchCondition=Accessory" />" role="button">
                        <img class="img-circle" src="<c:url value="/resources/images/accessory.jpg"/>" alt="Instrument Image" width="140" height="140">
                    </a>

                    <h2>Accessories</h2>
                    <p>All music related Accessories</p>

                </div>
            </div>


<%@ include file="/WEB-INF/views/template/footer.jsp" %>
