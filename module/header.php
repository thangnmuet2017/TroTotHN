

<!-- Phần header -->
	<div class="container" id="header" style="">
		<div class="pull-left">
			<a href="index.php">
				<img src="images/logo.png" alt="">
			</a>
		</div>
		<?php

			if(isset($_SESSION['user_name'])) {
					echo '<div class="pull-right">
						<img src="images/icon-acount.png" id="icon_acount" alt="">
						<div style="padding-top: 5px; padding-right: 0px; float: right;">
						<b><a class="my_acount_button link" href="TrangCaNhan.php">' .$_SESSION['user_name']. '</a></b>
						<br>
						<a class="my_acount_button link"  id="logOut_button" href="index.php?action=logOut">Đăng xuất</a>
						</div>
					</div>';
			} else {
				echo '<div class="pull-right">
						<img src="images/icon-acount.png" id="icon_acount" alt="">
						<div style="padding-top: 5px; padding-right: 0px; float: right;">
						<b class="logIn_signIn_button" id="logIn_button">Đăng nhập</b>
						<br>
						<p class="logIn_signIn_button" id="signIn_button">Đăng ký</p>
						</div>
					</div>';
			}
		?>
		
	</div>