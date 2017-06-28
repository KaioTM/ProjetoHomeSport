<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!-->
<html class="no-js">
    <!--<![endif]-->

    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>Elate &mdash; 100% Free Fully Responsive HTML5 Template by FREEHTML5.co</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="description" content="Free HTML5 Template by FREEHTML5.CO" />
        <meta name="keywords" content="free html5, free template, free bootstrap, html5, css3, mobile first, responsive" />
        <meta name="author" content="FREEHTML5.CO" />
        <!-- 
        //////////////////////////////////////////////////////

        FREE HTML5 TEMPLATE 
        DESIGNED & DEVELOPED by FREEHTML5.CO
                
        Website: 		http://freehtml5.co/
        Email: 			info@freehtml5.co
        Twitter: 		http://twitter.com/fh5co
        Facebook: 		https://www.facebook.com/fh5co

        //////////////////////////////////////////////////////
        -->
        <!-- Facebook and Twitter integration -->
        <meta property="og:title" content="" />
        <meta property="og:image" content="" />
        <meta property="og:url" content="" />
        <meta property="og:site_name" content="" />
        <meta property="og:description" content="" />
        <!-- Place favicon.ico and apple-touch-icon.png in the root directory -->
        <link rel="shortcut icon" href="favicon.ico">
        <link href='https://fonts.googleapis.com/css?family=Source+Sans+Pro:400,300,600,400italic,700' rel='stylesheet' type='text/css'>
        <!-- Animate.css -->
        <link rel="stylesheet" href="<c:url value="/resources/css/animate.css"/>">
        <!-- Icomoon Icon Fonts-->
        <link rel="stylesheet" href="<c:url value="/resources/css/icomoon.css"/>">
        <!-- Simple Line Icons -->
        <link rel="stylesheet" href="<c:url value="/resources/css/simple-line-icons.css"/>">
        <!-- Magnific Popup -->
        <link rel="stylesheet" href="<c:url value="/resources/css/magnific-popup.css"/>">
        <!-- Bootstrap  -->
        <link rel="stylesheet" href="<c:url value="/resources/css/bootstrap.css"/>">
        <!-- 
        Default Theme Style 
        You can change the style.css (default color purple) to one of these styles
        
        1. pink.css
        2. blue.css
        3. turquoise.css
        4. orange.css
        5. lightblue.css
        6. brown.css
        7. green.css

        -->
        <link rel="stylesheet" href="<c:url value="/resources/css/style.css"/>">
        <link rel="stylesheet" href="<c:url value="/resources/css/styleProjeto.css"/>">
        <!-- Modernizr JS -->
        <script src="<c:url value="/resources/js/modernizr-2.6.2.min.js"/>"></script>
        <!-- FOR IE9 below -->
        <!--[if lt IE 9]>
        <script src="js/respond.min.js"></script>
        <![endif]-->
    </head>

    <body>
        <header role="banner" id="fh5co-header">
            <div class="container">
                <!-- <div class="row"> -->
                <nav class="navbar navbar-default">
                    <div class="navbar-header">
                        <!-- Mobile Toggle Menu Button --><a href="#" class="js-fh5co-nav-toggle fh5co-nav-toggle" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar"><i></i></a> <a class="navbar-brand" href="index.html">Elate</a> </div>
                    <div id="navbar" class="navbar-collapse collapse">
                        <ul class="nav navbar-nav navbar-right">
                            <li class="active"><a href="#" data-nav-section="home"><span>Home</span></a></li>
                            <li><a href="#" data-nav-section="descubra"><span>Descubra</span></a></li>
                            <li><a href="#" data-nav-section="testimonials"><span>Testimonials</span></a></li>
                            <li><a href="#" data-nav-section="services"><span>Services</span></a></li>
                            <li><a href="#" data-nav-section="about"><span>About</span></a></li>
                            <li><a href="home.jsp"><span>Contact</span></a></li>
                            <li>
                                <div> 
                                    <div class="dropdown">

                                        <button class="btn btn-default dropdown-toggle" type="button" id="dropdownMenu1" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">

                                                <div class="row">
                                                    <div class="profile-header-container">   
                                                        <div class="profile-header-img">
                                                            <img class="img-circle" src="<c:url value="resources/images/place/kaio.jpg"/>" /> ${usuarioLogado.nome} ${usuarioLogado.sobrenome}
                                                            <!-- badge -->
                                                            <!--
                                                            <div class="rank-label-container">
                                                                <span class="label label-default rank-label">100 puntos</span>
                                                            </div>
                                                            -->
                                                        </div>
                                                    </div> 
                                                </div>
                                        </button>
                                        <ul class="dropdown-menu" aria-labelledby="dropdownMenu1">
                                            <li><a href="#">Action</a></li>
                                            <li><a href="#">Another action</a></li>
                                            <li><a href="#">Something else here</a></li>
                                            <li role="separator" class="divider"></li>
                                            <li><a href="#">Separated link</a></li>
                                        </ul>
                                    </div>
                                </div>
                        </ul>
                    </div>
                    </li>
                    </ul>
            </div>
        </nav>
        <!-- </div> -->
    </div>
