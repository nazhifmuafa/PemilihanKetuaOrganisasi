<div class="title-wrapper pt-30">
            <div class="row align-items-center">
              <div class="col-md-6">
                <div class="title mb-30">
                  <h2>Normalisasi</h2>
                </div>
              </div>
              <!-- end col -->
              <div class="col-md-6">
                <div class="breadcrumb-wrapper mb-30">
                  <nav aria-label="breadcrumb">
                    <ol class="breadcrumb">
                      <li class="breadcrumb-item">
                        <a href="#0">Dashboard</a>
                      </li>
                      <li class="breadcrumb-item active" aria-current="page">
                        vnormalisasi
                      </li>
                    </ol>
                  </nav>
                </div>
              </div>
              <!-- end col -->
            </div>
            <!-- end row -->
          </div>
<div class="row">
              <div class="col-lg-12">
                <div class="card-style mb-30">
                  <h6 class="mb-10">View Normalisasi</h6>
                  <p class="text-sm mb-20">
                    Berisi tampilan detail normalisasi. 
                  </p>
                  <div class="table-wrapper table-responsive">
                    <table class="table">
                      <thead>
                        <tr>
                          <th><h6>Id Bobot</h6></th>
                          <th><h6>Kriteria</h6></th>
                          <th><h6>Bobot</h6></th>
                          <th><h6>Jumlah value bobot</h6></th>
                          <th><h6>Normalisasi</h6></th>
                        </tr>
                        <!-- end table row-->
                      </thead>
                      <?php
                      include 'koneksi.php';
                      $query = mysqli_query($db, "SELECT * FROM wp_normalisasiterbobot join kriteria on wp_normalisasiterbobot.idkriteria=kriteria.idkriteria order by idbobot");
                      while ($data = mysqli_fetch_array($query)) {
                        ?>
                      <tbody>
                        <tr>
                          <td>
                            <p><?php echo $data['idbobot']?> </p>
                          </td>
                          <td class="min-width">
                            <p><?php echo $data['nmkriteria']?> </p>
                          </td>
                          <td class="min-width">
                            <p><?php echo $data['valuebobot']?> </p>
                          </td>
                          <td class="min-width">
                            <p><?php echo $data['jumlah']?> </p>
                          </td> 
                          <td class="min-width">
                            <span class="status-btn warning-btn"><?php echo $data['normalisasi_w']?>  </span>
                          </td>  
                        </tr>
                        <?php } ?>
                        <!-- end table row -->
                      </tbody>
                    </table>
                    <!-- end table -->
                  </div>
                </div>
                <!-- end card -->
              </div>
              <!-- end col -->
            </div>
            <!-- end row -->