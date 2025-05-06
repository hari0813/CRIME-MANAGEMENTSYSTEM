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
                                <form name="Station_Reg" method="post" action="Station_Reg_data.html" class="needs-validation" novalidate autocomplete="off">
                                    <div class="mb-3">
                                        <label class="mb-2 text-muted" for="station_id">Police Station ID </label>
                                        <input id="station_id" type="text" class="form-control" name="station_id" required autofocus>
                                        <div class="invalid-feedback">ID is required</div>
                                    </div>
                                    <div class="mb-3">
                                        <label class="mb-2 text-muted" for="station_name">Police Station Name </label>
                                        <input id="station_name" type="text" class="form-control" name="station_name" required>
                                        <div class="invalid-feedback">Name is required</div>
                                    </div>
                                    <div class="mb-3">
                                        <label class="mb-2 text-muted" for="email">Email ID </label>
                                        <input id="email" type="email" class="form-control" name="email" required>
                                        <div class="invalid-feedback">Email is invalid</div>
                                    </div>
                                    <div class="mb-3">
                                        <label class="mb-2 text-muted" for="number">Contact Number </label>
                                        <input id="number" type="text" class="form-control" name="number" required>
                                        <div class="invalid-feedback">Contact Number is required</div>
                                    </div>
                                    <div class="mb-3">
                                        <label class="mb-2 text-muted" for="address">Address</label>
                                        <input id="address" type="text" class="form-control" name="address" required>
                                        <div class="invalid-feedback">Address is required</div>
                                    </div>
                                    <div class="mb-3">
                                        <label class="mb-2 text-muted" for="date">Date of Establishment </label>
                                        <input id="date" type="date" class="form-control" name="date" required>
                                        <div class="invalid-feedback">Date is required</div>
                                    </div>
                                    <p class="form-text text-muted mb-3">By registering you agree with our terms and conditions.</p>
                                    <div class="align-items-center d-flex">
                                        <button type="submit" class="btn btn-primary ms-auto">Register</button>
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
        <script src="js/login.js"></script>
    </body>
</html>