</header>
<div class="modal fade" id="signinModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title" id="myModalLabel">Fa�a login</h4> </div>
            <div class="modal-body"> 
                <form class="navbar-form navbar-left" action="efetuaLogin" method="post">
                    <div class="form-group">
                        <input name="login" type="text" class="form-control" placeholder="Login">
                        <input name="senha" type="password" class="form-control" placeholder="Senha">
                    </div>
                    <button type="submit" class="btn btn-default">Entrar</button>
                </form>
            </div>
            <div class="modal-footer">

            </div>
        </div>
    </div>
</div>
<div class="modal fade" id="signupModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title" id="myModalLabel">Cadastre-se</h4> </div>
            <div class="modal-body"> 
                <form class="navbar-form navbar-left" action="autocadastro" method="post">
                    <div class="form-group">
                        Nome:<br/>
                        <input type="text" name="nome" class="form-control" placeholder="Digite"><br/>
                        Sobrenome:<br/>
                        <input type="text" name="sobrenome" class="form-control" placeholder="Digite"><br/>
                        Local de Moradia:<br/>
                        <input type="text" name="localMoradia" class="form-control" placeholder="Digite"><br/>
                        Esporte favorito:<br/>
                        <input type="text" name="esporteFavorito" class="form-control" placeholder="Digite"><br/>
                        Deseja receber hospedes?
                        <input name="receberHospede" type="radio" id="sim" value="S" checked="checked"/>Sim
                        <input name="receberHospede" type="radio" id="nao" value="N" />N�o
                        <br/>Quantidade de Hospedes:<select name='quantidadeHospede'>
                            <option selected="selected">Selecione...</option>
                            <option value="1">1</option>
                            <option value="2">2</option>
                            <option value="3">3</option>
                            <option value="4">4</option>
                            <option value="5">5</option>
                        </select><br/>
                        Login:<br/>
                        <input name="login" type="text" class="form-control" placeholder="Digite"><br/>
                        Senha:<br/>
                        <input name="senha" type="password" class="form-control" placeholder="Digite"><br/>

                        <button type="submit" class="btn btn-default">Enviar</button>
                    </div>
                </form>
            </div>
            <div class="modal-footer">
            </div>
        </div>
    </div>
</div>
<section id="fh5co-home" data-section="home" style="background-image: url(../images/full_image_2.jpg);" data-stellar-background-ratio="0.5">
    <div class="gradient"></div>
    <div class="container">
        <div class="text-wrap">
            <div class="text-inner">
                <div class="row">
                    <div class="col-md-8 col-md-offset-2">
                        <h1 class="to-animate">Do something you love.</h1>
                        <h2 class="to-animate">Another free HTML5 bootstrap template by <a href="http://freehtml5.co/" target="_blank" title="Free HTML5 Bootstrap Templates">FREEHTML5.co</a> released under <a href="http://creativecommons.org/licenses/by/3.0/" target="_blank">Creative Commons 3.0</a></h2> </div>
                </div>
            </div>
        </div>
    </div>
    <div class="slant"></div>
