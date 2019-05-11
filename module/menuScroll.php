<!-- Phần menu hiển thị khi scroll màn hình-->
	<nav class="navbar navbar-default navbar-inverse" role="navigation" id="menu_scroll" style="">
		<div class="container">
			<!-- Brand and toggle get grouped for better mobile display -->
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse">
					<span class="sr-only">Toggle navigation</span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="index.php" style="padding: 9px 15px;"><img src="images/house-32.png"></a>
			</div>

			<!-- Collect the nav links, forms, and other content for toggling -->
			<div class="collapse navbar-collapse navbar-ex1-collapse">
				<ul class="nav navbar-nav">
					<li><a href="./LoaiPhong.php?action=Phòng+trọ">
						<b>PHÒNG TRỌ</b>
					</a></li>
					<li><a href="./LoaiPhong.php?action=Nhà+nguyên+căn">
						<b>NHÀ NGUYÊN CĂN</b>
					</a></li>
					<li><a href="./LoaiPhong.php?action=Ở+ghép">
						<b>Ở GHÉP</b>
					</a></li>
					<li><a onclick = "checkLogIn()" href="javascript: ;">
						<b>ĐĂNG TIN NHANH</b>
						<script>
					        function checkLogIn(){
					            <?php 
					            	if(isset($_SESSION['user_name'])) { ?>
					            		location.assign("https://trotothn.000webhostapp.com/DangTinNhanh.php");
					          <?php } else { ?>
					          			$("#login_background").css("display", "block");
										$("#logIn_area").css("display", "block");
										$("#signIn_area").css("display", "none");
										$(".logIn_menu_button").css("color", "green");
										$(".signIn_menu_button").css("color", "black");
					          <?php }
					            ?>
					        }
					    </script>
					</a></li>

				</ul>
			</div><!-- /.navbar-collapse -->
		</div>
	</nav>
