

    <!-- Materi Mudah -->
    
     <div class="jumbotron" align="center" style="width: 100%; ">
        <div class="row" style="width: 90%; ">
                 <?php
                    $select=mysqli_query($koneksi, "SELECT * FROM materi_sedang where id_materi='4'");
                    $isi = mysqli_fetch_array($select);
                  ?>
                
               <!--p><a href="#" class="btn btn-primary" role="button"><?php /*echo $isi['judul_materi'] */?></a></p-->
                <table width="100%" align="center">
                  <tr>
                    <td>
                    <div class="jumbotron" style="background: #212529;">
                          <h1 class="display-3" style="margin-left: 90px; color: #FFD700;"><?php echo $isi['judul_materi'] ?></h1>
                          <br>
                          <p class="lead">
                            
                            <p style="margin-left: 90px; color: #FFD700;">
                             <pre style="margin-left: 90px; color: #FFD700;"><?php echo $isi['isi'] ?></pre>
                            </p>
                          </p>
                      </div>
                    </td>
                  </tr>
                </table>
      
      <br><br>
      </div>
    </div>


