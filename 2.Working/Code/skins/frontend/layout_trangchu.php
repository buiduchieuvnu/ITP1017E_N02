<!DOCTYPE html>
<html>
    <head>
        <title> Tran Anh Tuan </title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">

        <link  rel="stylesheet" href="skins/assets/css/reset.css"/>
        <link href="https://fonts.googleapis.com/css?family=Roboto:400,500,700,900" rel="stylesheet">
        <link  rel="stylesheet" href="skins/assets/vendor/bootstrap/css/bootstrap.min.css"/>
        <link  rel="stylesheet" href="skins/assets/vendor/font-awesome/css/font-awesome.min.css"/>
        <link  rel="stylesheet" href="skins/assets/vendor/slick/slick-theme.css"/>
        <link  rel="stylesheet" href="skins/assets/vendor/slick/slick.css"/>
        <link  rel="stylesheet" href="skins/assets/css/main_nav.css"/>
        <link  rel="stylesheet" href="skins/assets/css/search.css"/>
        <link  rel="stylesheet" href="skins/assets/css/banner.css"/>
        <link  rel="stylesheet" href="skins/assets/css/style.css"/>
    </head>
    <body>
        <?php include_once 'modules/header/webshop_header.php';?>

        <section>
            <div class="container">
                <div class="row">
                    <?php include_once 'modules/slider/webshop_banner.php'; ?>
                </div>
                <div class="row">
                    <?php include_once 'modules/quangcao/webshop_advertisement.php'; ?>
                </div>
                <div class="row">
                    <?php echo $content ?>
                    
                    <?php include_once 'modules/top_product/webshop_top_product.php'; ?>
                </div>
                <div class="row">
                    <?php include_once 'modules/hot_categories/webshop_hot_categories.php' ?>
                </div>
            </div>
        </section>

        <?php include_once 'modules/footer/webshop_footer.php' ?>


        <script type="text/javascript" src="skins/assets/vendor/jquery/jquery.min.js"></script>
        <script type="text/javascript" src="skins/assets/vendor/bootstrap/js/popper.min.js"></script>
        <script type="text/javascript" src="skins/assets/vendor/bootstrap/js/bootstrap.min.js"></script>
        <script type="text/javascript" src="skins/assets/vendor/slick/jquery-migrate-1.2.1.min.js"></script>
        <script type="text/javascript" src="skins/assets/vendor/slick/slick.min.js"></script>
        <script type="text/javascript" src="skins/assets/js/main_nav.js"></script>
        <script type="text/javascript" src="skins/assets/js/search.js"></script>
        <script type="text/javascript" src="skins/assets/js/banner.js"></script>
        <script type="text/javascript" src="skins/assets/js/collections.js"></script>

    </body>
</html>
