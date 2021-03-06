<!DOCTYPE html>
<!--[if IE]><![endif]-->
<!--[if IE 8 ]><html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>" class="ie8"><![endif]-->
<!--[if IE 9 ]><html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>" class="ie9"><![endif]-->
<!--[if (gt IE 9)|!(IE)]><!-->
<html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>">
<!--<![endif]-->
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title><?php echo $title; ?></title>
<base href="<?php echo $base; ?>" />
<?php if ($description) { ?>
<meta name="description" content="<?php echo $description; ?>" />
<?php } ?>
<?php if ($keywords) { ?>
<meta name="keywords" content= "<?php echo $keywords; ?>" />
<?php } ?>
<script src="catalog/view/javascript/jquery/jquery-2.1.1.min.js" type="text/javascript"></script>
<link href="catalog/view/javascript/bootstrap/css/bootstrap.min.css" rel="stylesheet" media="screen" />
				
				<script src="catalog/view/javascript/mf/jquery-ui.min.js" type="text/javascript"></script>
			
<script src="catalog/view/javascript/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>



<link href="catalog/view/javascript/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
<link href="//fonts.googleapis.com/css?family=Open+Sans:400,400i,300,700" rel="stylesheet" type="text/css" />
<link href='https://fonts.googleapis.com/css?family=Roboto+Condensed' rel='stylesheet' type='text/css'>
<link href='https://fonts.googleapis.com/css?family=Roboto+Slab' rel='stylesheet' type='text/css'>
<link href="catalog/view/theme/default/stylesheet/stylesheet.css" rel="stylesheet">
<link href="media/newsletter/css/stylesheet.css" rel="stylesheet">
 <link href="catalog/view/theme/default/stylesheet/callback.css" rel="stylesheet" type="text/css" />
<script src="media/newsletter/js/main.js" type="text/javascript"></script>
<?php foreach ($styles as $style) { ?>
<link href="<?php echo $style['href']; ?>" type="text/css" rel="<?php echo $style['rel']; ?>" media="<?php echo $style['media']; ?>" />
<?php } ?>
<script src="catalog/view/javascript/common.js" type="text/javascript"></script>
<?php foreach ($links as $link) { ?>
<link href="<?php echo $link['href']; ?>" rel="<?php echo $link['rel']; ?>" />
<?php } ?>
<?php foreach ($scripts as $script) { ?>
<script src="<?php echo $script; ?>" type="text/javascript"></script>
<?php } ?>
<?php foreach ($analytics as $analytic) { ?>
<?php echo $analytic; ?>
<?php } ?>

</head>
<div id="wrap">
<body class="<?php echo $class; ?>">



