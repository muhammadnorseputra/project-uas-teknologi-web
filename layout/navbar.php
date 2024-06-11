<!-- Navigation-->
<nav class="navbar navbar-expand-lg navbar-light bg-white py-3">
    <div class="container px-5">
        <a class="navbar-brand" href="index.php"><span class="fw-bolder text-primary"><?= $db->getProfile('title') ?></span></a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav ms-auto mb-2 mb-lg-0 gap-5 small fw-bolder">
                <li class="nav-item"><a class="nav-link" href="?page=home">Home</a></li>
                <li class="nav-item"><a class="nav-link" href="?page=resume">Resume</a></li>
                <li class="nav-item"><a class="nav-link" href="?page=project">Projects</a></li>
                <li class="nav-item"><a class="nav-link" href="?page=contact">Contact</a></li>
            </ul>
        </div>
    </div>
</nav>