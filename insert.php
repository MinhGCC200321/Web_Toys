<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Add New Product</title>
        <!-- <link rel="stylesheet" href="./css/style.css"> -->

    <link rel="preconnect" href="https://fonts.gstatic.com">

    <link href="https://fonts.googleapis.com/css2?family=Nunito:wght@300;400;600;700;800&display=swap" rel="stylesheet">
    
    <!-- <link rel="shortcut icon" href="assets/images/favicon.svg" type="image/x-icon"> -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"></script>

</head>
<body>
   
<!-- div content -->
    <div id="main">     
        <div style="text-align: center;" className="page-heading pb-2 mt-4 mb-2 ">
            <h3>Add New Products</h3>
        </div>

        <?php
            include_once("connect.php");
            if (isset($_POST['Insert'])) {
                $id = pg_escape_string($_POST['Product_id']);
                $name = pg_escape_string($_POST['Product_Name']);
                $price = pg_escape_string($_POST['Price']);
                // $sdesc = pg_escape_string($conn,$_POST['SmallDesc']);
                // $detaildesc = pg_escape_string($conn,$_POST['DetailDesc']);
                // $date = pg_escape_string($conn,$_POST['ProDate']);
            
                $qty = pg_escape_string($_POST['Pro_qty']);
                $img = $_FILES['Pro_image'];
                $gal1 = $_FILES['gallery_1'];
                $gal2 = $_FILES['gallery_2'];
                $gal3 = $_FILES['gallery_3'];
                $gal4 = $_FILES['gallery_4'];
                // $catid = pg_escape_string($conn,$_POST['Cat_ID']);
                copy($img['tmp_name'], "./images/" . $img['name']);
                $filePic = $img['name'];
                $result = pg_query($conn, "INSERT INTO product (p_id,p_name,p_price,p_quantity,p_image) 
                VALUES ('{$id}','{$name}',{$price},{$qty},'{$filePic}')");
                

                if ($result) {
                    $img_path = './images/';
                    file_put_contents($img_path, file_get_contents($FILES['Pro_image']));
                    echo "<script>  
                    alert('You have successfully inserted');
                    window.location = 'manager.php';
                    </script>";
                } else
                    echo "<script>  
                    alert('You have not successfully inserted');
                    window.location = 'manager.php';
                    </script>";
            }
        ?>

        <div class="page-content mt-4">
            <div class="card">
                <div class="card-content">
                    <div style="padding: 0px 350px;" class="card-body">
                        <form class="form form-vertical" method="POST" action="" enctype="multipart/form-data" role="form  ">
                            <div class="form-body">
                                <div class="row">
                                    <div class="col-12">
                                        <div class="form-group">
                                            <label for="first-name-vertical">Product ID</label>
                                            <input type="text" id="pid" class="form-control"
                                                name="Product_id" placeholder="Product ID"
                                                value ="">
                                        </div>
                                    </div>
                                    <div class="col-12">
                                        <div class="form-group">
                                            <label for="first-name-vertical">Product Name</label>
                                            <input type="text" id="pname" class="form-control"
                                                name="Product_Name" placeholder="Product Name"
                                                value ="">
                                        </div>
                                    </div>
                                    <div class="col-12">
                                        <div class="form-group">
                                            <label for="contact-info-vertical">Price</label>
                                            <input type="number" id="Price" class="form-control"
                                                name="Price" placeholder="Price" value ="">
                                        </div>
                                    </div>
                                    <div class="col-12">
                                        <div class="form-group">
                                            <label for="contact-info-vertical">Quantity</label>
                                            <input type="number" id="Pro_qty" class="form-control"
                                                name="Pro_qty" placeholder="Quantity" value ="">
                                        </div>
                                    </div>
                                    <div class="col-12">
                                        <div class="form-group">
                                            <label for="image-vertical">Image</label>
                                            <input type="file" name="Pro_image" id="Pro_image" class="form-control" value="">
                                        </div>
                                    </div>
                                    <div class="col-12">
                                        <div class="form-group">
                                            <label for="first-name-vertical">Gallery 1</label>
                                            <input type="file" id="gallery_1" class="form-control"
                                                name="gallery_1" placeholder="Gallery 1"
                                                value ="">
                                        </div>
                                    </div>
                                    <div class="col-12">
                                        <div class="form-group">
                                            <label for="first-name-vertical">Gallery 2</label>
                                            <input type="file" id="gallery_2" class="form-control"
                                                name="gallery_2" placeholder="Gallery 2"
                                                value ="">
                                        </div>
                                    </div>
                                    <div class="col-12">
                                        <div class="form-group">
                                            <label for="first-name-vertical">Gallery 3</label>
                                            <input type="file" id="gallery_3" class="form-control"
                                                name="gallery_3" placeholder="Gallery 3"
                                                value ="">
                                        </div>
                                    </div>
                                    <div class="col-12">
                                        <div class="form-group">
                                            <label for="first-name-vertical">Gallery 4</label>
                                            <input type="file" id="gallery_4" class="form-control"
                                                name="gallery_4" placeholder="Gallery 4"
                                                value ="">
                                        </div>
                                    </div>
                                    <div class="col-12">
                                        <div class="form-group">
                                            <label for="password-vertical">Cat_ID</label>
                                            <input type="text" id="cat_id" class="form-control"
                                                name="Cat_ID" placeholder="Cat id" value ="">
                                        </div>
                                        <br>
                                    </div>                                 
                                    <div class="col-12 d-flex justify-content-end">
                                        <button type="submit" class="btn btn-warning me-1 mb-1 rounded-pill" name="Insert">Submit</button>
                                        <button type="reset"
                                            class="btn btn-light-secondary me-1 mb-1 rounded-pill">Reset</button><br>                                   
                                    </div> 
                                    <a href="index.php"><button type="button" class="btn btn-outline-primary">Back to index</button></a>
                                </div>
                            </div>
                        </form>
                    </div> <!--card body-->     
                </div> <!--card content-->
            </div> <!--card-->
        </div><!--page content-->
    </div> <!--main-->
</body>