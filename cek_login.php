<?php
include "koneksi.php";
$sql=mysqli_query($koneksi,"SELECT * from admin where
	username='$_POST[username]' and password='$_POST[password]'");

$get=mysqli_num_rows($sql);
$r=mysqli_fetch_array($sql);
	//apabila username dan password ditemukan
if($get > 0)
{
	session_start();
	if($_SESSION['kodecap']!=$_POST['kodeval']){
		  //awal session
		print "<script>
		alert(\"kode captcha salah\");
		location.href = \"login.php\";
		</script>";
	}else{
		//isi dari variabel session
		$_SESSION['username']=$r['username'];
		$_SESSION['password']=$r['password'];
		//buka halaman utama administrator
		header('location:admin/index.php');
	}
} 
else
{
	print "<script>
	alert(\"Periksa Pengisian Form\");
	location.href = \"login.php\";
	</script>";
}
?>

