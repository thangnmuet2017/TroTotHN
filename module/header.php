<!-- Phần header -->
	<div class="container" id="header" style="">
		<div class="pull-left">
			<a href="index.php">
				<img src="images/logo.png" alt="">
			</a>
		</div>
		<?php
			if($is_logged == false) {
				echo '<div class="pull-right">
						<img src="images/icon-acount.png" id="icon_acount" alt="">
						<div style="padding-top: 5px; padding-right: 0px; float: right;">
						<b class="logIn_signIn_button" id="logIn_button">Đăng nhập</b>
						<br>
						<p class="logIn_signIn_button" id="signIn_button">Đăng ký</p>
						</div>
					</div>';
			} else {
				echo '<div class="pull-right">
						<img src="images/icon-acount.png" id="icon_acount" alt="">
						<div style="padding-top: 5px; padding-right: 0px; float: right;">
						<b><a class="my_acount_button link" href="TrangCaNhan.php">' .$user_name. '</a></b>
						<br>
						<p class="logIn_signIn_button" id="logOut_button">Đăng xuất</p>
						</div>
					</div>';
			}
		?>
		
	</div>