<!DOCTYPE html>
<html>
    <head>
        <title>Template trananh.vn</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        
        <link rel="stylesheet" href="css/reset.css"/>
        <link href="https://fonts.googleapis.com/css?family=Roboto:400,500,700,900" rel="stylesheet">
        <link rel="stylesheet" href="vendor/bootstrap/css/bootstrap.min.css"/>
        <link rel="stylesheet" href="vendor/font-awesome/css/font-awesome.min.css"/>
        <link rel="stylesheet" href="vendor/slick/slick-theme.css"/>
        <link rel="stylesheet" href="vendor/slick/slick.css"/>
        <link rel="stylesheet" href="css/main_nav.css"/>
        <link rel="stylesheet" href="css/search.css"/>
        <link rel="stylesheet" href="css/banner.css"/>
        <link rel="stylesheet" href="css/style.css"/>
        
    </head>
    <body>  
        <!-- dau_trang -->
        <?php include_once 'modules/header/ta_header.php'; ?>
        <!-- ./ dau_trang -->
        <div id="than_trang">
                <?=$content?>   
            <!-- app -->
            
            <!-- ./ app -->
        </div><!-- ./ than_trang -->
        <!-- footer -->
        <?php include_once 'modules/footer/ta_footer.php'; ?>
        <!-- ./ footer -->
        <?php include_once 'modules/gio_hang/cart_icon.php'; ?>
    </body>
</html>












