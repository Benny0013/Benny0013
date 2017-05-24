<?php
include('database.php');
$baris = 5;
$page = isset($_GET['page']) ? $_GET['page'] : "";
if(empty($page)) {
	$posisi = 0;
	$page = 1;
} else {
	$posisi = ( $page - 1 ) * $baris;
}
$query = "SELECT * FROM rekap limit $posisi, $baris";
$no = 1+$posisi;
$resour = mysqli_query($con,$query);

if(mysqli_num_rows($resour) > 0) { ?>
	<link rel="stylesheet" href="bootstrap.min.css">
	<div class="container">
		<table class="table">
			<tr>
				<th>No Induk</th>
				<th>Nama</th>
				<th>Hadir</th>

			</tr>		
			<?php
				while($row = mysqli_fetch_assoc($resour)) {
					echo "<tr>";
						echo "<td>".$no."</td>";
						echo "<td>".$row['noinduk']."</td>";
						echo "<td>".$row['nama']."</td>";

					echo "</tr>";	
					$no++;
				}
			?>
		</table>
		<?php
			$query1 = "SELECT * FROM rekap";
			$resour2 = mysqli_query($con,$query1);
			$data = mysqli_num_rows($resour2);
			$Halaman = ceil($data / $baris);
			if ( $page > 1 ) {
				$link = $page-1;
				$prev = "<a href='?page=$link'>BEFORE </a>";
			} else {
				$prev = "BEFORE ";
			}
			$nomor = '';
			for ( $a = 1; $a<= $Halaman; $a++ ){
				if ( $a == $page ) {
					$nomor .= $a . " ";
				} else {
					$nomor .= "<a href='?page=$a'>$a</a> ";
				}
			}		 
			if ( $page < $Halaman ) {
				$link = $page + 1;
				$next = " <a href='?page=$link'>NEXT</a>";
			} else {
				$next = " NEXT";
			}
			echo $prev . $nomor . $next;
		?>
	</div>
<?php 
} 
mysqli_close($con);
?>