</section>
<section id="fh5co-intro">
    <div class="container">
        <div class="row row-bottom-padded-lg">
            <div class="fh5co-block to-animate" style="background-image: url(../images/img_7.jpg);">
                <div class="overlay-darker"></div>
                <div class="overlay"></div>
                <div class="fh5co-text"> <i class="fh5co-intro-icon icon-bulb"></i>
                    <h2>Plan</h2>
                    <p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>
                    <p><a href="#" class="btn btn-primary">Get In Touch</a></p>
                </div>
            </div>
            <div class="fh5co-block to-animate" style="background-image: url(images/img_8.jpg);">
                <div class="overlay-darker"></div>
                <div class="overlay"></div>
                <div class="fh5co-text"> <i class="fh5co-intro-icon icon-wrench"></i>
                    <h2>Develop</h2>
                    <p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>
                    <p><a href="#" class="btn btn-primary">Click Me</a></p>
                </div>
            </div>
            <div class="fh5co-block to-animate" style="background-image: url(images/img_10.jpg);">
                <div class="overlay-darker"></div>
                <div class="overlay"></div>
                <div class="fh5co-text"> <i class="fh5co-intro-icon icon-rocket"></i>
                    <h2>Launch</h2>
                    <p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>
                    <p><a href="#" class="btn btn-primary">Why Us?</a></p>
                </div>
            </div>
        </div>
        <div class="row watch-video text-center to-animate"> <span>Watch the video</span> <a href="https://vimeo.com/channels/staffpicks/93951774" class="popup-vimeo btn-video"><i class="icon-play2"></i></a> </div>
    </div>
</section>
<section id="fh5co-work" data-section="descubra">
    <div class="container">
        <div class="row">
            <div class="col-md-12 section-heading text-center">
                <h2 class="to-animate">Descubra</h2>
                <div class="row">
                    <div class="col-md-8 col-md-offset-2 subtext to-animate">
                        <h3>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</h3> </div>
                </div>
            </div>
        </div>
        <div class="row row-bottom-padded-sm">
            <div class="col-md-4 col-sm-6 col-xxs-12">
                <a href="images/place/rio.jpg" class="fh5co-project-item image-popup to-animate"> <img src="images/place/rio.jpg" alt="Image" class="img-responsive">
                    <div class="fh5co-text">
                        <h2>Project 1</h2> <span>Branding</span> </div>
                </a>
            </div>
            <div class="col-md-4 col-sm-6 col-xxs-12">
                <a href="images/place/sanfrancisco.jpg" class="fh5co-project-item image-popup to-animate"> <img src="images/place/sanfrancisco.jpg" alt="Image" class="img-responsive">
                    <div class="fh5co-text">
                        <h2>Project 2</h2> <span>Web</span> </div>
                </a>
            </div>
            <div class="clearfix visible-sm-block"></div>
            <div class="col-md-4 col-sm-6 col-xxs-12">
                <a href="images/work_3.jpg" class="fh5co-project-item image-popup to-animate"> <img src="images/work_3.jpg" alt="Image" class="img-responsive">
                    <div class="fh5co-text">
                        <h2>Project 3</h2> <span>Web</span> </div>
                </a>
            </div>
            <div class="col-md-4 col-sm-6 col-xxs-12">
                <a href="images/work_4.jpg" class="fh5co-project-item image-popup to-animate"> <img src="images/work_4.jpg" alt="Image" class="img-responsive">
                    <div class="fh5co-text">
                        <h2>Project 4</h2> <span>UI/UX</span> </div>
                </a>
            </div>
            <div class="clearfix visible-sm-block"></div>
            <div class="col-md-4 col-sm-6 col-xxs-12">
                <a href="images/work_5.jpg" class="fh5co-project-item image-popup to-animate"> <img src="images/work_5.jpg" alt="Image" class="img-responsive">
                    <div class="fh5co-text">
                        <h2>Project 1</h2> <span>Photography</span> </div>
                </a>
            </div>
            <div class="col-md-4 col-sm-6 col-xxs-12">
                <a href="images/work_6.jpg" class="fh5co-project-item image-popup to-animate"> <img src="images/work_6.jpg" alt="Image" class="img-responsive">
                    <div class="fh5co-text">
                        <h2>Project 2</h2> <span>Illustration</span> </div>
                </a>
            </div>
            <div class="clearfix visible-sm-block"></div>
            <div class="col-md-4 col-sm-6 col-xxs-12">
                <a href="images/work_7.jpg" class="fh5co-project-item image-popup to-animate"> <img src="images/work_7.jpg" alt="Image" class="img-responsive">
                    <div class="fh5co-text">
                        <h2>Project 3</h2> <span>Web</span> </div>
                </a>
            </div>
            <div class="col-md-4 col-sm-6 col-xxs-12">
                <a href="images/work_8.jpg" class="fh5co-project-item image-popup to-animate"> <img src="images/work_8.jpg" alt="Image" class="img-responsive">
                    <div class="fh5co-text">
                        <h2>Project 4</h2> <span>Sketch</span> </div>
                </a>
            </div>
            <div class="clearfix visible-sm-block"></div>
            <div class="col-md-4 col-sm-6 col-xxs-12">
                <a href="images/work_1.jpg" class="fh5co-project-item image-popup to-animate"> <img src="images/work_1.jpg" alt="Image" class="img-responsive">
                    <div class="fh5co-text">
                        <h2>Project 2</h2> <span>Illustration</span> </div>
                </a>
            </div>
        </div>
        <div class="row">
            <div class="col-md-12 text-center to-animate">
                <p>* Demo images from <a href="http://plmd.me/" target="_blank">plmd.me</a></p>
            </div>
        </div>
    </div>
