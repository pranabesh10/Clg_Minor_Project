<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta content="width=device-width, initial-scale=1.0" name="viewport">

    <title>KIITM</title>
    <link rel="stylesheet" href="index.css">

    <!-- Favicons -->
    <link rel="icon" type="image/x-icon" href="KIITM logo2.jpeg">
    <!-- Font awesome -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css"
        integrity="sha512-z3gLpd7yknf1YoNbCzqRKc4qyor8gaKU1qmn+CShxbuBusANI9QpRohGBreCFkKxLhei6S9CQXFEbbKuqLg0DA=="
        crossorigin="anonymous" referrerpolicy="no-referrer" />
    <!-- Bootstrap -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"
        integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
        
    <link rel="preconnect" href="https://fonts.googleapis.com">
   <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
   <link href="https://fonts.googleapis.com/css2?family=Domine:wght@600&display=swap" rel="stylesheet">
   <link href="https://fonts.googleapis.com/css2?family=Libre+Baskerville&display=swap" rel="stylesheet">
</head>

<body>

    <section id="topbar" class="d-flex align-items-center">
        <div class="container d-flex justify-content-center justify-content-md-between">
            <div class="contact-info d-flex align-items-center">
                <i class="fa-regular fa-envelope d-flex align-items-center"><a
                        href="mailto:makautreghelp@gmail.com">kiitmreghelp@gmail.com</a></i>
                <i class="fa-solid fa-phone d-flex align-items-center ms-4"><span>033-2999 1537</span></i>
            </div>
            <div class="social-links d-none d-md-flex align-items-center">
                <a href="https://twitter.com/MAKAUTWB" class="twitter" target="_blank"><i
                        class="fa-brands fa-twitter"></i></a>
                <a href="https://www.facebook.com/Makaut-183906109032533/" class="facebook" target="_blank"><i
                        class="fa-brands fa-facebook"></i></a>
                <a href="https://www.instagram.com/makaut_wb/channel/" class="instagram" target="_blank"><i
                        class="fa-brands fa-instagram"></i></a>
                <a href="https://de.linkedin.com/company/makaut-wb?trk=public_profile_experience-item_profile-section-card_image-click&amp;original_referer=https%3A%2F%2Fwww.google.com%2F"
                    class="linkedin" target="_blank"><i class="fa-brands fa-linkedin"></i></a>
            </div>
        </div>
    </section>
    
    <jsp:include page="front_header.jsp"/>


    <!-- Background section -->
    <section id="background" class="d-flex align-items-center">
        <div class="container aos-init aos-animate" data-aos="zoom-out" data-aos-delay="100">
            <h1>Welcome to <span>KIITM</span></h1>
            <h2>In Pursuit of Knowledge and Excellence...</h2>
            <div class="d-flex">
                <a href="#about" class="btn-get-started scrollto">Get Started</a>
                <a href="https://www.youtube.com/watch?v=sv-MzTN4ezU" class="glightbox btn-watch-video"><i
                        class="fa-regular fa-circle-play"></i><span>Watch Video</span></a>
            </div>
        </div>
    </section>
    <!-- End of Background section -->

    <!-- Main section (Section title) -->
    <section id="about" class="about section-bg">
        <div class="container aos-init aos-animate" data-aos="fade-up">

            <div class="section-title">
                <h2>About Us</h2>
                <h3>ABOUT <span>KIITM</span></h3>
                <p style="width:100%; text-align:justify;">The Government of West Bengal set up an expert committee on December 31, 1998, under the Chairmanship of Ashesh Prasad Mitra, Eminent Scientist to explore the necessity and scope for establishment of an Engineering / Technology University in the stste of West Bengal.</p>
            </div>

            <div class="row">
                <div class="col-lg-6 aos-init aos-animate" data-aos="fade-right" data-aos-delay="100">
                    <img src="images/about.jpg" class="img-fluid" alt="">
                </div>
                <div class="col-lg-6 pt-4 pt-lg-0 content d-flex flex-column justify-content-center aos-init aos-animate" data-aos="fade-up" data-aos-delay="100">
                    <h3>The University is steadfast in its twin objectives:</h3>
                    <p>
                        a) To serve as a Centre of Excellence in teaching and research in technology and management area.
                    </p>
                    <p >
                        b) To provide framework of industrialization based on knowledge economy.
                    </p>

                    <ul>
                        <li>
                            <i class="fa-solid fa-store"></i>
                            <div>
                                <h5>SPECIAL FEATURES</h5>
                                <p style="width:100%; text-align:justify;">Our teching staff includes, besides the core faculty, visiting faculty, adjunct faculty members and distinguished visitors from the industry and front line academic and research institutes of the country and abroad. The core faculty itself comprises 37 teaching personnel.</p>
                            </div>
                        </li>
                        
                        <li>
                            <i class="fa-regular fa-image"></i>
                            <div>
                                <h5>THE CAMPUS</h5>

                                <p style="width:100%; text-align:justify;">
                                    The University, which began operating from the West Bengal State Archives Building located at 43 Shakespeare Sarani, Kolkata 700017, India is currently located at NH-12, Haringhata, Nadia, Pin- 741249,and city campus at BF-142, Sector I, Salt Lake, Kolkata 700064, India with area of 45000 sq.ft. .
                                </p>
                                <p style="width:100%; text-align:justify;">
                                    The University would have a permanent main campus of approximately 40 acres of land at Haringhata, District nadia, provided by the Government of West Bengal. Hostels has been built to accommodate students both boys and girls.
                                </p>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </section>

    <!-- Featured services -->
    <div class="reg">
        <div class="regrap">
            <div class="col">
                <div class="icon"><i class="fa-solid fa-store"></i></div>
                <h4 class="title"><a href="#" target="_blank">Registration</a></h4>
                <p class="description">
                    For College Administration
                </p>
            </div>
            <div class="col">
                <div class="icon"><i class="fa-brands fa-dribbble"></i></div>
                <h4 class="title"><a href="#" target="_blank">Migration</a></h4>
                <p class="description">
                    Transhumance to another university
                </p>
            </div>
            <div class="col">
                <div class="icon"><i class="fa-regular fa-file"></i></div>
                <h4 class="title"><a href="#" target="_blank">Duplicate Registration</a></h4>
                <p class="description">
                    Duplicate Registration
                </p>
            </div>
            <div class="col">
                <div class="icon"><i class="fa-solid fa-archway"></i></div>
                <h4 class="title"><a href="#" target="_blank">Registration</a></h4>
                <p class="description">
                    For University Registration Department
                </p>
            </div>
        </div>
    </div>

    <!-- course count section -->
    <div class="course">
        <div class="courserap">
            <div class="colc">
                <div class="icons"><i class="fa-solid fa-house"></i></div>
                <p>Affiliated Colleges (AICTE)</p>
            </div>
            <div class="colc">
                <div class="icons"><i class="fa-solid fa-house"></i></div>
                <p>Affiliated Colleges (NoN-AICTE)</p>
            </div>
            <div class="colc">
                <div class="icons"><i class="fa-solid fa-book-open"></i></div>
                <p>Courses (AICTE)</p>
            </div>
            <div class="colc">
                <div class="icons"><i class="fa-solid fa-book-open"></i></div>
                <p>Courses (NoN-AICTE)</p>
            </div>
        </div>
    </div>

    <!-- external links -->
    <div class="link">
        <div class="linkrap">
            <div class="lin">
                <div class="d-flex flex-row flex-grow-1 flex-fill justify-content-center bg-danger py-2 text-white px-1 news">
                    <span class="d-flex align-items-center">&nbsp;EXTERNAL LINKS</span>
                </div>
                <marquee class="news-scroll" behavior="scroll" direction="left" onmouseover="this.stop();" onmouseout="this.start();">

                    <a href="http://www.aicte-india.org/" target="_blank" class="cssA">
                        <img src="images/aicte.png" class="cssmarquee" alt="AICTE">
                    </a>
                    <a href="http://www.naac.gov.in/" target="_blank" class="cssA">
                        <img src="images/naac.png" class="cssmarquee" alt="">
                    </a>
                    <a href="https://www.nbaind.org/" target="_blank" class="cssA">
                        <img src="images/NBA.png" class="cssmarquee" alt="">
                    </a>
                    <a href="https://www.nirfindia.org/Home" target="_blank" class="cssA">
                        <img src="images/NIRF.png" style="height:100px; width:100px;" class="img-fluid" alt="">
                    </a>
                    <a href="https://www.tifac.org.in/" target="_blank" class="cssA">
                        <img src="images/tifac.png" style="height:100px; width:100px;" class="img-fluid" alt="">
                    </a>
                    <a href="http://nptel.ac.in/" target="_blank" class="cssA">
                        <img src="images/NPTEL.jpg" class="img-fluid" alt="">
                    </a>
                    <a href="http://www.pci.nic.in/" target="_blank" class="cssA">
                        <img src="images/PCI.jpg" class="img-fluid" alt="">
                    </a>
                    <a href="http://www.aicte-india.org/" target="_blank" class="cssA">
                        <img src="images/rcb.jpeg" style="height:100px; width:100px;" class="img-fluid" alt="">
                    </a>
                    <a href="https://wbjeeb.in/wbjee" target="_blank" class="cssA">
                        <img src="images/WBJEE.jpg" class="img-fluid" alt="">
                    </a>
                </marquee>
            </div>
        </div>
    </div>
    <div id="empty"></div>
</body>
</html>
<jsp:include page="footer.jsp"/>