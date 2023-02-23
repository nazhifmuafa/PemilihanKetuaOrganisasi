<!DOCTYPE html>
<html>
<head>
	<title>CRUD Petani Kode</title>
</head>
<body>

<?php
// --- koneksi ke database
include 'koneksi.php';
// --- Fngsi tambah data (Create)
function tambah($db){
	
	include 'koneksi.php';
    if (isset($_POST['btn_tambah'])) {
        $idmatrix = $_POST['idmatrix'];
        $idobject = $_POST['idobject'];
        $idbobot = $_POST['idbobot'];
        $idskala = $_POST['idskala'];
        //variabel query adalah variabel yang menyimpan perintah sql dml
        $query = mysqli_query($db, "INSERT INTO matrixkeputusan (idmatrix,idobject,idbobot,idskala) VALUES ('$idmatrix', '$idobject', '$idbobot', '$idskala')");
        if ($query) {
            header("location:index.php?page=matrixkeputusan");
        } else {
            echo "Input Gagal";
        }
    }
	?> 

	<?php
}
// --- Tutup Fngsi tambah data
// --- Fungsi Baca Data (Read)

// --- Tutup Fungsi Baca Data (Read)
// --- Fungsi Ubah Data (Update)
function ubah($db){
	// ubah data
	if(isset($_POST['btn_ubah'])){
		$id = $_POST['idmatrix'];
        $idobject = $_POST['idobject'];
        $idbobot = $_POST['idbobot'];
        $idskala = $_POST['idskala'];
 
        mysqli_query($db, "UPDATE matrixkeputusan SET idobject='$idobject', idbobot='$idbobot', idskala='$idskala'  WHERE idmatrix='$id'");
 
        echo (mysqli_error($db));

 
        header("location:index.php?page=matrixkeputusan");
	}
	
	// tampilkan form ubah
	if(isset($_GET['idmatrix'])){
        $id = $_GET['idmatrix'];
	    $query_mysql = mysqli_query($db,"SELECT * FROM matrixkeputusan WHERE idmatrix='$id'");
        while ($data = mysqli_fetch_array($query_mysql)) {
            ?>
            <form action="" method="POST">
				<?php
                    $alternatif = mysqli_query($db, "SELECT * FROM alternatif");
                    $skala = mysqli_query($db, "SELECT * FROM skala");
                    $bobot = mysqli_query($db, "SELECT * FROM bobot");
                ?>
				<h2>Mengubah Isi Tabel</h2>
			<table>
			<tr>					
				<td>Nama Alternatif</td>
				<td>
					<input type="hidden" name="idmatrix" value="<?php echo $data['idmatrix'] ?>">
					<select name="idobject" id="">
                                        <?php while($row= mysqli_fetch_array($alternatif)) { ?>
                                        <option value="<?=$row['idalternatif']?>"><?=$row['nmalternatif']?></option>
                                        <?php } ?>)
                                    </select>
				</td>					
				<td>Bobot</td>
				<td><select name="idbobot" id="">
                                        <?php while($row= mysqli_fetch_array($bobot)) { ?>
                                        <option value="<?=$row['idbobot']?>"><?=$row['idbobot']?></option>
                                        <?php } ?>)
                                    </select></td>					
				<td>Skala</td>
				<td><select name="idskala" id="">
                                        <?php while($row= mysqli_fetch_array($skala)) { ?>
                                        <option value="<?=$row['idskala']?>"><?=$row['keterangan']?></option>
                                        <?php } ?>)
                                    </select></td>						
			</tr>	
			<tr>
				<td></td>
				<td><input type="submit" value="Simpan" name="btn_ubah"></td>					
			</tr>				
		    </table>
			</form>

            <?php
            echo (mysqli_error($db));
        }
	}
	
}
// --- Tutup Fungsi Update
// --- Fungsi Delete
function hapus($db){
	if (isset($_GET['idmatrix']) && isset($_GET['aksi'])) {
        $id_siswa    =$_GET['idmatrix'];
    }
    else{
        echo "Oops! No ID Selected";
    }
    
    if (!empty($id_siswa) && $id_siswa != "") {
        $hapus =mysqli_query($db, "DELETE FROM matrixkeputusan WHERE idmatrix='$id_siswa'");
            ?>
                <script language="JavaScript">
                alert('Good! Delete data berhasil ...');
                document.location='./';  
                </script>
            <?php        
    }
	header("location:index.php?page=matrixkeputusan");

	
}
// --- Tutup Fungsi Hapus
// ===================================================================
// --- Program Utama
if (isset($_GET['aksi'])){
	switch($_GET['aksi']){
		case "create":
			echo '<a href="index.php"> &laquo; Home</a>';
			tambah($db);
			break;
		case "update":
			ubah($db);
			break;
		case "delete":
			hapus($db);
			break;
		default:
			echo "<h3>Aksi <i>".$_GET['aksi']."</i> tidaka ada!</h3>";
			tambah($db);
	}
} else {
	tambah($db);
	tampil_data($db);
}

if(isset($_GET['page'])){
	$page = $_GET['page'];
	switch ($page) {
		case 'insertAlternatif':
			include "insertAlternatif.html";
			break;
		case 'matrixkeputusan':
			include "matrixkeputusan.php";
			break;
		case 'tutorial':
			include "halaman/tutorial.php";
			break;			
		default:
			echo "<center><h3>Maaf. Halaman tidak di temukan !</h3></center>";
			break;
	}
}else{
	
}
?>
</body>
</html>