</section>
<section id="fh5co-testimonials" data-section="testimonials">
    <div class="container">
        <div class="row">
            <div class="col-md-12 section-heading text-center">
                <h2 class="to-animate">Testimonials</h2>
                <div class="row">
                    <div class="col-md-8 col-md-offset-2 subtext to-animate">
                        <h3>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</h3> </div>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-4">
                <div class="box-testimony">
                    <blockquote class="to-animate-2">
                        <p>&ldquo;Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. Separated they live in Bookmarksgrove right at the coast of the Semantics, a large language ocean.&rdquo;</p>
                    </blockquote>
                    <div class="author to-animate">
                        <figure><img src="images/person1.jpg" alt="Person"></figure>
                        <p> Jean Doe, CEO <a href="http://freehtml5.co/" target="_blank">FREEHTML5.co</a> <span class="subtext">Creative Director</span> </p>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="box-testimony">
                    <blockquote class="to-animate-2">
                        <p>&ldquo;Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. Separated they live in Bookmarksgrove right at the coast of the Semantics, a large language ocean. Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.&rdquo;</p>
                    </blockquote>
                    <div class="author to-animate">
                        <figure><img src="images/person2.jpg" alt="Person"></figure>
                        <p> John Doe, Senior UI <a href="http://freehtml5.co/" target="_blank">FREEHTML5.co</a> <span class="subtext">Creative Director</span> </p>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="box-testimony">
                    <blockquote class="to-animate-2">
                        <p>&ldquo;Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. &rdquo;</p>
                    </blockquote>
                    <div class="author to-animate">
                        <figure><img src="images/person3.jpg" alt="Person"></figure>
                        <p> Chris Nash, Director <a href="http://freehtml5.co/" target="_blank">FREEHTML5.co</a> <span class="subtext">Creative Director</span> </p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<section id="fh5co-services" data-section="services">
    <div class="container">
        <div class="row">
            <div class="col-md-12 section-heading text-left">
                <h2 class=" left-border to-animate">Services</h2>
                <div class="row">
                    <div class="col-md-8 subtext to-animate">
                        <h3>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</h3> </div>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-6 col-sm-6 fh5co-service to-animate"> <i class="icon to-animate-2 icon-anchor"></i>
                <h3>Brand &amp; Strategy</h3>
                <p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. Separated they live in Bookmarksgrove right at the coast of the Semantics, a large language ocean</p>
            </div>
            <div class="col-md-6 col-sm-6 fh5co-service to-animate"> <i class="icon to-animate-2 icon-layers2"></i>
                <h3>Web &amp; Interface</h3>
                <p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. Separated they live in Bookmarksgrove right at the coast of the Semantics, a large language ocean</p>
            </div>
            <div class="clearfix visible-sm-block"></div>
            <div class="col-md-6 col-sm-6 fh5co-service to-animate"> <i class="icon to-animate-2 icon-video2"></i>
                <h3>Photo &amp; Video</h3>
                <p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. Separated they live in Bookmarksgrove right at the coast of the Semantics, a large language ocean</p>
            </div>
            <div class="col-md-6 col-sm-6 fh5co-service to-animate"> <i class="icon to-animate-2 icon-monitor"></i>
                <h3>CMS &amp; eCommerce</h3>
                <p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. Separated they live in Bookmarksgrove right at the coast of the Semantics, a large language ocean</p>
            </div>
        </div>
    </div>
