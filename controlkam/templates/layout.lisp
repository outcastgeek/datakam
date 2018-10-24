
(PROGN
 (ECO-TEMPLATE:DEFTEMPLATE ECO-TEMPLATE:LAYOUT (ECO-TEMPLATE:HEADER ECO-TEMPLATE::CONTENT ECO-TEMPLATE:FOOTER) (:ESCAPE-HTML NIL)
                           (WRITE-STRING "
    <!DOCTYPE html>
    <html>

    <head>
        <!-- Required meta tags -->
        <meta charset=\"utf-8\">
        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1, shrink-to-fit=no\">

        <!-- Bootstrap CSS -->
        <link rel=\"stylesheet\" href=\"//stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css\" integrity=\"sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO\" crossorigin=\"anonymous\">
        "
                                         ECO-TEMPLATE::ECO-STREAM)
                           (WRITE-STRING (ECO-TEMPLATE:E ECO-TEMPLATE:HEADER) ECO-TEMPLATE::ECO-STREAM)
                           (WRITE-STRING "
    </head>

    <body>
      <nav class=\"navbar navbar-expand-lg navbar-light bg-light\">
        <a class=\"navbar-brand\" href=\"/\">ControlKam</a>
        <button class=\"navbar-toggler\" type=\"button\" data-toggle=\"collapse\" data-target=\"#navbarSupportedContent\" aria-controls=\"navbarSupportedContent\" aria-expanded=\"false\" aria-label=\"Toggle navigation\">
          <span class=\"navbar-toggler-icon\"></span>
        </button>

            <div class=\"collapse navbar-collapse\" id=\"navbarSupportedContent\">
                <ul class=\"navbar-nav mr-auto\">
                    <li class=\"nav-item active\">
                        <a class=\"nav-link\" href=\"/\">Home <span class=\"sr-only\">(current)</span></a>
                    </li>
                    <li class=\"nav-item\">
                        <a class=\"nav-link\" href=\"/hello\">Greet</a>
                    </li>
                    <!--
            <li class=\"nav-item dropdown\">
              <a class=\"nav-link dropdown-toggle\" href=\"#\" id=\"navbarDropdown\" role=\"button\" data-toggle=\"dropdown\" aria-haspopup=\"true\" aria-expanded=\"false\">
                Dropdown
              </a>
              <div class=\"dropdown-menu\" aria-labelledby=\"navbarDropdown\">
                <a class=\"dropdown-item\" href=\"#\">Action</a>
                <a class=\"dropdown-item\" href=\"#\">Another action</a>
                <div class=\"dropdown-divider\"></div>
                <a class=\"dropdown-item\" href=\"#\">Something else here</a>
              </div>
            </li>
            <li class=\"nav-item\">
              <a class=\"nav-link disabled\" href=\"#\">Disabled</a>
            </li>
            -->
                </ul>
                <form class=\"form-inline my-2 my-lg-0\">
                    <input class=\"form-control mr-sm-2\" type=\"search\" placeholder=\"Search\" aria-label=\"Search\">
                    <button class=\"btn btn-outline-success my-2 my-sm-0\" type=\"submit\">Search</button>
                </form>
                <ul class=\"navbar-nav mr-auto\">
                    <li class=\"nav-item\">
                        <a class=\"nav-link\" href=\"/user/login\">Login</a>
                    </li>
                </ul>
            </div>
        </nav>
        <main role=\"main\">
            "
                                         ECO-TEMPLATE::ECO-STREAM)
                           (WRITE-STRING (ECO-TEMPLATE:E ECO-TEMPLATE::CONTENT) ECO-TEMPLATE::ECO-STREAM)
                           (WRITE-STRING "
            "
                                         ECO-TEMPLATE::ECO-STREAM)
                           (WRITE-STRING (ECO-TEMPLATE:E ECO-TEMPLATE:FOOTER) ECO-TEMPLATE::ECO-STREAM)
                           (WRITE-STRING "
        </main><!-- /.container -->
        <footer class=\"container\">
          <p class=\"mt-5 mb-3 text-muted\">&copy; ControlKam 2017-2018</p>
        </footer>
    </body>

    </html>
    "
                                         ECO-TEMPLATE::ECO-STREAM))) 