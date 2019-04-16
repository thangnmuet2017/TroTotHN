-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th4 16, 2019 lúc 10:20 AM
-- Phiên bản máy phục vụ: 10.1.38-MariaDB
-- Phiên bản PHP: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `demobtl`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `bai_dang`
--

CREATE TABLE `bai_dang` (
  `ID` int(11) NOT NULL,
  `user_name` varchar(20) CHARACTER SET latin1 NOT NULL DEFAULT 'admin',
  `TieuDe` tinytext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `NoiDung` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `ThoiGianDang` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `bai_dang`
--

INSERT INTO `bai_dang` (`ID`, `user_name`, `TieuDe`, `NoiDung`, `ThoiGianDang`) VALUES
(9, 'admin', 'Ý tưởng kinh doanh nhà trọ, ngồi không mỗi tháng kiếm trăm triệu?', 'Những thành phố lớn thường là vùng trọng điểm kinh tế, tập trung các dịch vụ quan trọng nên đã trở thành “miền đất hứa” cho nhiều người tìm đến lập nghiệp hay học tập. Cũng vì vậy mà nhu cầu về nhà ở tại đây rất cao, tạo điều kiện cho các dịch vụ kinh doanh cho thuê phong trọ, nhà trọ phát triển, thậm chí có người còn kháo nhau rằng, mở nhà trọ thì ngồi không mỗi tháng cũng kiếm được trăm triệu. Đúng là không thể phủ nhận tiềm năng của ý tưởng kinh doanh này, nhưng sự thực có màu hồng như thế không? Hãy cùng chúng tôi tìm hiểu cơ hội và thách thức bạn phải đối mặt nếu lựa chọn ý tưởng này.\r\nÝ tưởng kinh doanh nhà trọ đầy tiềm năng\r\n\r\nNhu cầu lớn\r\n\r\nNhững thành phố lớn có tốc độ tăng dân số và đô thị hóa thường rất cao, lại thêm số lượng dân tỉnh lẻ tìm đến lập nghiệp hoặc học tập mỗi năm khá nhiều nên vấn đề nhu cầu bạn không phải quá lo lắng. Kể cả đối với những thành phố nhỏ hơn thì các khu gần trung tâm, khu công nghiệp cũng không thiếu người muốn tìm phòng trọ gần để tiện cho việc di chuyển.\r\n\r\nNhiều phân khúc\r\n\r\nPhòng trọ cũng chia là nhiều loại, có phòng giá bình dân cho sinh viên ở ghép, lại có phòng cao cấp chung cư mini cho các hộ gia đình. Vì vậy bạn có thể tùy vào nguồn vốn của mình để xác định đối tượng khách hàng mục tiêu rồi xây dựng khu trọ phù hợp.\r\n\r\nDoanh thu ổn định\r\n\r\nÝ tưởng kinh doanh nhà trọ thường không bị ảnh hưởng nhiều bởi sự biến động của thị trường bất động sản, dù giá đất có giảm thì hàng tháng bạn vẫn thu được một khoản tiền cố định. Điều này giúp bạn giảm khá nhiều áp lực tài chính nếu phải đi huy động vốn từ nhiều nguồn vay khác nhau.\r\nCơ hội gia tăng giá trị bất động sản\r\n\r\nNgoài khoản tiền thu được hàng tháng từ các khách hàng thuê trọ bạn còn nắm trong tay một nguồn bất động sản không nhỏ và có khả năng gia tăng giá trị trong tương lai. Dù sau này bạn không còn kinh doanh nhà trọ nữa thì vẫn có thể sang nhượng lại với giá cao hơn nhiều.\r\n\r\nKhá… nhàn hạ\r\n\r\nThực tế là việc đầu tư nhà trọ chỉ vất vả trong giai đoạn đầu về việc huy động vốn, lập kế hoạch và triển khai xây dựng, lắp đặt, còn khi đã có khách hàng thì mọi thứ đều đi vào hệ thống. Bạn không phải mất quá nhiều thời gian vào việc quản lý hay điều hành, chỉ cần kiểm tra thường xuyên để nắm bắt tình hình khu trọ là được.\r\n\r\nNhững thách thức khi kinh doanh nhà trọ\r\n\r\nĐầu tư lớn, thu bạc cắc\r\n\r\nĐể hoàn thiện một khu trọ bạn phải tốn khá nhiều tiền đầu tư, trung bình khoảng trên dưới 1 tỷ cho khu hơn 10 phòng (tính cả tiền mua đất, xây dựng, lắp đặt trang thiết bị,…). Thế nhưng khi hưởng thành quả thì tiền thu về khá lẻ so với vốn, mỗi phòng từ 2 đến 3 triệu, chưa trừ chi phí thì tổng được hơn 30 triệu. Vì vậy tốc độ thu hồi vốn thường khá lâu, khoảng 5 đến 6 năm với quy mô trung bình. Nếu bạn phải đi vay vốn để đầu tư thì cần phải xem xét thật kỹ tránh các tình huống xấu sau này.\r\n\r\nĐối tượng khách hàng phức tạp\r\n\r\nMột khu trọ có nhiều loại người khác nhau, nếu bạn không biết sàng lọc và kiểm soát ngay từ đầu thì rất dễ xảy ra tình trạng loạn. Rất nhiều khu trọ từng gặp rắc rối vì có những đối tượng thiếu ý thức chung, hay nhậu nhẹt, mắc tệ nạn xã hội,… Vì vậy việc tìm kiếm và lựa chọn khách hàng là cực kỳ quan trọng nếu bạn muốn việc kinh doanh của mình diễn ra thuận lợi.\r\n\r\nCần khả năng quản lý thật tốt\r\n\r\nXây lên một khu trọ, đất là đất của bạn, nhà cũng là nhà bạn xây nên bạn quý trọng mọi thứ ở đó, nhưng với khách hàng thì chưa chắc, rất nhiều người thường tùy ý trong việc bảo quản đồ đạc dẫn đến hư hại. Nếu bạn không biết bao quát tình hình, không thể quản lý tốt tài sản của mình thì chỉ sau một thời gian ngắn khu trọ sẽ xuống cấp nghiêm trọng, tốn của bạn không ít tiền để tu sửa.\r\n\r\nVấn đề thủ tục\r\n\r\nChuyện đăng ký tạm trú tạm vắng luôn khiến các chủ trọ đau đầu, vì nếu làm cho vài chục người thì thủ tục rất lằng nhằng, còn nếu không làm thì sẽ bị phạt hành chính. Để đảm bảo, ngay khi ký hợp đồng với người thuê nhà bạn nên yêu cầu họ đi đăng ký ngay sau đó.\r\n\r\nVấn đề an ninh\r\n\r\nVài chục người sống trong một khu trọ không phải chuyện đơn giản, số tài sản chung và riêng là con số khổng lồ, nếu bạn không có biện pháp đảm bảo an ninh thì rất dễ xảy ra tình trạng mất cắp. Hiện nay nhiều khu trọ lớn còn lắp đặt hệ thống camera tại mỗi tầng, có khu vực gửi xe, thậm chí là bảo vệ riêng rất chuyên nghiệp, bạn nên cân nhắc về vấn đề này khi xây dựng.\r\n\r\nChi phí dự phòng\r\n\r\nMặc dù nhà trọ là tài sản cố định nhưng mức độ tiêu hao lại cưc kì nhanh nếu khả năng quản lý của bạn kém, lúc này cần phải có một khoản phí dự phòng để tu sửa và xử lý tình huống bất ngờ. Ngay từ lúc lập kế hoạch, huy động vốn bạn nên tính toán trước khoản này và thường xuyên bổ sung để tránh thiếu hụt.\r\n\r\nQua đây có thể thấy ý tưởng kinh doanh nhà trọ rất tiềm năng nhưng cũng tràn đầy thách thức chứ không tràn ngập màu hồng “ngồi không mỗi tháng kiếm trăm triệu” nhưng một số người lầm tưởng. Nếu bạn lựa chọn làm giàu bằng cách này thì hãy lập một kế hoạch thật chi tiết để thành công được đảm bảo hơn.', '2019-04-09 23:15:40'),
(10, 'tam0123', 'Những điều cần biết khi tìm phòng trọ', 'Với những tân sinh viên lần đầu tiên đi tìm phòng trọ chắc hẳn sẽ gặp khá nhiều khó khăn do chưa có kinh nghiệm. Dưới đây là một số điều bạn cần biết khi tìm phòng trọ nhé.\r\n\r\nNên thuê nhà trọ gần trường học\r\n\r\nViệc thuê phòng trọ gần trường học mang lại rất nhiều lợi ích cho bạn. Bạn nên tìm phòng trọ cách trường học từ 1-2 km để thuận tiện đi lại, đồng thời giúp bạn tiết kiệm công sức, thời gian và chi phí di chuyển.\r\nBên cạnh đó, việc trọ gần trường học còn giúp bạn dễ dàng tham gia các hoạt động ngoại khóa hay lên thư viện ôn tập vào những ngày nghỉ. Đồng thời còn giúp bạn tránh được cảnh tắc đường, chen chúc trên những chuyến xe bus chật chội giờ cao điểm và hạn chế việc bạn đi học muộn.\r\n\r\nHiện nay, xung quanh hầu hết các trường học đều có ký túc xá cũng như các khu trọ của người dân nên không khó để bạn có thể tìm được phòng trọ với yêu cầu trên. Tuy nhiên, giá cả phòng trọ tại những khu vực này lại là một yếu tố quan trọng bạn nên xem xét.\r\n\r\nNên khảo sát giá phòng trọ trước khi thuê\r\n\r\nĐể giúp bạn tránh tình trạng bị chủ nhà ép giá cao, bạn nên khảo sát giá phòng trọ trước khi quyết định thuê phòng. Vậy khảo sát bằng cách nào?\r\n\r\nBạn có thể khảo sát thực tế tại khu vực mà bạn muốn thuê phòng. Để thuê phòng trọ bạn nên tính toán mức phí sinh hoạt bố mẹ cho mỗi tháng là bao nhiêu và xem xét mình cần phòng trọ như thế nào?\r\n\r\nBạn nên khảo sát giá phòng với từng loại phòng như: phòng trọ trong dãy nhà trọ sinh viên, phòng ở chung nhà với chủ, phòng ở nhà nguyên căn, hay phòng ở chung cư. Phòng khép kín hay không khép kín? Phòng có gác xép hay không có gác xép? Phòng có thể ở được mấy người?\r\n\r\nSau đó, tùy theo lựa chọn của bạn để có thể tìm được căn phòng đúng yêu cầu với mức giá rẻ nhất nhé. Bạn cũng cần hỏi thăm những người đang thuê phòng trọ ở đó và xem mức giá mà nhà chủ đưa ra cho bạn có bị chênh lệch không để cân nhắc lại.\r\n\r\nĐối với tân sinh viên thì ký túc xá là lựa chọn tốt nhất\r\n\r\nVới tân sinh viên chưa có nhiều kinh nghiệm trong việc tìm phòng cũng như sống riêng thì ký túc xá sẽ là lựa chọn tốt dành cho bạn. Ở ký túc xá bạn có thể yên tâm về vấn đề đi lại bởi hầu hết các ký túc xá đều gần trường.\r\n\r\nƯu điểm cho những ai ở ký túc xá đó là được gần gũi với nhiều bạn, giúp đỡ nhau trong đời sống, sinh hoạt cũng như học tập. Bạn sẽ không còn cảm thấy cô đơn hay khó khăn những lúc ốm đau.\r\nBạn có thể cập nhật những thông tin mới nhất về trường lớp, các hoạt động nhanh nhất tại môi trường ký túc này. Ký túc xá còn giúp bạn rèn luyện cách sống, kỹ năng giao tiếp do bạn có thể tiếp xúc và sinh hoạt với nhiều người, nhiều tính cách khác nhau.\r\n\r\nTuy nhiên, bạn cũng lưu ý rằng, an ninh trong ký túc xá không được đảm bảo chắc chắn, có thể xảy ra tình trạng trộm cắp. Đồng thời,ở ký túc xá sẽ khó còn cái gọi là không gian riêng dành cho bạn cũng như bạn cần phải khéo léo ứng xử trong nhiều tình huống khi sống chung với nhiều người.\r\n\r\nPhương tiện giao thông\r\n\r\nKhi bạn chưa thông thạo về đường phố nơi mình học thì phương tiện xe bus công cộng sẽ là lựa chọn tốt nhất. Hiện nay, tại thành phố Hà Nội, việc làm vé tháng xe bus dành cho sinh viên với giá ưu đãi chỉ 100.000 đồng/ tháng, bạn có thể lên bất kỳ tuyến xe bus nào và đi đến bất cứ đâu trong thành phố.\r\n\r\nKhu vực thuê phòng trọ\r\n\r\nĐọc kỹ hợp đồng trước khi thuê phòng\r\n\r\nKhi thuê phòng trọ, nhất thiết cần phải có hợp đồng thuê nhà gồm 2 bản được 2 bên xác nhận và mỗi bên giữ 1 bản.\r\n\r\nTrước khi ký vào bản hợp đồng đó, bạn cần đọc kỹ các điều khoản của hợp đồng về quyền lợi, trách nhiệm cũng như giá thuê phòng trọ, tiền đặt cọc, giá điện nước cùng các dịch vụ internet, vệ sinh khác. Và chắc chắn rằng, bạn sẽ không bị thiệt với bản hợp đồng này nhé.\r\n\r\nKiểm tra vật dụng nhà trọ trước khi chuyển đến\r\n\r\nTrước khi chuyển đến ở, bạn cần kiểm tra kỹ lưỡng hệ thống điện, đường ống nước và các thiết bị trong phòng. Nếu có sự cố gì, bạn nên yêu cầu chủ nhà nhanh chóng sửa chữa và thay thế.\r\n\r\nBạn cũng nên kiểm tra lại số điện và số nước của phòng trước khi chuyển vào ở, để chắc chắn rằng tiền điện, nước tháng sau của bạn được tính đúng.\r\n\r\nCách tránh bị nhà chủ ép giá điện, nước\r\n\r\nTrong thương thảo hợp đồng, bạn cần chắc chắn tiền điện, nước các phòng là như nhau và không thay đổi theo thời gian nhất định.\r\n\r\nTốt nhất là bạn nên yêu cầu mỗi phòng có một đồng hồ đo điện, nước riêng để tránh trường hợp bị câu trộm điện, nước. Đồng thời, bạn cũng nên hỏi hàng xóm về tiền điện, nước của các phòng tương quan với vật dụng trong phòng của mình để xem xét liệu tiền điện, nước của mình có bị cao quá không. Nếu trường hợp bị cao lên bất ngờ thì bạn nên yêu cầu xem xét lại.\r\n\r\nKinh nghiệm tìm người ở ghép\r\n\r\nCó thể nhiều bạn khi tìm được phòng phù hợp nhưng một mình không thể chi trả được tất cả các khoản tiền và bạn cần tìm người ở ghép.\r\n\r\nLúc này, bạn nên liên hệ với bạn bè và người thân để tìm người có cùng nhu cầu. Với những người này, bạn sẽ cảm thấy yên tâm hơn vì bạn đã có những thông tin cụ thể của đối phương đồng thời cũng đã hiểu về họ cũng như cách sống của họ.\r\n\r\nTrong trường hợp, bạn không tìm được ai như thế, bạn có thể đăng tìm người ở ghép trên các webbsite chuyên cung cấp thông tin phòng trọ như : Phongtot.vn hoặc diễn đàn mạng như “Dọn nhà cho đỡ chật”. Hoặc bạn cũng có thể dán tờ rơi để tìm người ở cùng nhé. Tuy nhiên bạn hết sức lưu ý trong việc chọn người ở ghép cùng kiểu này và cẩn thận với những tài sản giá trị của mình, khi mà chưa rõ về người bạn cùng phòng đó.\r\n\r\nCó nên thuê phòng ở chung với nhà chủ hay không?\r\n\r\nĐây là câu hỏi mà không ít người thắc mắc. Việc bạn ở chung với nhà chủ có những ưu điểm và hạn chế nhất định. Tuy nhiên, nếu bạn là sinh viên năm nhất và bạn là con gái thì nên ở cùng nhà chủ bạn nhé.\r\n\r\nViệc ở cùng nhà chủ giúp bạn đảm bảo an ninh tốt hơn, yên tĩnh hơn để bạn có thể tập trung học tập. Đồng thời, sự hạn chế trong giờ đóng cửa mỗi tối là cách để bạn trở về nhà sớm hơn và đảm bảo an toàn cho bản thân mình.\r\n\r\nTrên đây là một số lưu ý nhỏ dành cho sinh viên khi thuê phòng trọ. Hi vọng những thông tin này sẽ giúp bạn có thêm nhiều kinh nghiệm và hiểu biết để có thể tìm được phòng trọ như ý cho bản thân, tránh những cạm bẫy từ bên ngoài.', '2019-04-09 23:15:48'),
(11, 'admin', 'Vì sao chọn ngành \'hot\' vẫn thất nghiệp?', '\"Chọn ngành \'hot\' như Kinh tế, Tài chính – Ngân hàng, Thương mại có thể vẫn thất nghiệp, vì khối ngành này được nhiều người lựa chọn, dẫn đến cung lớn hơn cầu.\r\n\r\nTheo thống kê, khối ngành Kinh tế, Tài chính – Ngân hàng, Thương mại nhiều năm được ưa chuộng, điểm chuẩn luôn ở mức cao.\r\n\r\n\"Đổ xô\" chọn ngành hot\r\n\r\nNăm 2015, ngành Kinh tế thuộc Đại học Ngoại thương Hà Nội có điểm trúng tuyển 25,75 điểm khối A1 và D; 27,25 điểm khối A. Ngành này tại cơ sở TP HCM có mức điểm trúng tuyển khối A1, D1, D6 là 25,5.\r\n\r\nCũng trong năm 2015, điểm chuẩn ngành Tài chính – Ngân hàng của Đại học Kinh tế TP HCM là 21,75 điểm. Điểm trúng tuyển Đại học Ngoại thương cơ sở 2 TP HCM ngành Tài chính – Ngân hàng hai khối A và D đều 25 điểm, cơ sở 1 tại Hà Nội khối A và D lấy 24,75 điểm, khối A0 26,25 điểm.\r\n\r\nTuy nhiên, từ sau năm 2010 đến nay, truyền thông liên tục đưa những con số báo động về tình trạng thất nghiệp của sinh viên học ngành này. Kết quả khảo sát của Viện Nhân lực Ngân hàng - Tài chính cho thấy, trong hai năm 2012 và 2013, 30.000 - 32.000 sinh viên ngành Tài chính - Ngân hàng ra trường, nhưng chỉ khoảng một nửa số đó vào làm việc trong các ngân hàng.\r\n\r\nLỷ giải điều này, TS Phạm Mạnh Hà, chuyên gia tư vấn hướng nghiệp (Học viện Thanh thiếu niên Việt Nam) cho biết theo nghiên cứu gần đây, trong quá trình hội nhập, phát triển kinh tế, lĩnh vực Kinh tế - Tài chính – Ngân hàng, Thương mại vẫn hút nhân lực nhất. Dự báo cần 35% tổng nguồn nhân lực. Tuy nhiên, từ trước đến nay, khối ngành này vẫn được nhiều người lựa chọn nên dẫn đến sự đào thải nhân lực khắt khe.\r\n\r\nNhiều người đặt câu hỏi: Vì sao chọn ngành \"hot\" vẫn thất nghiệp? TS Hà cho rằng nếu nhà tuyển dụng cần nhân lực là 35% thì số người thi ngành này lên tới 75%.\r\nDù vậy, khối ngành Kinh tế, Tài chính – Ngân hàng, Thương mại không phải thiếu việc làm, mà chỉ thiếu những người có năng lực.\r\n\r\nÔng Hà cũng đưa ra nhận xét nếu như mùa tuyển sinh các năm trước, học sinh hỏi nhiều về các ngành \"hot\", thì năm nay các em băn khoăn nhiều đến vấn đề chọn nghề theo đam mê hay truyền thống gia đình.\r\n\r\nCần tạo nên sự khác biệt\r\n\r\nPGS.TS Bùi Đức Triệu, Trưởng phòng Đào tạo Đại học Kinh tế Quốc dân Hà Nội nhận định, có tới 70-80% sinh viên ra trường học chuyên ngành Kinh tế làm lẫn việc của nhau. Khác với ngành Kỹ thuật, sinh viên học Quản trị Kinh doanh có thể làm được Kế Toán và ngược lại, bởi họ có nền tảng kiến thức tương đương.\r\n\r\nVậy, để tạo sự khác biệt khi xin việc, sinh viên cần có khả năng tự hoàn thiện và cạnh tranh. Ví dụ, sinh viên Đại học Kinh tế Quốc dân Hà Nội khi ra trường đều phải có chứng chỉ Ngoại ngữ và Tin học. Nhà trường tạo điều kiện cho các em học thêm ngành và chuyên ngành mới ngay từ năm thứ hai. Ra trường, sinh viên sẽ được trang bị đủ kiến thức đáp ứng mảng kinh tế rộng lớn.\r\n\r\nChia sẻ về điều này, Hoàng Đình Quang, sinh viên từng đạt điểm số kỷ lục của Đại học Ngoại thương Hà Nội nói, hiện nay, có khá nhiều người ra trường làm trái ngành, nghề, phần lớn ở lĩnh vực kinh tế. Trong đó, một số trường hợp do chọn nhầm ngành nghề mình không yêu thích, không phù hợp. Số còn lại vì họ đã cụ thể hoá công việc mình làm dựa trên những kiến thức tổng hợp được học.\r\n\r\n“Các ngành kinh tế nói chung thường học khá nhiều kiến thức, từ marketing, quản trị, kinh tế vi mô, luật đến kỹ năng bán hàng, kỹ năng giao tiếp… Khi ra trường, tùy theo hoàn cảnh mà cá nhân có thể chọn một ngành cụ thể để theo đuổi. Đây không phải chọn nhầm nghề”, Hoàng Đình Quang nói.\r\n\r\nChàng sinh viên trường Ngoại thương cho rằng nếu không cố gắng và theo đuổi đến cùng, sự lựa chọn tốt nhất cũng sẽ biến thành sự lựa chọn tồi nhất.\r\n\r\nNhóm ngành mới xuất hiện\r\n\r\nTheo thông tin từ Trung tâm Dự báo Nhu cầu Nhân lực và Thông tin Thị trường Lao động TP HCM, nhu cầu tìm việc của tháng 2/2016 bậc đại học, trên đại học cao nhất ở nhóm ngành Kế toán - Kiểm toán, Tài chính – Tín dụng – Ngân hàng.\r\n\r\nCũng trong năm 2016, cộng đồng chung ASEAN hình thành cũng là lúc mở ra nhiều cơ hội nghề nghiệp hơn cho thị trường lao động trong nước. Theo xu thế đó, năm 2016 bắt đầu xuất hiện nhiều nhóm ngành mới trên cơ sở những nhóm ngành cũ và có sự kết hợp, lồng ghép các nhóm ngành với nhau.\r\n\r\nXu hướng kết hợp giữa các chuyên ngành hình thành những nhóm ngành nghề mới như: Quản trị Rủi ro, Quản lý Chất lượng Chuyên ngành Công nghiệp – Công nghệ Kỹ thuật và Y tế, Quản lý Hệ thống Thông tin, Kế hoạch và Dự báo Kinh tế – Nhân lực – Xã hội – Kinh doanh, Tư vấn Tài chính Cá nhân...\r\n\r\nTheo ông Trần Anh Tuấn, Phó giám đốc Trung tâm Dự báo Nhu cầu Nhân lực và Thông tin Thị trường Lao động TP HCM, những nhóm ngành trên đều khá mới mẻ và đòi hỏi nguồn nhân lực có trình độ cao. Do đó, ngoài các kiến thức chuyên ngành, bạn còn phải am tường kỹ năng ngoại ngữ, giao tiếp và đặc biệt phải có tác phong làm việc có kỷ luật và trách nhiệm.', '2019-04-09 23:15:56'),
(12, 'linhhp', 'Hơn 100 sinh viên bị dừng học vì chậm đóng học phí', 'Cầm 7 triệu đồng đóng học phí nhưng không được nhận, một sinh viên ĐH Tài chính Marketing TP HCM ấm ức khóc vì phải nghỉ học bốn tháng. Nhiều bạn khác lâm vào hoàn cảnh tương tự.\r\n\r\nNhiều trường cao đẳng, đại học tại TP HCM thắt chặt quy định thời gian đóng học phí khiến nhiều sinh viên đóng chậm, hoặc không cập nhật thông tin, phải dừng học tập trong học kỳ 2 năm học 2015-2016.\r\n\r\nMột số sinh viên bị dừng học đã về quê đợi kỳ sau học tiếp, số khác quyết định giấu bố mẹ ở lại TP làm thêm, đợi đăng ký học lại.\r\n\r\nTheo lời kể của một sinh viên ĐH Tài chính Marketing, tuần đầu tiên sau tết Nguyên Đán, bạn mang 7 triệu đồng đến trường xin đóng học phí chậm, vì tưởng trường gia hạn một tuần, nhưng không được chấp nhận.\r\n“Ngày 22/2, mình mang tiền lên trường đóng thì thầy cô không giải quyết. Chỉ những bạn làm đơn mới được đóng bổ sung”, một sinh viên cho biết.\r\n\r\nNhiều trường hợp phụ huynh đến tận trường xin được phép đóng tiền để con được học tiếp vì nghỉ 4 tháng sẽ rất ảnh hưởng tâm lý, cũng như thời gian tốt nghiệp của sinh viên. Tuy nhiên, ĐH Tài chính Marketing không chấp nhận.\r\n\r\nTheo thông tin từ một giảng viên trong trường, học kỳ này, hơn 100 sinh viên phải dừng học vì đóng học phí chậm hoặc không đóng học phí.\r\n\r\nThạc sĩ Hứa Minh Tuấn, Phó hiệu trưởng ĐH Tài chính Marketing TP HCM cho biết: Ngày 21/12/2015, nhà trường thông báo thời hạn đóng học phí cho sinh viên bậc đại học hệ chính quy từ 24/12/2015 đến 29/1/2016. Sau đó, trường dành thêm một tuần sau tết (từ ngày 18/2 đến 25/2) cho sinh viên có nộp đơn xin đóng trễ đến đóng học phí bổ sung. Đối với các sinh viên không làm đơn trước đó, nhà trường không giải quyết.\r\n\r\n“Các bạn không đóng học phí xem như không đăng ký các môn học, hệ thống sẽ hủy thời khóa biểu và phải đợi học kỳ tiếp theo đăng ký học lại. Nhà trường đã có thông báo và làm đúng quy định”, ông Tuấn khẳng định về chuyện cho sinh viên dừng học một kỳ vì đóng học phí chậm.', '2019-04-09 23:16:00'),
(13, 'hoangnv', 'Nhà báo bị đánh, sinh viên báo chí có lung lay?', 'Việc nhà báo bị đánh có làm lung lay tinh thần các sinh viên báo chí sắp ra trường?\r\nPhạm Kiều Hương Ly, sinh viên Học viện Báo chí - Tuyên truyền:\r\n\r\nNgay khi chọn học tôi đã xác định nghề nhà báo khá nguy hiểm. Tôi rất ngưỡng mộ những người dấn thân vì nghề nghiệp, nhưng khi đọc những tin tức như thế này tôi cũng thấy hoang mang.\r\n\r\nGia đình tôi cũng sợ khi tôi theo nghề này, thậm chí còn bảo là có khi không cho làm nữa. Nhưng nếu đam mê lớn hơn tôi sẽ vẫn theo đuổi nghề báo. Thầy cô trong trường cũng đã đề cập tới vấn đề này và cũng nói tới các biện pháp phòng tránh, nhất là với phái nữ, như học võ, mang theo những trang bị tự vệ cá nhân.\r\n\r\nNguyễn Thị Hà, sinh viên K57 Khoa Báo chí, ĐH Khoa học xã hội và Nhân văn, ĐHQG Hà Nội:\r\n\r\nTôi cảm thấy rất bất bình khi đọc những tin tức về nhà báo bị hành hung. Tôi mong pháp luật sẽ có những biện pháp xử lý nghiêm đối với hành vi bạo hành nhà báo. Nói đọc những tin như vậy không sợ thì không phải, mình làm nghề nên cũng cảm thấy sợ. Nhưng bảo là sợ mà thay đổi nghề mình đã chọn thì không. Tôi sẽ vẫn tiếp tục theo đuổi nghề nghiệp này.\r\n\r\nNguyễn Đoàn Đình Bổng, sinh viên K32 Học viện Báo chí - Tuyên truyền:\r\n\r\nHiện tượng nhà báo hị hành hung không mới ở cả thế giới và Việt Nam, thậm chí đã có không ít nhà báo bị sát hại. Bản thân đang theo con đường viết báo nên tôi cũng có lo lắng. Nhưng nghề nào cũng có nguy hiểm nhất định, tôi sẽ cố gắng để tránh nguy hiểm tới bản thân và liên lụy tới gia đình.\r\n\r\nTrong quá trình học, khi đi viết bài tôi cũng từng bị đe dọa, dù mới chỉ ở mức độ nhẹ. Một lần tôi đi viết về ô nhiễm sông Đáy ở “xóm thùng phi”. Vừa tới đầu xóm tôi đã bị hai thanh niên sấn tới dọa dẫm. Lúc đấy cũng khá hoang mang vì chưa chuẩn bị cho tình huống như vậy.\r\n\r\nMột lần khác tôi viết về hiện tượng bảo vệ ở một bãi xe giữ chìa của những người quên rút khóa và bắt phải chuộc. Tôi thấy đây là việc vô lý nên đến tìm hiểu. Khi tôi chụp ảnh cây cột treo chìa khóa, một bảo vệ lao ra túm lấy ống kính và đe dọa. Sau khi giằng co máy ảnh của tôi bị rơi và hỏng. Nhưng cũng may có một số người đến can ngăn...\r\n\r\nVấn đề nhà báo bị hành hung này được nhắc đến rất nhiều trong các môn chuyên ngành, nghiệp vụ. Các thầy khuyên rằng lúc mới đi làm chưa nên theo các đề tài quá gai góc, nhạy cảm. Khi có kinh nghiệm rồi sẽ làm tới các vụ phức tạp.\r\n\r\nNguyễn Thị Hiền, sinh viên K32 Học viện Báo chí - Tuyên truyền:\r\n\r\nĐọc những tin này tôi thấy bình thường ở chỗ nó không tác động gì tới tâm lý hay quan điểm về nghề nghiệp của tôi. Trong quá trình đi viết bài, tôi đã bị dọa rồi. Lần đó tôi đi làm tin về rác thải ở khu công nghiệp bên Bắc Ninh, khi đang chụp ảnh thì có vài người ra dọa nếu không đi sẽ đánh.\r\n\r\nCó một lần trường tôi mời khách về nói chuyện, diễn giả có nói một câu là “khó quá thì bỏ qua”. Tôi thích làm điều tra. Sau những việc như thế này, sau này ra làm nghề tôi sẽ phải cẩn thận hơn nhiều.', '2019-04-09 23:16:04'),
(14, 'nguyendv99', 'Sinh viên Mỹ chọn ngành học thế nào?', 'Sinh viên Mỹ chọn ngành vào cuối năm thứ nhất hoặc năm hai. Họ có thể chuyển ngành trong quá trình học hoặc học thêm chuyên ngành khác.\r\n\r\nChọn ngành là quyết định quan trọng, khó khăn đối với phần lớn sinh viên, vì nó ảnh hưởng nghề nghiệp, thu nhập tương lai, cũng như mức độ thành công của mỗi người.\r\n\r\nTổng số chương trình học thuật của các trường đại học, cao đẳng ở Mỹ lên đến gần 1.500. Mỗi 10 năm, con số này lại tăng thêm 355 nhằm đáp ứng nhu cầu thực tế của xã hội.\r\nKhông bắt buộc chọn chuyên ngành khi ứng tuyển\r\n\r\nSố lượng ngành học lớn giúp sinh viên Mỹ có nhiều sự lựa chọn hơn, nhưng cũng khiến họ khó đưa ra quyết định. Quy định về việc chọn ngành ở Mỹ khá khác với Việt Nam, tạo thuận lợi nhất cho người học.\r\n\r\nTrung Dũng, du học sinh Việt Nam tại Đại học California, cho biết hầu hết các trường tuyển sinh chủ yếu dựa trên điểm trung bình học tập (GPA), điểm bài thi đánh giá năng lực (SAT hoặc ACT) và điểm TOEFL, IELTS đối với sinh viên quốc tế.\r\n\r\nViệc chọn chuyên ngành không bắt buộc. Một số trường yêu cầu thí sinh liệt kê chuyên ngành dự định theo học, nhưng ứng viên hoàn toàn có thể đánh dấu “undecided” hoặc “undeclared” nếu họ chưa chắc chắn.\r\n\r\nCũng theo nam sinh này, sinh viên Mỹ thường chọn chuyên ngành vào cuối năm học thứ nhất hoặc thứ hai. Tuy nhiên, theo bà Libby Elizabeth Rafferty, cố vấn tuyển sinh quốc tế Đại học San Jose, sinh viên nước ngoài bắt buộc phải nêu rõ chuyên ngành họ ứng tuyển khi nộp đơn nhưng được phép chuyển chuyên ngành trong quá trình học.\r\n\r\nHai năm đầu, sinh viên tham gia các khóa học họ hứng thú, dành thời gian xác định đam mê, cũng như năng lực của bản thân trước khi quyết định.\r\n\r\nNhững bạn đã xác định đam mê vẫn nên dành hai năm đầu tiên để khám phá thêm bản thân bằng cách học những lớp học mới hơn.\r\n\r\n“Ở Mỹ, các bạn có thể chọn ngành thoải mái trong hai năm đầu tiên, miễn là phù hợp thời gian biểu và năng lực. Trong một học kỳ, các khóa học của một sinh viên có thể trải rộng khắp những ngành không liên quan nhau. Họ có thể chọn 5 lớp bao gồm Vẽ, Lịch sử, Kinh tế, Kỹ năng thuyết trình và Khoa học Máy tính”, Ngọc Sơn, sinh viên Đại học Earlham, cho biết.\r\n\r\nBà Laura Shier, Giám đốc Nghiên cứu tiếng Anh học thuật tại Đại học Lewis & Clark, khuyến khích sinh viên chọn các lớp ở nhiều ngành khác nhau để phát triển bản thân toàn diện, đồng thời có thêm nhiều sự lựa chọn khi quyết định chuyên ngành.\r\n\r\nDễ dàng chuyển chuyên ngành học\r\n\r\nTiến sĩ Alfredo R. Varela, Giám đốc Chương trình Quốc tế tại Đại học St Mary, cho hay sinh viên có thể chuyển ngành trong quá trình học, thậm chí chuyển từ một ngành xã hội sang ngành thuộc khối kinh doanh.\r\n\r\nThủ tục chuyển ngành không phức tạp nhưng đối với những người chưa lựa chọn các khóa học cần thiết cho chuyên ngành mới, họ sẽ phải mất thêm từ một đến hai năm để hoàn thành chương trình và nhận bằng.\r\n\r\nMột điểm đặc biệt khác ở các trường đại học Mỹ là sinh viên có thể theo học hai chuyên ngành chính hoặc nhiều chuyên ngành phụ bên cạnh chuyên ngành chính.\r\n\r\nTrường hợp có thêm ngành phụ khá phổ biến, số lượng sinh viên tốt nghiệp với hai chuyên ngành chính trở lên cũng không hiếm. Nhưng nếu vậy, sinh viên sẽ phải trải qua quá trình học tập vất vả.\r\n\r\nSinh viên Mỹ thường chọn ngành căn cứ 3 yếu tố chính là đam mê, năng lực và triển vọng việc làm, thu nhập.\r\n\r\nTheo các nhà tuyển sinh đại học Mỹ, yếu tố được xem xét nhiều nhất là đam mê. Tuy nhiên, tiến sĩ Varela khuyên sinh viên nên cân bằng giữa sở thích và năng lực.\r\n\r\nHọ sẽ được phụ huynh, giáo viên trường trung học, cũng như đại học tư vấn để đưa ra quyết định ngành học.\r\n\r\nNgọc Sơn cho hay: “Ở trường mình, mỗi sinh viên sẽ có một giáo sư hướng dẫn về định hướng chương trình học. Đầu mỗi học kỳ, giáo sư có một buổi nói chuyện với sinh viên về lịch học kỳ này, qua đó thống nhất chương trình học và nhắc nhở sinh viên về các khóa học bắt buộc để đạt yêu cầu tốt nghiệp”.\r\n\r\nSơn cho biết thêm một số trường còn có trung tâm hướng nghiệp nhằm hỗ trợ sinh viên hoàn thiện CV, giới thiệu cơ hội thực tập cũng như việc làm. Các thông tin này thường được lấy qua hệ thống cựu học sinh và các tổ chức có liên kết với trường nên chủ yếu dành riêng cho học sinh của trường đó.\r\n\r\nCũng theo Sơn, sinh viên Việt Nam ở đây chọn ngành khá đa dạng. Thông thường, những bạn theo những ngành liên quan kỹ thuật sẽ xác định chuyên ngành trước khi ứng tuyển vào trường. Trong khi đó, du học sinh thuộc khối ngành xã hội và kinh tế thường đổi ngành nhiều lần hoặc học thêm ngành phụ.\r\n\r\nGần đây, Chính phủ Mỹ quyết định tăng thời gian ở lại nước này cho người tốt nghiệp khối ngành Khoa học, Công nghệ, Kỹ thuật và Toán lên tới 3 năm. Chính sách mới có thể ảnh hưởng lựa chọn ngành nghề của du học sinh.\r\n\r\nNhiều bạn có thể sẽ chuyển ngành hoặc học thêm ngành chính liên quan 4 khối ngành này để có cơ hội ở lại lâu hơn. Các khối ngành khác, sau khi tốt nghiệp, sẽ chỉ được ở lại 12 tháng.', '2019-04-09 23:16:10'),
(15, 'ndt0123', 'Sinh viên hào hứng tham gia ngày hội Định hướng nghề nghiệp', 'Cuối tuần qua, gần 1.000 sinh viên TP HCM đã có mặt trong sự kiện định hướng nghề nghiệp Career Shining Day do Suntory PepsiCo Việt Nam tổ chức.\r\n\r\nTại ngày hội Định hướng nghề nghiệp, bạn trẻ được tìm hiểu về văn hóa, môi trường làm việc năng động tại Suntory PepsiCo Việt Nam - một trong những công ty hàng đầu trong lĩnh vực nước giải khát và có tốc độ tăng trưởng lớn trong ngành hàng tiêu dùng nhanh. Bên cạnh đó, sinh viên cũng được khám phá chức năng, hoạt động của từng phòng ban trong công ty như Nhân sự, Sản xuất, Cung ứng, Kinh doanh, Tài chính, Marketing.\r\nCareer Shining Day là sự kiện mở đầu để khởi động chương trình Quản trị viên tập sự năm 2016 được Suntory PepsiCo Việt Nam tổ chức liên tục từ năm 2006 đến nay. Được truyền lửa nhiệt huyết và sẻ chia kinh nghiệm từ những người đi trước hiện nắm giữ cương vị giám đốc/trưởng phòng tại Suntory PepsiCo Việt Nam, chương trình là nơi giao lưu, học hỏi giúp sinh viên định hướng lộ trình nghề nghiệp và khám phá tiềm năng của bản thân\r\n“Tham dự chương trình, mình có cơ hội tìm hiểu sâu hơn về sở thích, tính cách và năng lực của bản thân, từ đó dần mường tượng ra công việc tương lai. Sau ngày hôm nay, mình sẽ chú ý nâng cao các kỹ năng cần thiết trước khi bước vào môi trường làm việc thực tế”, Trần Minh Phương, sinh viên Đại học Ngoại thương chia sẻ.\r\nDự kiến, ngày 13/3, ngày hội Định hướng nghề nghiệp tiếp tục được tổ chức tại khách sạn JW Marriott, Hà Nội với sự tham gia của khoảng 700 sinh viên. Nếu quan tâm đến vấn đề hướng nghiệp, bạn có thể truy cập website của ban tổ chức để tìm hiểu thêm thông tin và nộp hồ sơ tham dự chương trình Quản trị viên tập sự. Thời gian nhận hồ sơ kéo dài từ nay đến hết ngày 31/3.\r\n\r\n', '2019-04-09 23:16:19'),
(16, 'admin', 'Sinh viên nữ phải đẹp… mới được thuê nhà\r\n', 'Để tìm được một phòng ưng ý thuê trọ để sống và học tập tại Hà Nội hiện nay là một điều không hề đơn giản. Có phòng trọ giá rẻ nhưng điện nước, khu vệ sinh lại không tốt. Còn khu nhà tốt thì chắc chắn giá lại không hề rẻ, không phù hợp với đời sống sinh viên. Chị Nguyễn Thị Hằng, sinh viên năm thứ nhất Học viện Ngân hàng cho biết chị đã gặp một tình huống dở khóc dở cười. Chị Hằng tìm được thông tin cho thuê phòng trọ ở khu vực Khương Thượng, Đống Đa, Hà Nội ở trên mạng Internet. Thấy mức giá hợp lý, hình ảnh của phòng trọ cũng sạch sẽ nên khấp khởi mừng. Nhưng đọc kỹ mới thấy ở dòng dưới cùng của dòng tin rao vặt đó có ghi thêm: Chỉ cho sinh viên nữ xinh đẹp thuê. Tưởng chủ nhà chỉ đùa, hoặc có lý do nào khác, chị Hằng vẫn tìm đến địa chỉ trên để tìm thuê nhà. Khi đến nơi, chị Hằng nhận được câu trả lời của chủ nhà trọ: Em đã đọc thông tin cho thuê nhà chưa. Cứ thế mà làm em ạ! Hóa ra yêu cầu của chủ nhà là thật chứ chẳng phải đùa. Chị Hằng tâm sự: Mình cũng biết tâm lý của nhà chủ là muốn những sinh viên nữ thuê vì họ… lành hơn và dễ quản lý hơn. Và mình cũng nghĩ từ “xinh đẹp” trong tin rao vặt đó ám chỉ việc sạch sẽ ngăn nắp. Nhưng không ngờ việc tưởng đùa mà hóa thật. \r\n\r\nCòn với bạn Thành Nam, sinh viên trường Đại học Thủy Lợi, thì sau một thời gian tìm nhà trọ, cuối cùng Nam cũng tìm được một khu nhà trọ sạch sẽ, giá cả hợp lý, và nằm trong khu dân trí cao. Nhưng khi đến nơi, Nam lại nhận được cái lắc đầu của chủ nhà trọ vì lý do… không phải giới tính nữ. Khu nhà trọ đó chỉ cho nữ thuê. Nam đành lắc đầu ngao ngán đi về. ', '2019-04-09 23:16:23'),
(17, 'admin', 'Chuyện “chủ nhà”…\r\n\r\n', '2 cô sinh viên năm thứ nhất Học viện Ngoại giao, vừa ra nhập học, thuê một phòng giá một triệu đồng ở khu Yên Hòa, quận Cầu Giấy, Hà Nội, phòng rộng khoảng 15m2, vệ sinh chung, ở được vài hôm vì một số điều kiện không tốt nên Hương và Thúy quyết định tìm phòng khác. Khi chủ nhà biết chuyện, ngày nào cũng sang giục hai bạn chuyển đi để người khác vào xem phòng, gần cuối tháng, hai bạn về quê lấy tiền, buổi tối bác chủ nhà gọi điện cho Hương yêu cầu dọn đi ngay trong tối đó, nếu không thì sẽ phá khóa và vứt hết đồ đạc ra ngoài.\r\n\r\nChị Hoa, sinh viên năm cuối ĐH Sư Phạm Hà Nội cho biết, chị đi làm thêm nên 22h mới về, có hôm đang tắm hết nước, chị với lấy điện thoại gọi cho chủ nhà yêu cầu mở nước nhưng chỉ nhận được câu trả lời thiếu trách nhiệm: “Mai còn phải đi làm sớm, bây giờ mở không ai đợi được, sáng mai mở sớm”.\r\n\r\nVì muốn tìm chỗ có an ninh đảm bảo, Quỳnh, sinh viên ĐH Ngoại Ngữ đã thuê phòng ở chung với chủ nhà. Ngay phòng khách có bảng nội quy ghi rất rõ ràng giờ khóa cửa buổi tối là 22h30’. Có một hôm vì bận việc nên Quỳnh không về kịp, 11h kém15 về đến nơi thì cổng đã khóa. Thấy tầng một vẫn sáng đèn, Quỳnh đứng ngoài gọi liên tục nhưng đến tận gần 0h chủ nhà mới chịu ra mở cổng.\r\n\r\nThái độ thiếu lịch sự, đôi khi là quá đáng của chủ nhà trọ khiến cho nhiều sinh viên hoảng hốt. Những hành động tự ý xông vào phòng sinh viên kiểm tra, dùng mánh khóe ăn bớt tiền đặt cọc khi sinh viên chuyển đi, thu các khoản phí vô lý….đang khiến nhiều bạn sinh viên dở khóc, dở cười.\r\n', '2019-04-09 23:16:28');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `dia_chi_phong_tro`
--

CREATE TABLE `dia_chi_phong_tro` (
  `IDPhongTro` int(11) NOT NULL,
  `DiaChi` tinytext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `XaPhuong` varchar(40) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `QuanHuyen` varchar(40) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `TenChuTro` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `Sdt` varchar(11) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `dia_chi_phong_tro`
--

INSERT INTO `dia_chi_phong_tro` (`IDPhongTro`, `DiaChi`, `XaPhuong`, `QuanHuyen`, `TenChuTro`, `Sdt`) VALUES
(1, 'B15 - Kim Liên, Lương Định Của (Gần Bách Kinh Xây, Ngân hàng, ĐH Y)', 'Kim Liên', 'Đống Đa', 'Chi Trang', '0336900066'),
(2, 'ngõ 160 Tây Tựu, phường Tây Tựu, Tây Tựu, Từ Liêm, Hà Nội', 'Tây Tựu', 'Bắc Từ Liêm', 'Ken Jay', '0971369515'),
(3, '304 Tựu Liệt, Tam Hiệp, Thanh Trì, Hà Nội, Tựu Liệt, Thanh Trì, Hà Nội', 'Tam Hiệp', 'Thanh Trì', 'Vinh Bảo', '0974904012'),
(4, 'số 12 ngõ 271 yên hòa, Yên Hòa', 'Yên Hòa', 'Cầu Giấy', 'Linh Nguyễn Văn', '0337021163'),
(5, 'Phạm Văn Đồng, Cầu Giấy, Hà Nội, Phạm Văn Đồng, Cầu Giấy, Hà Nội', 'Dịch Vọng', 'Cầu Giấy', 'Huong Dang Thu', '0835152108'),
(6, 'Ngõ 189 Hoàng Hoa Thám, Cống Vị, Ba Đình, Hà Nội', 'Cống Vị', 'Ba Vị', 'Homes Hồ Tây', '0972155533'),
(7, '- Địa chỉ: Số 30 ngõ 394 Phạm Văn Đồng, Cầu Giấy.', 'Dịch Vọng', 'Cầu Giấy', 'Huong Duong Thu', '0835152108'),
(8, 'nhà 7 ngách 11 ngõ 39 Hồ Tùng Mậu Cầu Giấy, Hà Nội', 'Mai Dịch', 'Cầu Giấy', 'Phụng Trần', '0394879549'),
(9, 'chung cư 96A Định Công', 'ĐỊnh Công', 'Hoàng Mai', 'Phòng Kinh Doanh BĐS ', '0901498666'),
(10, ' so 8 ngo hoa binh 2 minh khai, Minh Khai, Hai Bà Trưng, Hà Nội', 'Minh Khai', 'Hai Bà Trưng', 'Duc Phung', '0984413519'),
(11, '61 ngõ 54, Tây Tựu, Bắc Từ Liêm, Hà Nội, Tây Tựu, Từ Liêm, Hà Nội', 'Tây Tựu', 'Bắc Từ Liêm', 'Ken Jay', '0971369515'),
(12, ' 304 Tựu Liệt, Tựu Liệt, Thanh Trì, Hà Nội', 'Tựu Liệt', 'Thanh Trì', 'Vinh Bảo', '0974904012'),
(13, 'ngõ 21 Lê Văn Lương - Thanh Xuân, Lê Văn Lương, Thanh Xuân, Hà ', 'Nhân Chính', 'Thanh Xuâm', 'Phòng Kinh Doanh BĐS ', '0901498666'),
(14, 'Nhà 8 tầng ngõ 19 thôn Hậu Dưỡng, Kim Chung, Đông Anh, Hà Nội', 'Kim Chung', 'Đông Anh', 'Ken Jay', '0971369515'),
(15, ' 75 ngõ 120 trần cung, Trần Cung, Cầu Giấy, Hà Nội', 'Dịch Vọng', 'Cầu Giấy', 'Duong Tung', '0836314397'),
(16, 'số 25 ngõ 342 Hồ Tùng Mậu (p. Phú Diễn-Q. Bắc Từ Liêm)', 'Phú Diễn', 'Bắc Từ Liêm', 'Bùi Quang Xuân', '0989996984'),
(17, 'Đường k2 cũ', 'Cầu Diễn', 'Nam Từ Liêm', 'Bà Liên', '0968216459'),
(18, ' ngõ 45 chùa bộc, Chùa Bộc,Trung Liệt, Đống Đa, Hà Nội', 'Trung Liệt', 'Đống Đa', 'Đào Thị Quỳnh Anh', '0889274543'),
(19, 'Ngõ 565 Nguyễn Trãi Hà Nội, Nguyễn Trãi, Thanh Xuân, Hà Nội', 'Thanh Xuân Nam', 'Thanh Xuân', 'DCapNTN', '0936399362');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `gia_phong_tro`
--

CREATE TABLE `gia_phong_tro` (
  `IDPhongTro` int(11) NOT NULL,
  `user_name` varchar(20) CHARACTER SET latin1 NOT NULL DEFAULT 'admin',
  `TieuDe` tinytext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `KieuPhong` varchar(40) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `KieuVeSinh` varchar(40) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `GiaChoThue` int(11) NOT NULL,
  `DienTich` double NOT NULL,
  `GiaDien` varchar(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `GiaNuoc` varchar(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `DoiTuong` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `TienIch` tinytext CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `MoTa` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `ThoiGianDang` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `gia_phong_tro`
--

INSERT INTO `gia_phong_tro` (`IDPhongTro`, `user_name`, `TieuDe`, `KieuPhong`, `KieuVeSinh`, `GiaChoThue`, `DienTich`, `GiaDien`, `GiaNuoc`, `DoiTuong`, `TienIch`, `MoTa`, `ThoiGianDang`) VALUES
(1, 'nguyendv99', 'Cho thuê 2 phòng giá 2tr2 và 2tr3 ở tập thể B15 Lương Định Của (Gần Bách Kinh Xây, Ngân hàng, ĐH Y)', 'Phòng trọ', 'Không khép kín', 2200000, 15, '3k/số ', '50k/người', 'Sinh viên', 'Chỗ để xe , Sân phơi , Internet , Bình nóng lạnh , Máy giặt', 'Có 2 phòng cho thuê ở tập thể B15 - Kim Liên, Lương Định Của (Gần Bách Kinh Xây, Ngân hàng, ĐH Y)\r\n+ 2-3 người ở/phòng\r\n+ diện tích 13m2 và 15m2, giá là 2tr2 và 2tr3.\r\n+ Free Wifi\r\n+ Điện 3k/số\r\n+ Nước 50k/người\r\n(Có máy giặt - thêm 50k/người/tháng)\r\n- Có giường, bàn\r\n- 2 phòng chung 1 vệ sinh\r\n- Có khu vực nấu ăn\r\n- Có khu vực phơi đồ\r\n- Có chỗ để xe\r\n- Giờ giấc tự do', '2019-04-09 22:58:41'),
(2, 'ndt0123', 'Phòng trọ khu vực Nhổn - Tây Tựu', 'Phòng trọ', 'Khép kín', 1450000, 25, '2k3/số', '70k/người', 'Tất cả', 'Chỗ để xe , Sân phơi , Thang máy , Internet , Bình nóng lạnh', 'Bạn muốn tìm phòng trọ phù hợp với người đi làm, sinh viên đi học\r\n⛔⛔⛔ Đặc biệt điện 2k3/số. Tất cả sinh hoạt đều khép kín\r\n⛔ Giờ giấc thoải mái\r\n⛔ Không chung chủ, an ninh tốt\r\n⛔ Giá phòng vừa ví lại có nóng lạnh rất thích hợp thời tiết se lạnh như hiện nay\r\n⛔ Có thể ở 2- 3 người không lo về giá\r\n⛔⛔⛔ Đặc biệt điện 2k3/số. Tất cả sinh hoạt đều khép kín', '2019-04-09 22:58:56'),
(3, 'tam0123', 'cho thuê phòng khép kín không chung chủ gần bến xe nước Ngầm', 'Phòng trọ', 'Khép kín', 1700000, 20, 'Nhà nước quy định', 'Nhà nước quy định', 'Tất cả', 'Chỗ để xe , Sân phơi , Internet , Điều hòa , Bình nóng lạnh , Máy giặt', 'Chính chủ cho thuê từng phòng trong chung cư mini tại ngõ 304 Tựu Liệt ( gần viện K2 ) \r\nCó thể đi lối đường Giải Phóng - Ngọc Hồi vào hoặc có thể đi lối Linh Đàm vào ( cách bán đảo Linh Đàm 1.5km \r\nRất gần chợ nên mọi sinh hoạt khá tiện lợi. Ngõ rộng rãi ô tô đỗ cửa.\r\nRất thuận tiện cho các bạn học tập và làm việc ở quanh khu vực giải phóng, Linh Đàm....\r\nNhà mới, đẹp long lanh.\r\nPhòng diện tích 20m2.\r\nTất cả các phòng đều khép kín. \r\nPhòng nào cũng có cửa sổ cực thoáng.\r\nTrang bị nội thất gồm: Nóng lạnh, giường, quạt trần, rèm cửa sổ.\r\nChỗ để xe rất rộng rãi.\r\nĐi lại tự do thoải mái. Mỗi người một chìa khóa cổng ra khóa vào mở. Có camera giám sát an ninh.\r\nGiá phòng rất rẻ chỉ: 1.7tr/tháng ( phòng bao gồm nóng lạnh, giường, quạt trần, rèm cửa sổ )\r\nTrang bị thêm điều hòa thì 2tr/tháng.\r\nĐiện: 3.5k/số công tơ riêng từng phòng\r\nNước sạch: 80k/người/tháng\r\nInternet cáp quang: 80k/phòng/tháng ( wifi phủ sóng từng phòng )\r\nPhương thức thanh toán: Đặt cọc 1 tháng và thanh toán tiền nhà 1 tháng/lần.\r\nAi có nhu cầu vui lòng liên hệ: \r\nA.Vinh: 0974.904.012 \r\n( Mình sinh năm 82 cho tiện xưng hô )\r\nNhà chính chủ cho thuê nên chỉ làm việc với những ai có nhu cầu thuê thực. Miễn mọi hình thức trung gian môi giới.', '2019-04-09 22:59:10'),
(4, 'thangnm', 'Cho thuê căn hộ KHÔNG CHUNG CHỦ tại số 12 ngõ 271 Yên Hòa- Trung Kính( ngay Lottle Trung Kính). Giá chỉ từ 2.8tr. Ảnh thật 100%', 'Phòng trọ', 'Khép kín', 2800000, 50, 'Nhà nước quy định', '100k/số', 'Tất cả', 'Chỗ để xe , Sân phơi , Internet , Điều hòa , Bình nóng lạnh , Máy giặt ', 'Cho thuê căn hộ KHÔNG CHUNG CHỦ tại số 12 ngõ 271 Yên Hòa-Trung Kính( ngay Lottle Trung Kính). Giá chỉ từ 2.8tr. Ảnh thật 100%\r\nƯu điểm : \r\n+ không chung chủ- yên tĩnh\r\n+ Cách phố 20m có đầy đủ siêu thị, hàng ăn, các tiện ích\r\n+Ngõ Cực Sạch và An ninh\r\n………………………………………………\r\n+ Diện tích  25m-50m thiết kế CỰC ĐẸP\r\n+ sofa SANG TRỌNG\r\n+ Giường cực Lớn 2mx2,2m bao gồmcả Đệm, Ga, Gối\r\n+ Tủ quần áo cỡ lớn D 2,5m R 0,9mC 3,5m\r\n+ Cây treo đồ tiện lợi\r\n+ Bàn ăn 6 ghế màu trắng\r\n+ Đệm Văng dài 4m tiẹn nghỉ ngơi\r\n+ Tủ bếp cỡ lớn.\r\n+ Sàn Gỗ.\r\n+ Bếp Ga,bình ga + bếp từ+ đồ làmbếp\r\n+ Húi mùi \r\n+ Điều hoà inventer 12000btu haichiều\r\n+ Kệ tivi \r\n+ Tủ nhỏ để sách\r\n+ Rèm gỗ\r\n+ Đồng hồ treo tường\r\n+ Đèn chùm lung linh\r\n+ Trần thạch cao, đèn chiếu sángâm trần\r\n+ bình nóng lạnh 30l ( đặc biệtcó trang bị Thái Dương Năng)\r\n+ vệ sinh khép kín\r\n+ Tủ đựng giày dép\r\n………………………………………………\r\nGiá chỉ từ 2.8tr ( tùy căn)\r\nLiên hệ 033.702.1163\r\nChủ nhà không phải môi giới', '2019-04-09 22:59:19'),
(5, 'admin', 'Phòng ĐẸP, MỚI XÂY Phạm Văn Đồng, Cầu Giấy, Free Wifi', 'Phòng trọ', 'Khép kín', 3000000, 25, 'Nhà nước quy định', 'Nhà nước quy định', 'Sinh viên', 'Chỗ để xe , Sân phơi , Internet , Điều hòa , Bình nóng lạnh , Máy giặt', '- Chính chủ cho thuêphòng Phạm Văn Đồng, Cầu Giấy.\r\n- Có 2 loại phòng:25m2 – 30m2. Cam kết mới xây, đẹp 100%.\r\n- Phòng đầy đủ ĐỒ, đầyđủ cửa sổ.\r\n- Không chung chủ.\r\n- Giá thuê: 3tr (25m2)– 3.5 tr(30m2).\r\n- Liên hệ chính chủ:Hương 0835 152 108.\r\n ', '2019-04-09 22:59:38'),
(6, 'hoangnv', 'Cho thuê phòng Hoàng Hoa Thám - Đối Cấn', 'Phòng trọ', 'Không khép kín', 3500000, 25, 'Nhà nước quy định', '50k/người', 'Tất cả', 'Chỗ để xe , Sân phơi , Internet , Điều hòa , Bình nóng lạnh , Máy giặt', 'Ngõ rộng 2 ô tô tránh nhau, Nhà gần Lotte Mall, Kim Mã, 10 phút ra hồ Gươm, 5 phút ra Hồ Tây..... khu vực an ninh tốt.\r\nĐịa chỉ: nhà 141 ngõ 189 Hoàng Hoa Thám\r\n- Phòng rộng 25m2, 2 phòng chung 1 phòng bếp rộng.\r\n- Nhà vệ sinh đẹp có nóng lạnh.\r\n- Phòng đủ Giường, tủ, điều hòa, bàn làm việc...\r\n- Giá điện 3500k/ số, nước 50k/ người, internet 100k/ tháng.', '2019-04-09 23:00:03'),
(7, 'chinh', 'Cho thuê phòng SIÊU ĐẸP, MỚI 100% Phạm Văn Đồng', 'Phòng trọ', 'Khép kín', 3000000, 25, '', '', 'Gia đình', 'Chỗ để xe , Sân phơi , Internet , Điều hòa , Bình nóng lạnh , Máy giặt , Truyền hình cáp', '- Địa chỉ: Số 30 ngõ 394 Phạm Văn Đồng, Cầu Giấy.\r\n- Vị trí: Gần Bộ Công an, Cao đẳng Du lịch, Đại họcĐiện lực,, Đại học Tài chính, Đại học Sư phạm.\r\n- Nhà gồm 5 tầng, mỗi tầng 2 phòng, diện tích mỗiphòng: 25 – 30m2, vệ sinh giữa.\r\n- Nhà mới 100%, rất đẹp. Tất cả các phòng đều có cửasổ thoáng mát.\r\n- Phòng được trang bị đầy đủ: giường, tủ, điều hòa,nóng lạnh, máy giặt, bếp ăn tiện nghi, camera…\r\n- Để xe free tầng 1. Giờ giấc thoải mái, không chungchủ.\r\n- Dịch vụ:\r\n+ Điện: 3,5k/số (tính điện mỗi phòng, riêng điệnchung: nóng lạnh, máy giặt free).\r\n+ Nước: 100k/ người.\r\n+ Mạng: 50k/ phòng.\r\n- Giá thuê: 3tr – 3.5tr/ phòng (đóng 1 tháng cọc 1tháng)\r\n- Bạn nào quan tâm liên hệ: Ms Hương 0835 152 108(mình khá bận nên hạn chế về thời gian inbox, khuyến khích các bạn quan tâm qua\r\nxem để cảm nhận đầy đủ về nhà). LIÊN HỆ TRƯỚC ĐỂ QUA MỞ CỬA.', '2019-04-09 23:00:25'),
(8, 'linhhp', 'TÌm Nam ở ghép', 'Tìm người ở ghép', 'Khép kín', 2700000, 30, '3500/số', '150 nghìn/người', 'Sinh viên', 'Chỗ để xe , Sân phơi , Internet , Điều hòa , Bình nóng lạnh , Truyền hình cáp', '- Tìm Nam ở ghép tại nhà 7 ngách 11 ngõ 39 Hồ TÙng Mậu Cầu GIấy, Hà Nội., gần các trường ĐH như thương mại, QUốc Gia, DU lịch, SƯ Phạm, Múa,...- Hiện tại mình đang có 2 người cần tìm thêm 1 người để chia sẻ tiền phòng, Ưu tiên các bạn còn đang là sinh viên.\r\n+ Tiền phòng : 2tr7\r\n+ Điện: 3.000d/1so\r\n+ Nước : 150k/1 người\r\n+ Mạng : 50k/1 người\r\n+ Phòng rộng tầm 30m2\r\n+ Có chỗ để xe thoải má ở Tầng 1, và phơi quần áo ở tầng 5 ( tầng thượng) \r\n+ Nhà vệ sinh,đầy đủ nóng lạnh, Bếp nấu ăn.\r\n+ Chu kì đóng tiền nhà 1 tháng 1 vào ngày mùng 8 đầu tháng\r\n+ Có thể chuyển vào ở luôn vào đầu tháng 4 này\r\n* liên hệ: Điện thoại : 0394879549', '2019-04-09 23:00:32'),
(9, 'admin', 'TÌM NGƯỜI Ở GHÉP 1,3 TRIỆU/THÁNG MIỄN PHÍ ĐIỆN NƯỚC GẦN BÁCH KINH XÂY', 'Tìm người ở ghép', 'Khép kín', 1299000, 30, '', '', 'Tất cả', 'Chỗ để xe , Sân phơi , Thang máy , Internet , Điều hòa , Bình nóng lạnh , Máy giặt , Truyền hình cáp , Tivi', '(Dịchvụ Ở GHÉP tiết kiệm chi phí với những tiện ích cao cấp )\r\n*Địa chỉ: chung cư 96A Định Công. cách các trường lớn BÁCH – KINH – XÂY chỉ\r\n1,5km\r\n \r\nTìmngười ở ghép trong căn hộ chung cư cao cấp đầy đủ tiện ích, chỉ việc xách vali\r\nđến ở\r\nCAMKẾT KHÔNG PHÁT SINH CHI PHÍ\r\n \r\nCănhộ cho thuê dạng homestay phù hợp với sinh viên, người mới đi làm:\r\n => GIÁ SIÊU RẺ \r\n-PHÒNGNAM: 1.500.000/Người/Tháng (hợp đồng từ 6 tháng trờ lên giảm còn 1,3 triệu/tháng)\r\n–PHÒNG NỮ khép kín 1,6 triệu/tháng\r\n(hợpđồng từ 6 tháng trở lên giảm còn 1,4 triệu/tháng)\r\n \r\n  Giá trên đã bao gồm toàn bộ các chi phí: điện,nước sạch mạng internet,\r\ncóngười dọn tổng vệ sinh hàng tuần\r\n  - Mỗi phòng có từ 4 – 6 người tại khu đô thị caocấp đảm bảo an ninh, sạch sẽ, thuận tiện giao thông, đầy đủ tiện nghi chỉ việc\r\nxách quần áo đến ở.\r\nS\r\nTIỆNÍCH TẦNG 1: Siêu thị Vinmart, phòng tập GYM, ngân hàng...\r\n \r\n-Mỗi người có 1 tủ quần áo có khóa riêng\r\n-  Bếp, tủ bếp , nồi niêu bát đĩa \r\n-2 TIVI 40 inch, Tủ lạnh , máy giặt , bình nóng lạnh, điều hòa\r\n-Bình lọc nước uống tại vòi (khỏi mất công đi đổi nước và tốn chi phí)\r\n \r\nCácbạn quan tâm vui lòng liên hệ chính chủ để đi xem nhà\r\nNÓIKHÔNG VỚI THU PHÍ ĐI XEM HOẶC THUÊ\r\nLH:0901498666 (fb, zalo, viber, imessage)', '2019-04-09 23:02:26'),
(10, 'admin', 'phong tro day du do dac va tien nghi', 'Phòng trọ', 'Khép kín', 4000000, 40, 'Nhà nước quy định', 'Nhà nước quy định', 'Gia đình', 'Chỗ để xe , Sân phơi , Internet , Điều hòa , Bình nóng lạnh , Truyền hình cáp , Tivi', '2 phong tro day du noi that va tien nghi, gia 3,5 trieu - 4 trieu/ thang', '2019-04-09 23:02:35'),
(11, 'diepdx', 'Cho thuê phòng trọ 35m2', 'Phòng trọ', 'Khép kín', 2000000, 40, '', '', '', 'Chỗ để xe , Sân phơi , Thang máy , Internet , Bình nóng lạnh', 'PHÒNG CCMN KHÔNG CHUNG CHỦ - 61/54/10 Tây Tựu, Bắc Từ Liêm.\r\n❌Nhà mình đang trống 2 phòng 25m2, 35m2 GIÁ chỉ từ 1tr4 --- 2tr ', '2019-04-09 23:03:04'),
(12, 'ndt0123', 'Cho thuê phòng trọ khép kín không chung chủ ở Tựu Liệt, gần bán đảo Linh Đàm', 'Phòng trọ', 'Khép kín', 1700000, 20, '', '', 'Tất cả', 'Chỗ để xe , Internet , Bình nóng lạnh', 'Chính chủ cho thuê từng phòng trong chung cư mini tại ngõ 304 Tựu Liệt ( gần viện K2 ) \r\nCó thể đi lối đường Giải Phóng - Ngọc Hồi vào hoặc có thể đi lối Linh Đàm vào ( cách bán đảo Linh Đàm 1.5km \r\nRất gần chợ nên mọi sinh hoạt khá tiện lợi. Ngõ rộng rãi ô tô đỗ cửa.\r\nRất thuận tiện cho các bạn học tập và làm việc ở quanh khu vực giải phóng, Linh Đàm....\r\nNhà mới, đẹp long lanh.\r\nPhòng diện tích 20m2.\r\nTất cả các phòng đều khép kín. \r\nPhòng nào cũng có cửa sổ cực thoáng.\r\nTrang bị nội thất gồm: Nóng lạnh, giường, quạt trần, rèm cửa sổ.\r\nChỗ để xe rất rộng rãi.\r\nĐi lại tự do thoải mái. Mỗi người một chìa khóa cổng ra khóa vào mở. Có camera giám sát an ninh.\r\nGiá phòng rất rẻ chỉ: 1.7tr/tháng ( phòng bao gồm nóng lạnh, giường, quạt trần, rèm cửa sổ )\r\nTrang bị thêm điều hòa thì 2tr/tháng.\r\nĐiện: 3.5k/số công tơ riêng từng phòng\r\nNước sạch: 80k/người/tháng\r\nInternet cáp quang: 80k/phòng/tháng ( wifi phủ sóng từng phòng )\r\nPhương thức thanh toán: Đặt cọc 1 tháng và thanh toán tiền nhà 1 tháng/lần.\r\nAi có nhu cầu vui lòng liên hệ: \r\nA.Vinh: 0974.904.012 \r\n( Mình sinh năm 82 cho tiện xưng hô )\r\nNhà chính chủ cho thuê nên chỉ làm việc với những ai có nhu cầu thuê thực. Miễn mọi hình thức trung gian môi giới.', '2019-04-09 23:03:16'),
(13, 'linhhp', 'Tìm người ở ghép homestay Trung Hòa Nhân Chính 1,4tr/tháng bao full', 'Tìm người ở ghép', 'Khép kín', 1400000, 20, '', '', 'Tất cả', 'Chỗ để xe , Sân phơi , Internet , Điều hòa , Bình nóng lạnh , Máy giặt , Truyền hình cáp , Tivi', 'Cầntìm người ở ghép dạng Homestay tại địa chỉ: Ngõ 21 Lê Văn Lương – Nhân Chính –\r\nThanh Xuân-HN. cách đường Hoàng Ngân và bến xe bus nhanh 100m. Cách tòa chung\r\ncư Golden Palm và Star City 50m. Gần các trường: đại học Thủy Lợi, Công Đoàn,\r\nTự Nhiên, Nhân Văn, Đại Nam...\r\n(Tìmkiếm trên maps ko ra ngõ 21 Lê Văn Lương thì bấm vào link này: https://goo.gl/maps/jZNNJYqyGnM2)\r\n#TRUNG_HÒA_NHÂN_CHÍNH\r\n\r\n\r\n->Phù hợp với các bạn sinh viên, người mới đi làm vui vẻ hòa đồng\r\n \r\nKhônggian hiện đại, đầy đủ tiện nghi, môi trường sống dân trí cao, tiện đi lại bằng\r\ntất cả các phương tiện như: xe máy, taxi, bus nhanh, bus.\r\n \r\nQUANTRỌNG NHẤT LÀ KHÔNG PHÁT SINH CHI PHÍ\r\n \r\nHiệntại CÒN:\r\n-PHÒNG NỮ 2 giường tầng giá 1,5 triệu/ng/tháng (1 slot)-không có tivi\r\n- PHÒNGNAM 4 Giường tầng giá 1,6 triệu/ng/tháng (1 slot)\r\n-PHÒNG NỮ 3 giường tầng giá 1,7 triệu/ng/tháng (còn 1 slot)\r\n(hợpđồng từ 6 tháng trở lên giảm ngay 100k/tháng)\r\n \r\n=>MIỄN PHÍ: điện, nước sạch, mạng internet, gas, có người dọn tổng vệ sinh hàng\r\ntuần\r\n \r\nCănhộ nằm tại khu dân cư cao cấp đảm bảo an ninh, sạch sẽ, thuận tiện giao thông,\r\nđầy đủ tiện nghi chỉ việc xách quần áo đến ở\r\n✨ Mỗi người có 2 tủ quần áo có khóa riêng\r\n✨ Chăn ga gối đệm đầy đủ cho từng người\r\n✨ Bếp, tủ bếp , nồi niêu bát đĩa, dao, thớt,bàn ăn\r\n✨ TIVI TRUYỀN HÌNH CÁP RIÊNG TỪNG PHÒNG, 2 Tủlạnh, 2 máy giặt, bình nóng lạnh, điều hòa.\r\n\r\n\r\nCácbạn quan tâm vui lòng liên hệ chính chủ để đi xem nhà\r\nNÓIKHÔNG VỚI THU PHÍ ĐI XEM HAY THUÊ\r\nLH:0901498666 (fb, zalo, viber, imessage)', '2019-04-09 23:03:23'),
(14, 'admin', 'Cho thuê nhà trọ, chung cư mini', 'Phòng trọ', 'Khép kín', 2000000, 30, '2300/số', '70000/người', 'Tất cả', 'Chỗ để xe , Sân phơi , Thang máy , Internet , Điều hòa , Bình nóng lạnh', 'Ngôi nhà tiện nghi cho các anh em sống và làm việc tại khu vực Đông Anh.\r\nKhông gian sống sang trọng, thiết kế hiện đại trẻ trung cùng một bầu không khí ấm cúng với 1 khách, 1 ngủ, 2PN.\r\nDiện tích: Từ 23m2 - 45m2.\r\nĐiện, nước giá dân.\r\nGiá phòng chỉ từ 1tr4 đến 2.5 tr/tháng.\r\nLH: Nga 0971369515.', '2019-04-09 23:03:41'),
(15, 'nguyendv99', 'cho thuê phòng trọ trần cung , hoàng quốc việt', 'Phòng trọ', 'Khép kín', 2800000, 23, '3500/số', '80000/người', 'Gia đình', 'Chỗ để xe , Sân phơi , Internet , Điều hòa , Bình nóng lạnh , Máy giặt', '++cho thuê phòng trọ 75/120 trần cung\r\n++nhà gần các trường đại học, cao đẳng sp tw, điện lực, học viên ktqs, cao đẳng du lịch\r\n++nhà k chung chủ đủ đồ , kệ giường, nóng lạnh điều hòa, ...\r\n++ có phòng 15m2-2.8tr, phòng to 23m2, giá 3,2tr\r\n++ có phòng khép kín, và không khép kín\r\n++ chỉ cho nữ, nhóm nữ, cặp đôi, hộ gd thuê\r\n++LH chủ nhà 0339869997', '2019-04-09 23:03:55'),
(16, 'chinh', 'Phòng khép kín 1,9 triệu/tháng ở 25 ngõ 342 Hồ Tùng Mậu', 'Phòng trọ', 'Khép kín', 1900000, 45, '4 nghìn/ số', '100k/người', 'Tất cả', 'Chỗ để xe , Sân phơi , Internet , Truyền hình cáp', 'Cho thuê phòng khép kín tại số 25 ngõ 342 Hồ Tùng Mậu (p. Phú Diễn-Q. Bắc Từ Liêm)\r\n- Tổng diện tích riêng biệt 45 m2, gồm phòng ngủ 22 m2, còn lại là toilet rộng đặt được máy giặt, bếp, balcon.  Phòng ngủ có 2 mặt là cửa và cửa sổ gỗ kính.\r\n- Có chỗ phơi quần áo riêng, \r\n- Có chỗ thuê để xe máy rộng, có mái che.\r\n- Giờ giấc tự do, ở riêng chủ, có cameralắp cổng.\r\n- Wifi 50k/ tháng, mỗi tầng 1 wifi riêng.\r\n- Giá cho 1,9 triệu đồng/tháng\r\nĐịa chỉ: số 25, ngõ 342 Hồ Tùng Mậu, Bắc TừLiêm, Hà Nội. ĐTLH 0989996984', '2019-04-09 23:04:01'),
(17, 'hoangnv', 'Phòng trọ đẹp đủ nội thất', 'Phòng trọ', 'Khép kín', 1900000, 45, '4k/số', '30k/số', 'Tất cả', 'Chỗ để xe , Sân phơi , Internet , Truyền hình cáp', 'Nhà sạch sẽ thoáng mát gần chợ, gần điểm bắt xe bus', '2019-04-09 23:04:14'),
(18, 'diepdx', 'Phòng trọ cho sinh viên', 'Phòng trọ', 'Khép kín', 4400000, 30, 'Nhà nước quy định', 'Nhà nước quy định', 'Sinh viên', 'Chỗ để xe , Sân phơi , Internet , Điều hòa , Bình nóng lạnh', 'Hiện mình thuê cả nhà nhưng do ở quá rộng nên mình cho thuê lại 1 phòng. Rộng rãi, thoải mái, thoáng mát, sạch sẽ và đầy đủ điều hòa nóng lạnh. Xung quanh là các hộ gia đình. Khu dân trí cao. Ưu tiên nhóm từ 3 đến 4 nữ sinh viên các trường ngân hàng, thủy lợi, công đoàn, đh y. Yêu cầu sạch sẽ, ý thức, trung thực.', '2019-04-09 23:04:26'),
(19, 'linhhp', 'Cho thuê phòng trọ ngõ 565 Nguyễn Trãi', 'Phòng trọ', 'Không khép kín', 1800000, 35, '', '', 'Gia đình', '', 'Cho thuê phòng chính chủ, nhà mới phòng ốc rộng rãi, không ở chung với chủ nhà, giờ giấc tự do, an ninh tốt, điện nước đầy đủ, tầng 1 có \r\nthể để xe.\r\n+ Vị trí: Ngõ 565 Nguyễn Trãi, Hà Nội cách đường lớn chỉ 50m, gần chợ \r\nPhùng Khoang 150m, ngay gần điểm xe bus. Đi lại cực kỳ thuận tiện.\r\n+ Khu dân trí cao, giao thông đi lại thuận tiện, gần chợ Phùng Khoang, \r\nđường Triều Khúc, đi bộ sang trường đh hà nội,đh văn hóa nghệ \r\nthuật trung ương,y học tuệ tĩnh, mật mã, bưu chính viễn thông, kiến \r\ntrúc...\r\n+ Giá cho thuê: Chỉ từ 1,8tr - 2,5 tr/tháng/phòng\r\n+ Phương thức thanh toán: Đặt cọc 1 tháng. Thanh toán 3 tháng tiền nhà. \r\n+ SĐT: 9.9.9 – Anh Quang. Vui lòng gọi trực tiếp, không nhắn tin.', '2019-04-09 23:04:32');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hinh_anh_bai_dang`
--

CREATE TABLE `hinh_anh_bai_dang` (
  `IDimage` int(11) NOT NULL,
  `IDBaiDang` int(11) NOT NULL,
  `DuongDan` text CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hinh_anh_phong_tro`
--

CREATE TABLE `hinh_anh_phong_tro` (
  `IDimage` int(11) NOT NULL,
  `IDPhongTro` int(11) NOT NULL,
  `DuongDan` text CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user`
--

CREATE TABLE `user` (
  `user_name` varchar(20) CHARACTER SET latin1 NOT NULL,
  `password` varchar(40) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `user`
--

INSERT INTO `user` (`user_name`, `password`) VALUES
('admin', '123456'),
('chinh', '123456'),
('diepdx', '123456'),
('hoangnv', '123456'),
('linhhp', '123456'),
('ndt0123', '123456'),
('nguyendv99', '123456'),
('tam0123', '123456'),
('thangnm', '123456');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `bai_dang`
--
ALTER TABLE `bai_dang`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_name` (`user_name`);

--
-- Chỉ mục cho bảng `dia_chi_phong_tro`
--
ALTER TABLE `dia_chi_phong_tro`
  ADD PRIMARY KEY (`IDPhongTro`);

--
-- Chỉ mục cho bảng `gia_phong_tro`
--
ALTER TABLE `gia_phong_tro`
  ADD PRIMARY KEY (`IDPhongTro`),
  ADD KEY `user_name` (`user_name`);

--
-- Chỉ mục cho bảng `hinh_anh_bai_dang`
--
ALTER TABLE `hinh_anh_bai_dang`
  ADD PRIMARY KEY (`IDimage`),
  ADD KEY `IDBaiDang` (`IDBaiDang`);

--
-- Chỉ mục cho bảng `hinh_anh_phong_tro`
--
ALTER TABLE `hinh_anh_phong_tro`
  ADD PRIMARY KEY (`IDimage`),
  ADD KEY `IDPhongTro` (`IDPhongTro`);

--
-- Chỉ mục cho bảng `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_name`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `bai_dang`
--
ALTER TABLE `bai_dang`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT cho bảng `dia_chi_phong_tro`
--
ALTER TABLE `dia_chi_phong_tro`
  MODIFY `IDPhongTro` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT cho bảng `gia_phong_tro`
--
ALTER TABLE `gia_phong_tro`
  MODIFY `IDPhongTro` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT cho bảng `hinh_anh_bai_dang`
--
ALTER TABLE `hinh_anh_bai_dang`
  MODIFY `IDimage` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `hinh_anh_phong_tro`
--
ALTER TABLE `hinh_anh_phong_tro`
  MODIFY `IDimage` int(11) NOT NULL AUTO_INCREMENT;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `bai_dang`
--
ALTER TABLE `bai_dang`
  ADD CONSTRAINT `bai_dang_ibfk_1` FOREIGN KEY (`user_name`) REFERENCES `user` (`user_name`) ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `gia_phong_tro`
--
ALTER TABLE `gia_phong_tro`
  ADD CONSTRAINT `gia_phong_tro_ibfk_1` FOREIGN KEY (`IDPhongTro`) REFERENCES `dia_chi_phong_tro` (`IDPhongTro`) ON UPDATE CASCADE,
  ADD CONSTRAINT `gia_phong_tro_ibfk_2` FOREIGN KEY (`user_name`) REFERENCES `user` (`user_name`) ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `hinh_anh_bai_dang`
--
ALTER TABLE `hinh_anh_bai_dang`
  ADD CONSTRAINT `hinh_anh_bai_dang_ibfk_1` FOREIGN KEY (`IDBaiDang`) REFERENCES `bai_dang` (`ID`) ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `hinh_anh_phong_tro`
--
ALTER TABLE `hinh_anh_phong_tro`
  ADD CONSTRAINT `hinh_anh_phong_tro_ibfk_1` FOREIGN KEY (`IDPhongTro`) REFERENCES `dia_chi_phong_tro` (`IDPhongTro`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