</section>
<section id="fh5co-about" data-section="about">
    <div class="container">
        <div class="row">
            <div class="col-md-12 section-heading text-center">
                <h2 class="to-animate">About</h2>
                <div class="row">
                    <div class="col-md-8 col-md-offset-2 subtext to-animate">
                        <h3>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</h3> </div>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-4">
                <div class="fh5co-person text-center to-animate">
                    <figure><img src="images/person1.jpg" alt="Image"></figure>
                    <h3>Jean Smith</h3> <span class="fh5co-position">Web Designer</span>
                    <p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts</p>
                    <ul class="social social-circle">
                        <li><a href="#"><i class="icon-twitter"></i></a></li>
                        <li><a href="#"><i class="icon-facebook"></i></a></li>
                        <li><a href="#"><i class="icon-dribbble"></i></a></li>
                    </ul>
                </div>
            </div>
            <div class="col-md-4">
                <div class="fh5co-person text-center to-animate">
                    <figure><img src="images/person2.jpg" alt="Image"></figure>
                    <h3>Rob Smith</h3> <span class="fh5co-position">Web Developer</span>
                    <p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts</p>
                    <ul class="social social-circle">
                        <li><a href="#"><i class="icon-twitter"></i></a></li>
                        <li><a href="#"><i class="icon-facebook"></i></a></li>
                        <li><a href="#"><i class="icon-github"></i></a></li>
                    </ul>
                </div>
            </div>
            <div class="col-md-4">
                <div class="fh5co-person text-center to-animate">
                    <figure><img src="images/person3.jpg" alt="Image"></figure>
                    <h3>Larry Ben</h3> <span class="fh5co-position">Web Designer</span>
                    <p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts</p>
                    <ul class="social social-circle">
                        <li><a href="#"><i class="icon-twitter"></i></a></li>
                        <li><a href="#"><i class="icon-facebook"></i></a></li>
                        <li><a href="#"><i class="icon-dribbble"></i></a></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</section>
<section id="fh5co-counters" style="background-image: url(../images/full_image_1.jpg);" data-stellar-background-ratio="0.5">
    <div class="fh5co-overlay"></div>
    <div class="container">
        <div class="row">
            <div class="col-md-12 section-heading text-center to-animate">
                <h2>Fun Facts</h2> </div>
        </div>
        <div class="row">
            <div class="col-md-3 col-sm-6 col-xs-12">
                <div class="fh5co-counter to-animate"> <i class="fh5co-counter-icon icon-briefcase to-animate-2"></i> <span class="fh5co-counter-number js-counter" data-from="0" data-to="89" data-speed="5000" data-refresh-interval="50">89</span> <span class="fh5co-counter-label">Finished projects</span> </div>
            </div>
            <div class="col-md-3 col-sm-6 col-xs-12">
                <div class="fh5co-counter to-animate"> <i class="fh5co-counter-icon icon-code to-animate-2"></i> <span class="fh5co-counter-number js-counter" data-from="0" data-to="2343409" data-speed="5000" data-refresh-interval="50">2343409</span> <span class="fh5co-counter-label">Line of codes</span> </div>
            </div>
            <div class="col-md-3 col-sm-6 col-xs-12">
                <div class="fh5co-counter to-animate"> <i class="fh5co-counter-icon icon-cup to-animate-2"></i> <span class="fh5co-counter-number js-counter" data-from="0" data-to="1302" data-speed="5000" data-refresh-interval="50">1302</span> <span class="fh5co-counter-label">Cup of coffees</span> </div>
            </div>
            <div class="col-md-3 col-sm-6 col-xs-12">
                <div class="fh5co-counter to-animate"> <i class="fh5co-counter-icon icon-people to-animate-2"></i> <span class="fh5co-counter-number js-counter" data-from="0" data-to="52" data-speed="5000" data-refresh-interval="50">52</span> <span class="fh5co-counter-label">Happy clients</span> </div>
            </div>
        </div>
    </div>
