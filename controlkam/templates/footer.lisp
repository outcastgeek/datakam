
(PROGN
 (ECO-TEMPLATE:DEFTEMPLATE ECO-TEMPLATE:FOOTER (ECO-TEMPLATE::SCRIPT) NIL
                           (WRITE-STRING "
<!-- Optional JavaScript -->
<script>
  console.log(\"Hello Eco :-)\")
</script>
<!-- jQuery first, then Popper.js, then Bootstrap JS -->
<script src=\"//code.jquery.com/jquery-3.3.1.slim.min.js\" integrity=\"sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo\" crossorigin=\"anonymous\"></script>
<script src=\"//cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js\" integrity=\"sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49\" crossorigin=\"anonymous\"></script>
<script src=\"//stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js\" integrity=\"sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy\" crossorigin=\"anonymous\"></script>
"
                                         ECO-TEMPLATE::ECO-STREAM)
                           (WRITE-STRING (ECO-TEMPLATE:E ECO-TEMPLATE::SCRIPT) ECO-TEMPLATE::ECO-STREAM)
                           (WRITE-STRING "
"
                                         ECO-TEMPLATE::ECO-STREAM))) 