<div class="title-wrapper pt-30">
            <div class="row align-items-center">
              <div class="col-md-6">
                <div class="title mb-30">
                  <h2>Nilai S</h2>
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
                        vnilais
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
                  <h6 class="mb-10">View Nilai S</h6>
                  <p class="text-sm mb-20">
                    Berisi tampilan detail nilai s. 
                  </p>
                  <div class="table-wrapper table-responsive">
                    <table class="table">
                      <thead>
                        <tr>
                          <th><h6>Id Alternatif</h6></th>
                          <th><h6>Nama Alternatif</h6></th>
                          <th><h6>Nilai S</h6></th>
                        </tr>
                        <!-- end table row-->
                      </thead>
                      <?php
                      include 'koneksi.php';
                      $query = mysqli_query($db, "SELECT * FROM wp_nilais order by idalternatif");
                      while ($data = mysqli_fetch_array($query)) {
                        ?>
                      <tbody>
                        <tr>
                          <td>
                            <p><?php echo $data['idalternatif']?> </p>
                          </td>
                          <td class="min-width">
                            <p><?php echo $data['nmalternatif']?> </p>
                          </td>
                          <td class="min-width">
                            <span class="status-btn warning-btn"><?php echo $data['nilais']?>  </span>
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