</section>
<section id="fh5co-contact" data-section="contact">
    <div class="container">
        <div class="row">
            <div class="col-md-12 section-heading text-center">
                <h2 class="to-animate">Get In Touch</h2>
                <div class="row">
                    <div class="col-md-8 col-md-offset-2 subtext to-animate">
                        <h3>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</h3> </div>
                </div>
            </div>
        </div>
        <div class="row row-bottom-padded-md">
            <div class="col-md-6 to-animate">
                <h3>Contact Info</h3>
                <ul class="fh5co-contact-info">
                    <li class="fh5co-contact-address "> <i class="icon-home"></i> 5555 Love Paradise 56 New Clity 5655,
                        <br>Excel Tower United Kingdom </li>
                    <li><i class="icon-phone"></i> (123) 465-6789</li>
                    <li><i class="icon-envelope"></i>info@freehtml5.co</li>
                    <li><i class="icon-globe"></i> <a href="http://freehtml5.co/" target="_blank">freehtml5.co</a></li>
                </ul>
            </div>
            <div class="col-md-6 to-animate">
                <h3>Contact Form</h3>
                <div class="form-group ">
                    <label for="name" class="sr-only">Name</label>
                    <input id="name" class="form-control" placeholder="Name" type="text"> </div>
                <div class="form-group ">
                    <label for="email" class="sr-only">Email</label>
                    <input id="email" class="form-control" placeholder="Email" type="email"> </div>
                <div class="form-group ">
                    <label for="phone" class="sr-only">Phone</label>
                    <input id="phone" class="form-control" placeholder="Phone" type="text"> </div>
                <div class="form-group ">
                    <label for="message" class="sr-only">Message</label>
                    <textarea name="" id="message" cols="30" rows="5" class="form-control" placeholder="Message"></textarea>
                </div>
                <div class="form-group ">
                    <input class="btn btn-primary btn-lg" value="Send Message" type="submit"> </div>
            </div>
        </div>
    </div>
</div>
<div id="map" class="to-animate"></div>
</section>
<footer id="footer" role="contentinfo"> <a href="#" class="gotop js-gotop"><i class="icon-arrow-up2"></i></a>
    <div class="container">
        <div class="">
            <div class="col-md-12 text-center">
                <p>&copy; Elate Free HTML5. All Rights Reserved.
                    <br>Created by <a href="http://freehtml5.co/" target="_blank">FREEHTML5.co</a> Images: <a href="http://pexels.com/" target="_blank">Pexels</a>, <a href="http://plmd.me/" target="_blank">plmd.me</a></p>
            </div>
        </div>
        <div class="row">
            <div class="col-md-12 text-center">
                <ul class="social social-circle">
                    <li><a href="#"><i class="icon-twitter"></i></a></li>
                    <li><a href="#"><i class="icon-facebook"></i></a></li>
                    <li><a href="#"><i class="icon-youtube"></i></a></li>
                </ul>
            </div>
        </div>
    </div>
</footer>
<script type="text/javascript">
    $(document).ready(function () {
        $.get('Usuario', {usuarioId: 2}, function (usuario) {
            //document.getElementById("nome").innerHTML(usuario.nome);
            $("#nome").html(usuario.nome);
            $("#nome").parent().show();
        });
    });
</script>
<!-- jQuery -->
<script src="<c:url value="/resources/js/jquery.min.js"/>"></script>
<!-- jQuery Easing -->
<script src="<c:url value="/resources/js/jquery.easing.1.3.js"/>"></script>
<!-- Bootstrap -->
<script src="<c:url value="/resources/js/bootstrap.min.js"/>"></script>
<!-- Waypoints -->
<script src="<c:url value="/resources/js/jquery.waypoints.min.js"/>"></script>
<!-- Stellar Parallax -->
<script src="<c:url value="/resources/js/jquery.stellar.min.js"/>"></script>
<!-- Counter -->
<script src="<c:url value="/resources/js/jquery.countTo.js"/>"></script>
<!-- Magnific Popup -->
<script src="<c:url value="/resources/js/jquery.magnific-popup.min.js"/>"></script>
<script src="<c:url value="/resources/js/magnific-popup-options.js"/>"></script>
<!-- Google Map -->
<script src="<c:url value="https://maps.googleapis.com/maps/api/js?key=AIzaSyCefOgb1ZWqYtj7raVSmN4PL2WkTrc-KyA&sensor=false"/>"></script>
<script src="<c:url value="/resources/js/google_map.js"/>"></script>
<!-- Main JS (Do not remove) -->
<script src="<c:url value="/resources/js/main.js"/>"></script>
</body>

</html>