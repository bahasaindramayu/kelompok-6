<?php

$data_edit = mysqli_query($koneksi, "SELECT * FROM pelajaran WHERE Id_pelajaran ='".$_GET['id_pelajaran']."'");
$result = mysqli_fetch_array($data_edit);

?>


    <!--content-->
  <div style="height: 1000px;">
    <form action="" method="POST">
      <table width="50%" style="margin-top: 200px;" align="center">     
        <tr>
          <td bgcolor="gray">Pelajaran no.<?php echo $result['Id_pelajaran']; ?></td>
        </tr>
        <tr>
          <td>Judul</td>
          <td>:</td>
          <td><input class="form-control" type="text" name="judul" value="<?php echo $result['judul']; ?>" required></td>
        </tr>
        <tr>
          <td>Isi</td>
          <td>:</td>
          <td><textarea type="text" name="isi" required><?php echo $result['isi']; ?></textarea></td>
        </tr>
        <tr>
          <td>
            <input type="submit" name="edit" value="Simpan">
          </td>
        </tr>                
      </table>
      
    </form>
    <?php
    $query2 = mysqli_query($koneksi, "SELECT * FROM pelajaran WHERE Id_pelajaran='id_pelajaran'");

    if(isset($_POST['edit'])){
      if(mysqli_num_rows($query2) == 1){
        echo "edit gagal";
      }
      else{
      $update = mysqli_query($koneksi, "UPDATE pelajaran SET judul = '".$_POST['judul']."',
        isi = '".$_POST['isi']."' WHERE Id_pelajaran = '".$_GET['id_pelajaran']."'");
      if ($update) {
        echo "<script>
                  alert('Edit Berhasil.');
                </script>";
      }
      else if(!$update){
        echo 'gagal'.mysqli_error($koneksi);
        }
      }
    }

    ?>
</div>
    <!--end content-->

