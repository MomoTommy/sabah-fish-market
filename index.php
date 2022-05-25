<?php

session_start();

include("includes/db.php");
include("includes/header.php");
include("functions/functions.php");
include("includes/main.php");

?>


  <!-- Cover -->
  <main>
    <div class="hero">
          <div class="SMe">
            <div class="col-lg-7 pt-5 text-center offset-md-2">
              <h1 class="pt-5 pl-5 ">Shopping Made Easy</h1>
              <a href="shop.php" class="btn1 mt-4" style="font-size:24px ">Shop Now</a>
            </div>
          </div>  
    </div>
      
    </div>
    <!-- Main -->
    <div class="wrapper">
            <h1>Featured Products<h1>
            
      </div>



    <div id="content" class="container"><!-- container Starts -->

    <div class="row"><!-- row Starts -->

    <?php

    getPro();

    ?>

    </div><!-- row Ends -->

        <div id="content" ><!-- content Starts -->


            <div class="col-md-12" ><!-- col-md-12 Starts -->

              <div class="box" ><!-- box Starts -->



              <h1 style="text-align: center"> OUR STORY </h1>

              <p class="lead"> Online Shopping System is a web application, which retails consumer goods for fish and fishery products. This system allows viewing various types of businesses that sells fishery products which also allows customers to request specific types of fishery products with easy payment portal with online payment. </p>

              

              </div><!-- box Ends -->

            </div><!-- col-md-12 Ends -->

        </div><!-- content Ends -->

    </div><!-- container Ends -->
    
</body>

</html>
