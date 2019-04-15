
<?php 
	if(isset($_GET['action'])) {
		echo $_GET['action'];
		if($_GET['action']=='logOut') {
			session_destroy();
		}
	}
?>