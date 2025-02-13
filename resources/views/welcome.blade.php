<!DOCTYPE html>
<html lang="en">

<head>
  <link rel="icon" href="{{asset('Presento/assets/img/logo2.png')}}">
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">

  <!-- Favicons -->
  {{-- <link href="{{asset('Presento/assets/img/favicon.png')}}" rel="icon" /> --}}
  <link href="{{asset('Presento/assets/img/apple-touch-icon.png')}}" rel="apple-touch-icon" />

  <!-- Fonts -->
  <link href="https://fonts.googleapis.com" rel="preconnect" />
  <link href="https://fonts.gstatic.com" rel="preconnect" crossorigin />
  <link
    href="https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0,100;0,300;0,400;0,500;0,700;0,900;1,100;1,300;1,400;1,500;1,700;1,900&family=Poppins:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&family=Raleway:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap"
    rel="stylesheet" />


  <!-- Vendor CSS Files -->
  <link href="{{asset('Presento/assets/vendor/bootstrap/css/bootstrap.min.css')}}" rel="stylesheet" />
  <link href="{{asset('Presento/assets/vendor/bootstrap-icons/bootstrap-icons.css')}}" rel="stylesheet" />
  <link href="{{asset('Presento/assets/vendor/aos/aos.css" rel="stylesheet')}}" />
  <link href="{{asset('Presento/assets/vendor/glightbox/css/glightbox.min.css')}}" rel="stylesheet" />
  <link href="{{asset('Presento/assets/vendor/swiper/swiper-bundle.min.css')}}" rel="stylesheet" />

  <!-- Main CSS File -->
  <link href="{{asset('Presento/assets/css/main.css')}}" rel="stylesheet" />
  {{-- logo --}}

</head>

