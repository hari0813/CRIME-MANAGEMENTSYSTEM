<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<meta name="author" content="Muhamad Nauval Azhar">
	<meta name="viewport" content="width=device-width,initial-scale=1">
	<meta name="description" content="This is a login page template based on Bootstrap 5">
	<title>Bootstrap 5 Login Page</title>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl" crossorigin="anonymous">
</head>

<body>
     <form name="w_reg.html" method="post" action="w_reg_data.html">
	    <section class="h-100">
            <div class="container h-100">
            <div class="row justify-content-sm-center h-100">
            <div class="col-xxl-4 col-xl-5 col-lg-5 col-md-7 col-sm-9">
            <div class="text-center my-5">
            <img src="img/po.jpg" alt="logo" width="100">
        </div>
        <div class="card shadow-lg">
        <div class="card-body p-5">
        <h1 class="fs-4 card-title fw-bold mb-4">Register</h1>
            <form method="POST" class="needs-validation" novalidate="" autocomplete="off">
                <div class="mb-3">
                    <label class="mb-2 text-muted" for="name">Witness Name</label>
                <input id="name" type="text" class="form-control" name="witness_name" value="" required>
                <div class="invalid-feedback">
            Email is invalid
                </div>
            </div> 
                <div class="mb-3">
                <label class="mb-2 text-muted" for="">Witness ID</label>
                    <input id="name" type="text" class="form-control" name="witness_id" value="" required autofocus>
            <div class="invalid-feedback">
                Name is required	
            </div>
        </div>
        <div class="mb-3">
            <label class="mb-2 text-muted" for="">Relationship to Victim </label>
            <input id="name" type="text" class="form-control" name="relationship_to_victim" value="" required autofocus>
                <div class="invalid-feedback">
                    Name is required	
                </div>
            </div>
        <div class="mb-3">
            <label class="mb-2 text-muted" for="">Witness Statement</label>
            <input id="name" type="text" class="form-control" name="witness_statement " required>
            <div class="invalid-feedback">
                Password is required
            </div>
        </div>
        <div class="mb-3">
            <label class="mb-2 text-muted" for="name">Contact Information</label>
            <input id="name" type="text" class="form-control" name="contact" required>
            <div class="invalid-feedback">
                Password is required
            </div>
        </div>
        <div class="mb-3">
            <label class="mb-2 text-muted" for="name">Witness Availability </label>
            <input id="name" type="text" class="form-control" name="witness_availability" required>
            <div class="invalid-feedback">
                Password is required
            </div>
        </div>
         <div class="mb-3">
                <label class="mb-2 text-muted" for="">Date of Witness Statement </label>
                <input id="date" type="date" class="form-control" name="date_of_witness_statement" value="" required autofocus>
                    <div class="invalid-feedback">
                        Name is required	
                    </div>
                </div>
                
            <div class="mb-3">
                <label class="mb-2 text-muted" for="">Victim Statement</label>
                <input id="name" type="text" class="form-control" name="victim_statement" value="" required autofocus>
                    <div class="invalid-feedback">
                        Name is required	
                    </div>
                </div>
        <p class="form-text text-muted mb-3">
            By registering you agree with our terms and condition.
        </p>

                <div class="align-items-center d-flex">
                <button type="submit" class="btn btn-primary ms-auto">
                Register	
                </button>
            </div>
            </form>
        </div>
        <div class="card-footer py-3 border-0">
            <div class="text-center">
                Already have an account? <a href="index.html" class="text-dark">Login</a>
            </div>
        </div>
    </div>
           
            </div>
        </div>
    </div>
	</section>
     </form>
	<script src="js/login.js"></script>
</body>
</html>
