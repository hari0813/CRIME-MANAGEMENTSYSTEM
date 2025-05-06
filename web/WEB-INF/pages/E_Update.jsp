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
    <form name="update.html" method="post" action="e_update_data.html">
	    <section class="h-100">
            <div class="container h-100">
            <div class="row justify-content-sm-center h-100">
            <div class="col-xxl-4 col-xl-5 col-lg-5 col-md-7 col-sm-9">
            <div class="text-center my-5">
            <img src="img/po.jpg" alt="logo" width="100">
        </div>
        <div class="card shadow-lg">
        <div class="card-body p-5">
        <h1 class="fs-4 card-title fw-bold mb-4">Update Form</h1>
            <form method="POST" class="needs-validation" novalidate="" autocomplete="off">
                <div class="mb-3">
                    <label class="mb-2 text-muted" for="name">Evidence ID </label>
                <input id="name" type="text" class="form-control" name="evidence_id" value="" required>
                <div class="invalid-feedback">
            
                </div>
            </div> 
            <div class="mb-3">
                <label class="mb-2 text-muted" for="name">Current Status </label>
                <input id="name" type="text" class="form-control" name="current_status" value="" required autofocus>
                    <div class="invalid-feedback">
                        	
                    </div>
                </div>
                <div class="mb-3">
                <label class="mb-2 text-muted" for="victim">Updated By </label>
                    <input id="name" type="text" class="form-control" name="updated_by" value="" required autofocus>
            <div class="invalid-feedback">
                	
            </div>
        </div>
        <div class="mb-3">
            <label class="mb-2 text-muted" for="name">Location</label>
            <input id="name" type="text" class="form-control" name="location" required>
            <div class="invalid-feedback">
               
            </div>
        </div>
        
            <div class="mb-3">
                <label class="mb-2 text-muted" for="name">Date of Update </label>
            <input id="date" type="date" class="form-control" name="date_of_update" value="" required>
            <div class="invalid-feedback">
       
            </div>
        </div> 
        <div class="mb-3">
            <label class="mb-2 text-muted" for="name">Reason for Status Change </label>
        <input id="name" type="text" class="form-control" name="reason_for_status_change" value="" required>
        <div class="invalid-feedback">
 
        </div>
    </div> 
   <div class="align-items-center d-flex">
                <button type="submit" class="btn btn-primary ms-auto">
                Save Update	
                </button>
                
            </div> <br>
            <div class="align-items-center d-flex">
                <button type="submit" class="btn btn-primary ms-auto">
                    Cancel	
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