<body class="antialiased">

  <body class="index-page">
    <header id="header" class="header d-flex align-items-center sticky-top">
      <div class="container-fluid container-xl position-relative d-flex align-items-center">
        <a href="index.html" class="logo d-flex align-items-center me-auto">
          <!-- Uncomment the line below if you also wish to use an image logo -->
          {{-- <img src="{{asset('Presento/assets/img/logo2.png')}}" alt=""> --}}
          <h1 class="sitename">Clubify</h1>
        </a>

        <!--nav section-->
        <x-homeNav>
        </x-homeNav>
        <!-- /nav section-->
    </header>

    <main class="main">
      <!-- Hero Section -->
      <x-hero>
      </x-hero>
      <!-- /Hero Section -->


      <!-- About Section -->
      <x-about>
      </x-about>
      <!-- /About Section -->

      <!-- event Section -->
      <x-events>
      </x-events>
      <!-- /event Section -->

      <!-- Testimonials Section -->
      <section id="testimonials" class="testimonials section">
        <!-- Section Title -->
        <div class="container section-title" data-aos="fade-up">
          <h2>Testimonials</h2>
          <p>
            Necessitatibus eius consequatur ex aliquid fuga eum
            quidem sint consectetur velit
          </p>
        </div>
        <!-- End Section Title -->

        <div class="container" data-aos="fade-up" data-aos-delay="100">
          <div class="swiper init-swiper">
            <script type="application/json" class="swiper-config">
            {
              "loop": true,
              "speed": 600,
              "autoplay": {
                "delay": 5000
              },
              "slidesPerView": "auto",
              "pagination": {
                "el": ".swiper-pagination",
                "type": "bullets",
                "clickable": true
              },
              "breakpoints": {
                "320": {
                  "slidesPerView": 1,
                  "spaceBetween": 40
                },
                "1200": {
                  "slidesPerView": 3,
                  "spaceBetween": 10
                }
              }
            }
            </script>
            <div class="swiper-wrapper">
              <div class="swiper-slide">
                <div class="testimonial-item">
                  <img src="{{asset('Presento/assets/img/testimonials/testimonials-1.jpg')}}" class="testimonial-img"
                    alt="" />
                  <h3>Saul Goodman</h3>
                  <h4>Ceo &amp; Founder</h4>
                  <div class="stars">
                    <i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i
                      class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i>
                  </div>
                  <p>
                    <i class="bi bi-quote quote-icon-left"></i>
                    <span>Proin iaculis purus consequat sem
                      cure digni ssim donec porttitora
                      entum suscipit rhoncus. Accusantium
                      quam, ultricies eget id, aliquam
                      eget nibh et. Maecen aliquam, risus
                      at semper.</span>
                    <i class="bi bi-quote quote-icon-right"></i>
                  </p>
                </div>
              </div>
              <!-- End testimonial item -->

              <div class="swiper-slide">
                <div class="testimonial-item">
                  <img src="{{asset('Presento/assets/img/testimonials/testimonials-2.jpg')}}" class="testimonial-img"
                    alt="" />
                  <h3>Sara Wilsson</h3>
                  <h4>Designer</h4>
                  <div class="stars">
                    <i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i
                      class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i>
                  </div>
                  <p>
                    <i class="bi bi-quote quote-icon-left"></i>
                    <span>Export tempor illum tamen malis
                      malis eram quae irure esse labore
                      quem cillum quid cillum eram malis
                      quorum velit fore eram velit sunt
                      aliqua noster fugiat irure amet
                      legam anim culpa.</span>
                    <i class="bi bi-quote quote-icon-right"></i>
                  </p>
                </div>
              </div>
              <!-- End testimonial item -->

              <div class="swiper-slide">
                <div class="testimonial-item">
                  <img src="{{asset('Presento/assets/img/testimonials/testimonials-3.jpg')}}" class="testimonial-img"
                    alt="" />
                  <h3>Jena Karlis</h3>
                  <h4>Store Owner</h4>
                  <div class="stars">
                    <i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i
                      class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i>
                  </div>
                  <p>
                    <i class="bi bi-quote quote-icon-left"></i>
                    <span>Enim nisi quem export duis labore
                      cillum quae magna enim sint quorum
                      nulla quem veniam duis minim tempor
                      labore quem eram duis noster aute
                      amet eram fore quis sint
                      minim.</span>
                    <i class="bi bi-quote quote-icon-right"></i>
                  </p>
                </div>
              </div>
              <!-- End testimonial item -->

              <div class="swiper-slide">
                <div class="testimonial-item">
                  <img src="{{asset('Presento/assets/img/testimonials/testimonials-4.jpg')}}" class="testimonial-img"
                    alt="" />
                  <h3>Matt Brandon</h3>
                  <h4>Freelancer</h4>
                  <div class="stars">
                    <i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i
                      class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i>
                  </div>
                  <p>
                    <i class="bi bi-quote quote-icon-left"></i>
                    <span>Fugiat enim eram quae cillum dolore
                      dolor amet nulla culpa multos export
                      minim fugiat minim velit minim dolor
                      enim duis veniam ipsum anim magna
                      sunt elit fore quem dolore labore
                      illum veniam.</span>
                    <i class="bi bi-quote quote-icon-right"></i>
                  </p>
                </div>
              </div>
              <!-- End testimonial item -->

              <div class="swiper-slide">
                <div class="testimonial-item">
                  <img src="{{asset('Presento/assets/img/testimonials/testimonials-5.jpg')}}" class="testimonial-img"
                    alt="" />
                  <h3>John Larson</h3>
                  <h4>Entrepreneur</h4>
                  <div class="stars">
                    <i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i
                      class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i>
                  </div>
                  <p>
                    <i class="bi bi-quote quote-icon-left"></i>
                    <span>Quis quorum aliqua sint quem legam
                      fore sunt eram irure aliqua veniam
                      tempor noster veniam enim culpa
                      labore duis sunt culpa nulla illum
                      cillum fugiat legam esse veniam
                      culpa fore nisi cillum quid.</span>
                    <i class="bi bi-quote quote-icon-right"></i>
                  </p>
                </div>
              </div>
              <!-- End testimonial item -->
            </div>
            <div class="swiper-pagination"></div>
          </div>
        </div>
      </section>
      <!-- /Testimonials Section -->



      <!-- Faq Section -->
      <section id="faq" class="faq section">
        <!-- Section Title -->
        <div class="container section-title" data-aos="fade-up">
          <h2>Frequently Asked Questions</h2>
          <p>
            Necessitatibus eius consequatur ex aliquid fuga eum
            quidem sint consectetur velit
          </p>
        </div>
        <!-- End Section Title -->

        <div class="container">
          <div class="row justify-content-center">
            <div class="col-lg-10" data-aos="fade-up" data-aos-delay="100">
              <div class="faq-container">
                <div class="faq-item faq-active">
                  <h3>
                    Non consectetur a erat nam at lectus
                    urna duis?
                  </h3>
                  <div class="faq-content">
                    <p>
                      Feugiat pretium nibh ipsum
                      consequat. Tempus iaculis urna id
                      volutpat lacus laoreet non curabitur
                      gravida. Venenatis lectus magna
                      fringilla urna porttitor rhoncus
                      dolor purus non.
                    </p>
                  </div>
                  <i class="faq-toggle bi bi-chevron-right"></i>
                </div>
                <!-- End Faq item-->

                <div class="faq-item">
                  <h3>
                    Feugiat scelerisque varius morbi enim
                    nunc faucibus?
                  </h3>
                  <div class="faq-content">
                    <p>
                      Dolor sit amet consectetur
                      adipiscing elit pellentesque
                      habitant morbi. Id interdum velit
                      laoreet id donec ultrices. Fringilla
                      phasellus faucibus scelerisque
                      eleifend donec pretium. Est
                      pellentesque elit ullamcorper
                      dignissim. Mauris ultrices eros in
                      cursus turpis massa tincidunt dui.
                    </p>
                  </div>
                  <i class="faq-toggle bi bi-chevron-right"></i>
                </div>
                <!-- End Faq item-->

                <div class="faq-item">
                  <h3>
                    Dolor sit amet consectetur adipiscing
                    elit pellentesque?
                  </h3>
                  <div class="faq-content">
                    <p>
                      Eleifend mi in nulla posuere
                      sollicitudin aliquam ultrices
                      sagittis orci. Faucibus pulvinar
                      elementum integer enim. Sem nulla
                      pharetra diam sit amet nisl
                      suscipit. Rutrum tellus pellentesque
                      eu tincidunt. Lectus urna duis
                      convallis convallis tellus. Urna
                      molestie at elementum eu facilisis
                      sed odio morbi quis
                    </p>
                  </div>
                  <i class="faq-toggle bi bi-chevron-right"></i>
                </div>
                <!-- End Faq item-->

                <div class="faq-item">
                  <h3>
                    Ac odio tempor orci dapibus. Aliquam
                    eleifend mi in nulla?
                  </h3>
                  <div class="faq-content">
                    <p>
                      Dolor sit amet consectetur
                      adipiscing elit pellentesque
                      habitant morbi. Id interdum velit
                      laoreet id donec ultrices. Fringilla
                      phasellus faucibus scelerisque
                      eleifend donec pretium. Est
                      pellentesque elit ullamcorper
                      dignissim. Mauris ultrices eros in
                      cursus turpis massa tincidunt dui.
                    </p>
                  </div>
                  <i class="faq-toggle bi bi-chevron-right"></i>
                </div>
                <!-- End Faq item-->

                <div class="faq-item">
                  <h3>
                    Tempus quam pellentesque nec nam aliquam
                    sem et tortor?
                  </h3>
                  <div class="faq-content">
                    <p>
                      Molestie a iaculis at erat
                      pellentesque adipiscing commodo.
                      Dignissim suspendisse in est ante
                      in. Nunc vel risus commodo viverra
                      maecenas accumsan. Sit amet nisl
                      suscipit adipiscing bibendum est.
                      Purus gravida quis blandit turpis
                      cursus in
                    </p>
                  </div>
                  <i class="faq-toggle bi bi-chevron-right"></i>
                </div>
                <!-- End Faq item-->

                <div class="faq-item">
                  <h3>
                    Perspiciatis quod quo quos nulla quo
                    illum ullam?
                  </h3>
                  <div class="faq-content">
                    <p>
                      Enim ea facilis quaerat voluptas
                      quidem et dolorem. Quis et
                      consequatur non sed in suscipit
                      sequi. Distinctio ipsam dolore et.
                    </p>
                  </div>
                  <i class="faq-toggle bi bi-chevron-right"></i>
                </div>
                <!-- End Faq item-->
              </div>
            </div>
            <!-- End Faq Column-->
          </div>
        </div>
      </section>
      <!-- /Faq Section -->

      <!-- Team Section -->
      <x-team>
      </x-team>
      <!-- /Team Section -->

      <!-- Contact Section -->
      <x-contact>
      </x-contact>
      <!-- Contact Section -->
    </main>

    <x-footer>
    </x-footer>
    <!-- Scroll Top -->
    <a href="#" id="sceoll-top" class="scroll-top d-flex align-items-center justify-content-center"><i
        class="bi bi-arrow-up-short"></i></a>

    <!-- Vendor JS Files -->
    <script src="{{asset('Presento/assets/vendor/bootstrap/js/bootstrap.bundle.min.js')}}"></script>
    <script src="{{asset('Presento/assets/vendor/php-email-form/validate.js')}}"></script>
    <script src="{{asset('Presento/assets/vendor/aos/aos.js')}}"></script>
    <script src="{{asset('Presento/assets/vendor/glightbox/js/glightbox.min.js')}}"></script>
    <script src="{{asset('Presento/assets/vendor/swiper/swiper-bundle.min.js')}}"></script>
    <script src="{{asset('Presento/assets/vendor/purecounter/purecounter_vanilla.js')}}"></script>
    <script src="{{asset('Presento/assets/vendor/imagesloaded/imagesloaded.pkgd.min.js')}}"></script>
    <script src="{{asset('Presento/assets/vendor/isotope-layout/isotope.pkgd.min.js')}}"></script>

    <!-- Main JS File -->
    <script src="{{asset('Presento/assets/js/main.js')}}"></script>
  </body>

</html>