<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="description" content="This is a login page template based on Bootstrap 5">
        <title>Bootstrap 5 Login Page</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css" rel="stylesheet" crossorigin="anonymous">
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
                                <form name="Investigation_Reg_Form" method="post" action="Investigation_Reg_Form_data.html" class="needs-validation" novalidate autocomplete="off">
                                    <div class="mb-3">
                                        <label class="mb-2 text-muted" for="investigation_id">Investigation ID</label>
                                        <input id="investigation_id" type="text" class="form-control" name="investigation_id" required autofocus>
                                        <div class="invalid-feedback">Investigation ID is required</div>
                                    </div>
                                    <div class="mb-3">
                                        <label class="mb-2 text-muted" for="fir_num">FIR Number</label>
                                        <input id="fir_num" type="text" class="form-control" name="fir_num" required>
                                        <div class="invalid-feedback">FIR Number is required</div>
                                    </div>
                                    <div class="mb-3">
                                        <label class="mb-2 text-muted" for="officer">Investigation Officer</label>
                                        <input id="officer" type="text" class="form-control" name="officer" required>
                                        <div class="invalid-feedback">Investigation Officer is required</div>
                                    </div>
                                    <div class="mb-3">
                                        <label class="mb-2 text-muted" for="status">Investigation Status</label>
                                        <input id="status" type="text" class="form-control" name="status" required>
                                        <div class="invalid-feedback">Investigation Status is required</div>
                                    </div>
                                    <div class="mb-3">
                                        <label class="mb-2 text-muted" for="notes">Investigation Notes</label>
                                        <input id="notes" type="text" class="form-control" name="notes" required>
                                        <div class="invalid-feedback">Investigation Notes are required</div>
                                    </div>
                                    <div class="mb-3">
                                        <label class="mb-2 text-muted" for="collect">Evidence Collected</label>
                                        <input id="collect" type="text" class="form-control" name="collect" required>
                                        <div class="invalid-feedback">Evidence Collected is required</div>
                                    </div>
                                    <div class="mb-3">
                                        <label class="mb-2 text-muted" for="date">Date of Investigation</label>
                                        <input id="date" type="date" class="form-control" name="date" required>
                                        <div class="invalid-feedback">Date of Investigation is required</div>
                                    </div>
                                    <p class="form-text text-muted mb-3">
                                        By registering you agree with our terms and conditions.
                                    </p>
                                    <div class="d-flex">
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