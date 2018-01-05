
    
    <!-- Contact -->
    <section id="contact">
      <div class="container">
        <div class="row">
          <div class="col-lg-12 text-center">
            <h2 class="section-heading text-uppercase">Contact Us</h2>
            <h3 class="section-subheading text-muted"><b style="color: orange;">Pertanyaan, Komentar dan permintaan Anda akan digunakan untuk kepentingan perbaikan situs web kami.
              Kami akan mengusahakan yang terbaik untuk merespon komentar-komentar Anda, namun harap dimaklumi kami mungkin tidak dapat melakukan sepenuhnya dalam setiap kondisi..</b></h3>
          </div>
        </div>
        <div class="row">
          <div class="col-lg-12">
            <form id="contactForm" name="sentMessage" method="post" novalidate>
              <div class="row">
                <div class="col-md-6">
                  <div class="form-group">
                    <input class="form-control" id="name" type="text" placeholder="Nama Lengkap *" required data-validation-required-message="Mohon isikan Nama lengkap anda" name="nama">
                    <p class="help-block text-danger"></p>
                  </div>
                  <div class="form-group">
                    <input class="form-control" id="email" type="email" placeholder="Alamat Email *" required data-validation-required-message="Mohon isikan Alamat email anda" name="email">
                    <p class="help-block text-danger"></p>
                  </div>
                  <div class="form-group">
                    <input class="form-control" id="phone" type="tel" placeholder="No. Handphone*" required data-validation-required-message="Mohon isikan No. Handphone anda" name="hp">
                    <p class="help-block text-danger"></p>
                  </div>
                </div>
                <div class="col-md-6">
                  <div class="form-group">
                    <textarea class="form-control" id="message" placeholder="Pertanyaan / Komentar anda *" name="pesan"></textarea>
                    <p class="help-block text-danger"></p>
                  </div>
                </div>
                <div class="clearfix"></div>
                <div class="col-lg-12 text-center">
                  <div id="success"></div>
                  <button id="sendMessageButton" class="btn btn-primary btn-xl text-uppercase" type="submit" name="kirim">Kirim Pesan</button>
                </div>
              </div>
            </form>
          </div>
        </div>
      </div>
    </section>
    <?php

      if(isset($_POST['kirim'])){
        $insert = mysqli_query($koneksi, "INSERT INTO kontak(nama,email,hp,pesan) VALUES
          ('".$_POST['nama']."',
           '".$_POST['email']."',
           '".$_POST['hp']."',
           '".$_POST['pesan']."')");

          if($insert){
            echo "<script>
                    alert('Pesan anda berhasil dikirim.');
                  </script>";
          }
          else{
            echo "<script>
                    alert('Maaf, gagal terkirim.');
                  </script>".mysqli_error($koneksi);
          }
      }

    ?>
    
    


