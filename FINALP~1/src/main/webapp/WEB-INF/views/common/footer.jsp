<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <title>Insert title here</title>
</head>

<body>
    <section id="company" class="company bg-light">
        <div class="container">
            <div class="row">
                <div class="main_company roomy-100 text-center">
                    <h3 class="text-uppercase">연애인</h3>
                    <p>서울특별시 강남구 테헤란로14길 6 KHSoft</p>
                    <p>(+84). 123. 456. 789 - chemistry@KHSoft.com</p>
                </div>
            </div>
        </div>
    </section>


    <!-- scroll up-->
    <div class="scrollup" style="bottom:90px">
        <a href="#"><i class="fa fa-chevron-up"></i></a>
    </div><!-- End off scroll up -->


    <footer id="footer" class="footer bg-mega">
        <div class="container">
            <div class="row">
                <div class="main_footer p-top-40 p-bottom-30">
                    <div class="col-md-6 text-left sm-text-center">
                        <p class="wow fadeInRight" data-wow-duration="1s">
                            come with
                            <i class="fa fa-heart"></i>
                            me
                            <a target="_blank" href="http://bootstrapthemes.co">연애인</a>
                            2020. All Rights Reserved
                        </p>
                    </div>
                </div>
            </div>
        </div>
    </footer>
    <script>
    <!-- Channel Plugin Scripts -->
      (function() {
        var w = window;
        if (w.ChannelIO) {
          return (window.console.error || window.console.log || function(){})('ChannelIO script included twice.');
        }
        var d = window.document;
        var ch = function() {
          ch.c(arguments);
        };
        ch.q = [];
        ch.c = function(args) {
          ch.q.push(args);
        };
        w.ChannelIO = ch;
        function l() {
          if (w.ChannelIOInitialized) {
            return;
          }
          w.ChannelIOInitialized = true;
          var s = document.createElement('script');
          s.type = 'text/javascript';
          s.async = true;
          s.src = 'https://cdn.channel.io/plugin/ch-plugin-web.js';
          s.charset = 'UTF-8';
          var x = document.getElementsByTagName('script')[0];
          x.parentNode.insertBefore(s, x);
        }
        if (document.readyState === 'complete') {
          l();
        } else if (window.attachEvent) {
          window.attachEvent('onload', l);
        } else {
          window.addEventListener('DOMContentLoaded', l, false);
          window.addEventListener('load', l, false);
        }
      })();
      ChannelIO('boot', {
        "pluginKey": "e6c01d1d-96bd-4f38-8741-a3d992565991"
      });
    <!-- End Channel Plugin -->

    </script>
</body>

</html>