<nav id="top">
  <div class="container">
    <!-- TOP LINKS --> 
    <div class="row">

        <div class="col-xs-12 col-md-6 wh headlink" >
           <a class="upper" href="/o-nas.html">О компании</a>
              
                  <span style="position:relative;">
                  <button class="btnUnset dropdown-toggle upper" type="button" id="dropdownMenu1" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true" >
                    Нужна помощь
                    <span class="caret"></span>
                  </button>
                  <ul class="dropdown-menu" aria-labelledby="dropdownMenu1">
                    <li><a href="<?php echo $contact; ?>">Свяжитесь с нами</a></li>
                    <li><a href="#">Доставка</a></li>
                    <li><a href="#">Гарантии</a></li>
                    <li><a href="#">Уход за изделиями</a></li>
                  </ul>
                </span>
          
           <a class="upper" href="/articles">Отзывы</a>
           <a class="contact-btn upper" href >Заказать звонок</a>
          
           
           

        </div>
        <div class="col-md-3 col-md-offset-3 hidden-xs hidden-sm " style="    max-height: 20px;">
                   
                 <div id="advanced-newsletter-box" class="pull-right" style="padding:0px;">
                        <div class="input-group box-newsletter-subscribe" id="mail-box">
                            <input type="text" name="email" style="    height: 22px;" placeholder="Ваш Email"/>
                            <span class="input-group-btn" >
                            <button class="btn btn-brown enter-subscribe" style="    padding: 6px 6px 0px 12px;" type="button">ПОДПИСАТЬСЯ</button>
                            </span>
                        </div>
                    </div>

        </div>
    </div>
        </div> 
    </nav>
     <div class="container" id="top2">
    <!-- image -->
    <div class="row mgt15">
        
        <div class="col-xs-12 col-md-4 col-sm-4 ">
                 <div id="logo">
                  <?php if ($logo) { ?>
                  <a href="<?php echo $home; ?>"><img  src="<?php echo $logo; ?>" title="<?php echo $name; ?>" alt="<?php echo $name; ?>" class="img-responsive" /></a>
                  <?php } else { ?>
                  <h1><a href="<?php echo $home; ?>"><?php echo $name; ?></a></h1>
                  <?php } ?>
                </div>
        </div>
        <div class="col-xs-12 col-md-3 col-sm-4 vertcenr">
        <span class="headtext" > <?php echo $telephone; ?> </span>
          
        </div>
        <div class="col-xs-12 col-md-3 col-sm-4 vertcenr">
        <span class="headtext" ><?php echo $address; ?></span>
        
        </div>
        
        <div class="col-md-2 col-sm-4 hidden-xs   hidden-sm">

           
         </div> 
        
        
    </div>

   
     
    
    
    
    
    
     <!--  <ul class="list-inline">
        <li><a href="<?php echo $contact; ?>"><i class="fa fa-phone"></i></a> <span class="hidden-xs hidden-sm hidden-md"><?php echo $telephone; ?></span></li>
        <li class="dropdown"><a href="<?php echo $account; ?>" title="<?php echo $text_account; ?>" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-user"></i> <span class="hidden-xs hidden-sm hidden-md"><?php echo $text_account; ?></span> <span class="caret"></span></a>
          <ul class="dropdown-menu dropdown-menu-right">
            <?php if ($logged) { ?>
            <li><a href="<?php echo $account; ?>"><?php echo $text_account; ?></a></li>
            <li><a href="<?php echo $order; ?>"><?php echo $text_order; ?></a></li>
            <li><a href="<?php echo $transaction; ?>"><?php echo $text_transaction; ?></a></li>
            <li><a href="<?php echo $download; ?>"><?php echo $text_download; ?></a></li>
            <li><a href="<?php echo $logout; ?>"><?php echo $text_logout; ?></a></li>
            <?php } else { ?>
            <li><a href="<?php echo $register; ?>"><?php echo $text_register; ?></a></li>
            <li><a href="<?php echo $login; ?>"><?php echo $text_login; ?></a></li>
            <?php } ?>
          </ul>
        </li>
        <li><a href="<?php echo $wishlist; ?>" id="wishlist-total" title="<?php echo $text_wishlist; ?>"><i class="fa fa-heart"></i> <span class="hidden-xs hidden-sm hidden-md"><?php echo $text_wishlist; ?></span></a></li>
       <li><a href="<?php echo $shopping_cart; ?>" title="<?php echo $text_shopping_cart; ?>"><i class="fa fa-shopping-cart"></i> <span class="hidden-xs hidden-sm hidden-md"><?php echo $text_shopping_cart; ?></span></a></li>
        <li><a href="<?php echo $checkout; ?>" title="<?php echo $text_checkout; ?>"><i class="fa fa-share"></i> <span class="hidden-xs hidden-sm hidden-md"><?php echo $text_checkout; ?></span></a></li>
      </ul> -->
   
    <?php if ($categories) { ?>
<!-- MENU -->
 
 <div class="row">

     <div class="col-md-12">
    <nav id="menu" class="navbar">
                    <div class="navbar-header"><span id="category" class="visible-xs"><?php echo $text_category; ?></span>
                      <button type="button" class="btn btn-navbar navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse"><i class="fa fa-bars"></i></button>
                    </div>
    <div class="collapse navbar-collapse navbar-ex1-collapse">
      <ul class="nav navbar-nav">
        <?php foreach ($categories as $category) { ?>

        <?php if ($category['children']) { ?>
        <li class="wh upper dropdown"><a href="<?php echo $category['href']; ?>" class="dropdown-toggle slab" data-toggle="dropdown"><?php echo $category['name']; ?> <i class="fa fa-angle-down"></i></a>
          <div class="dropdown-menu">
            <div class="dropdown-inner" >
              <?php foreach (array_chunk($category['children'], ceil(count($category['children']) / $category['column'])) as $children) { ?>
              
              
             
              <ul class="list-unstyled">
               <div class="row">
               <div class="col-sm-6">
                <?php foreach ($children as $child) { if(count($children)<3) {?>
                 <div class="col-sm-6">
                 
                  <li><a href="<?php echo $child['href']; ?>"><b><?php echo $child['name']; ?></b></a></li>
               
                      
                  <!-- дочки -->
                       <?php foreach ($category['daughters'] as $daughter) { if($daughter['category_id']==$child['category_id']){ ?> 
                       <div class="row">
              
                           <div class="col-sm-12">
                                <li><a href="<?php echo $daughter['href']; ?>"><?php echo $daughter['name']; ?></a></li>
                           </div>
                       </div>
                    <?php }} ?>
                    <!-- дочки -->
                 </div>
                <?php }
                else
                { ?>
               
                       <div class="row">
              
                           <div class="col-sm-12"><div class="col-sm-12">
                                <li><a href="<?php echo $child['href']; ?>"><b><?php echo $child['name']; ?></b></a></li>
                           </div></div>
                       </div>
                    
           <?php } } ?></div>
                <div class="col-sm-6">
                <a href="<?php echo $category['href']; ?>"> <img src="<?php echo $category['image']; ?>" style="width:100%;" alt=""></a>
                   </div>
                </div>
              </ul>
              
              
              
              
              
              
              
              
              <?php } ?>
            </div>
             </div>
        </li>
        <?php } else { ?>
        <li><a class="wh upper slab" href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a></li>
        <?php } ?>
        <?php } ?>
        <li><a class="wh upper slab" href="/personalizatsija">Персонализация</a></li>
              
      </ul>
    </div>
    
      <?php echo $search; ?>
  </nav>
         
     </div>

 </div>
 
  

<?php } ?>
   
   
  </div>

<header>
 
  
  
  
   
  
</header>

