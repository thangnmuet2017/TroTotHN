//Các lỗi input
//Nếu nhập nội dung sai thì hiển thị yêu cầu nhập lại
$("#upload_room_button").click( function() {
	/*Nhập tiêu đề*/
	if(document.getElementById("input_title").value == "") {
		$("#error_input_title").text(" Bạn chưa nhập tiêu đề!");
	} else {
		$("#error_input_title").text("");
	}

	/*Nhập giá phòng*/
	if(document.getElementById("input_room_price").value == "") {
		$("#error_input_room_price").text(" Bạn chưa nhập giá phòng!");
	} else {
		$("#error_input_room_price").text("");
	}

	/*Nhập diện tích phòng*/
	if(document.getElementById("input_room_area").value == "") {
		$("#error_input_room_area").text(" Bạn chưa nhập diện tích phòng!");
	} else {
		$("#error_input_room_area").text("");
	}

	/*Chọn quận/huyện*/
	if(document.getElementById("quan_huyen_select").value == "") {
		$("#error_input_district").text(" Bạn chưa chọn quận/huyện!");
	} else {
		$("#error_input_district").text("");
	}

	/*Chọn xã/phường*/
	if(document.getElementById("xaPhuongSelect").value == "") {
		$("#error_input_xaPhuong").text(" Bạn chưa chọn xã/phường!");
	} else {
		$("#error_input_xaPhuong").text("");
	}

	/*Địa chỉ chi tiết căn phòng*/
	if(document.getElementById("input_exacly_address").value == "") {
		$("#error_input_address").text(" Bạn chưa nhập địa chỉ căn phòng!");
	} else {
		$("#error_input_address").text("");
	}

	/*Số điện thoại*/
	if(document.getElementById("input_phone_number").value == "") {
		$("#error_input_phone_number").text(" Bạn chưa nhập số điện thoại!");
	} else {
		$("#error_input_phone_number").text("");
	}

	/*Mô tả chi tiết căn phòng*/
	if(document.getElementById("input_room_describle").value == "") {
		$("#error_input_describle").text(" Bạn chưa nhập mô tả chi tiết căn phòng!");
	} else {
		$("#error_input_describle").text("");
	}

	/*Kiểm tra xem đã chọn kiểu phòng chưa*/
	var checkboxKieuPhong = document.getElementsByName("KieuPhong");
	var KieuPhongChecked = false;
	for (var i = 0; i < checkboxKieuPhong.length; i++){
		if (checkboxKieuPhong[i].checked === true){
			KieuPhongChecked = true;
		}
	}
	if(KieuPhongChecked === false) {
		$("#error_input_kind_of_room").text("Bạn chưa chọn kiểu phòng!");
	} else {
		$("#error_input_kind_of_room").text("");
	}

	/*Kiểm tra xem đã chọn kiểu vệ sinh chưa*/
	var checkboxKieuVeSinh = document.getElementsByName("VeSinh");
	var KieuVeSinhChecked = false;
	for (var i = 0; i < checkboxKieuVeSinh.length; i++){
		if (checkboxKieuVeSinh[i].checked === true){
			KieuVeSinhChecked = true;
		}
	}
	if(KieuVeSinhChecked === false) {
		$("#error_input_kind_of_toilet").text("Bạn chưa chọn kiểu vệ sinh!");
	} else {
		$("#error_input_kind_of_toilet").text("");
	}
});

//Hàm kiểm tra điều kiện để submit nội dung của tin bài đăng
//Nếu mọi nội dung được nhập chính xác thì mới gửi dữ liệu lên server khi nhấn nút đăng tin
function validateForm() {
	if(document.getElementById("input_title").value == ""
		|| document.getElementById("input_room_price").value == ""
		|| document.getElementById("input_room_area").value == ""
		|| document.getElementById("quan_huyen_select").value == ""
		|| document.getElementById("xaPhuongSelect").value == ""
		|| document.getElementById("input_exacly_address").value == ""
		|| document.getElementById("input_phone_number").value == ""
		|| document.getElementById("input_room_describle").value == "") {
		return false;
	}
	var checkboxKieuPhong = document.getElementsByName("KieuPhong");
	var KieuPhongChecked = false;
	for (var i = 0; i < checkboxKieuPhong.length; i++){
		if (checkboxKieuPhong[i].checked === true){
			KieuPhongChecked = true;
		}
	}
	if (KieuPhongChecked == false) {
		return false;
	}

	var checkboxKieuVeSinh = document.getElementsByName("VeSinh");
	var KieuVeSinhChecked = false;
	for (var i = 0; i < checkboxKieuVeSinh.length; i++){
		if (checkboxKieuVeSinh[i].checked === true){
			KieuVeSinhChecked = true;
		}
	}
	if(KieuVeSinhChecked == false) {
		return false;
	}
}


//Hiển thị bản xem trước của ảnh trước khi tải ảnh lên tin bài đăng
var imagesPreview = function(input, placeToInsertImagePreview) {

	if (input.files) {
		var filesAmount = input.files.length;

		for (i = 0; i < filesAmount; i++) {
			var reader = new FileReader();

			reader.onload = function(event) {
				$($.parseHTML('<img>')).attr('src', event.target.result).addClass('col-sm-4 col-xs-12 thumbnail view_images').appendTo(placeToInsertImagePreview);
			}
			reader.readAsDataURL(input.files[i]);
		}
	}

};

$('#upload_images').on('change', function() {
	imagesPreview(this, 'div.preview_images');
});
