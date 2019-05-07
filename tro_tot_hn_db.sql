-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 25, 2019 at 05:25 PM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `demobtl`
--

-- --------------------------------------------------------

--
-- Table structure for table `bai_dang`
--

CREATE TABLE `bai_dang` (
  `ID` int(11) NOT NULL,
  `user_name` varchar(20) CHARACTER SET latin1 NOT NULL DEFAULT 'admin',
  `TieuDe` tinytext COLLATE utf8_unicode_ci NOT NULL,
  `NoiDung` text COLLATE utf8_unicode_ci NOT NULL,
  `ThoiGianDang` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `bai_dang`
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
-- Table structure for table `dia_chi_phong_tro`
--

CREATE TABLE `dia_chi_phong_tro` (
  `IDPhongTro` int(11) NOT NULL,
  `DiaChi` tinytext COLLATE utf8_unicode_ci NOT NULL,
  `XaPhuong` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `QuanHuyen` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `TenChuTro` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Không xác định',
  `Sdt` varchar(11) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `dia_chi_phong_tro`
--

INSERT INTO `dia_chi_phong_tro` (`IDPhongTro`, `DiaChi`, `XaPhuong`, `QuanHuyen`, `TenChuTro`, `Sdt`) VALUES
(4, 'số 12 ngõ 271 yên hòa, Yên Hòa', 'Phường Yên Hòa', 'Quận Cầu Giấy', 'Linh Nguyễn Văn', '0337021163'),
(7, '- Địa chỉ: Số 30 ngõ 394 Phạm Văn Đồng, Cầu Giấy.', 'Phường Dịch Vọng', 'Quận Cầu Giấy', 'Huong Duong Thu', '0835152108'),
(8, 'nhà 7 ngách 11 ngõ 39 Hồ Tùng Mậu Cầu Giấy, Hà Nội', 'Phường Mai Dịch', 'Quận Cầu Giấy', 'Phụng Trần', '0394879549'),
(15, ' 75 ngõ 120 trần cung, Trần Cung, Cầu Giấy, Hà Nội', 'Phường Dịch Vọng', 'Quận Cầu Giấy', 'Duong Tung', '0836314397'),
(20, 'Số 9, ngách 18, ngõ 133 Xuân Thủy, Cầu Giấy, Hà Nội', 'Phường Dịch Vọng Hậu', 'Quận Cầu Giấy', 'Bác Thúy', '0904563287'),
(21, 'Số 21, ngõ 133 Xuân Thủy, Cầu Giấy, Hà Nội ', 'Phường Dịch Vọng Hậu', 'Quận Cầu Giấy', 'Không xác định', '033765924'),
(22, 'số 9, đường Quan Hoa, Cầu Giấy, Hà Nội', 'Phường Quan Hoa', 'Quận Cầu Giấy', 'Anh Cường', '033645982'),
(26, 'nhà 14, ngách 2/133, ngõ 133 Xuân Thủy, Cầu Giấy', 'Phường Dịch Vọng Hậu', 'Quận Cầu Giấy', 'Chú Hùng', '033876529'),
(27, 'Số nhà 27, ngõ 269 Lạc Long Quân, Cầu Giấy', 'Phường Nghĩa Đô', 'Quận Cầu Giấy', 'Không xác định', '0904876392'),
(28, 'Số 12, Trần Quốc Vượng, Cầu Giấy, Dịch Vọng Hậu, Cầu Giấy, Hà Nội', 'Phường Dịch Vọng Hậu', 'Quận Cầu Giấy', '', '01687899848'),
(29, 'số nhà 126A, ngõ 28 Cốm Vòng, Cầu Giấy', 'Phường Dịch Vọng Hậu', 'Quận Cầu Giấy', 'Tuan Nguyen', '0977601628'),
(30, 'Số 42, Ngõ 165, Xuân Thủy, Cầu Giấy, Hà Nội', 'Phường Dịch Vọng Hậu', 'Quận Cầu Giấy', '', '01686937831'),
(32, 'Số 24, ngõ 30 Phan Văn Trường, Cầu Giấy', '', 'Quận Cầu Giấy', 'Thanh Thùy', '0984709138'),
(33, 'số 29C, ngõ 79 Cầu Giấy, Cầu Giấy, Hà Nội', 'Phường Yên Hòa', 'Quận Cầu Giấy', '', '01664309898'),
(34, 'số nhà 16, ngách 32/27, 233 Xuân Thủy, Cầu Giấy', 'Phường Dịch Vọng Hậu', 'Quận Cầu Giấy', 'Chú Minh', '01639123122'),
(35, 'Số 5, Ngõ 168 , Trần Thái Tông, Cầu Giấy, Hà Nội', 'Phường Dịch Vọng Hậu', 'Quận Cầu Giấy', 'Hải Anh', '0986797907'),
(36, 'Số 39A, Ngõ 28, Trần Thái Tông, Cầu Giấy, Hà Nội', 'Phường Dịch Vọng Hậu', 'Quận Cầu Giấy', '', '0934576604'),
(37, 'Số 65, Ngõ 98, Xuân Thủy, Cầu Giấy, Hà Nội', 'Phường Dịch Vọng Hậu', 'Quận Cầu Giấy', '', '01675273191'),
(38, 'Số 65, Ngõ 98, Xuân Thủy, Cầu Giấy, Hà Nội', 'Phường Dịch Vọng Hậu', 'Quận Cầu Giấy', '', '01675273191'),
(39, 'Số 10A, Ngõ 155/43 Cầu Giấy, Cầu Giấy, Hà Nội', 'Phường Dịch Vọng Hậu', 'Quận Cầu Giấy', 'Quang Anh', '01655990877'),
(40, 'Số 67, Ngõ 165 Cầu Giấy, Cầu Giấy, Hà Nội', 'Phường Dịch Vọng Hậu', 'Quận Cầu Giấy', '', '0968896718'),
(41, 'Số 34, Ngõ 329, Cầu Giấy, Cầu Giấy, Hà Nội', 'Phường Dịch Vọng Hậu', 'Quận Cầu Giấy', 'Nga Tran', '01626871722'),
(42, 'Số 39A, Trần Thái Tông, Cầu Giấy, Hà Nội', 'Phường Dịch Vọng Hậu', 'Quận Cầu Giấy', 'Anh Hưng', '0961035321'),
(43, 'số 235 Yên Hòa, Cầu Giấy, Hà Nội', 'Phường Yên Hòa', 'Quận Cầu Giấy', 'Đặng Phương Linh', '0972531108'),
(46, 'số 9, ngõ 299 đường Cầu Giấy, Cầu Giấy', 'Phường Dịch Vọng', 'Quận Cầu Giấy', 'Cô Hậu', '01646153382'),
(47, 'số 28, ngõ 37 Dịch Vọng, Cầu Giấy, Hà Nội', 'Phường Dịch Vọng', 'Quận Cầu Giấy', 'Anh Sơn', '0941944943'),
(48, 'số 12, Ngách 15, Ngõ 329 Dịch Vọng, Cầu Giấy, Hà Nội', 'Phường Dịch Vọng', 'Quận Cầu Giấy', '', '01648909525'),
(51, 'số 12, tổ 29, ngách 37/21, Dịch Vọng, Cầu Giấy', 'Phường Dịch Vọng', 'Quận Cầu Giấy', '', '01694117237'),
(52, 'Số 10, Ngách 91, Ngõ 68, Cầu Giấy, Cầu Giấy, Hà Nội', 'Phường Dịch Vọng', 'Quận Cầu Giấy', '', '0438339363'),
(54, 'Số 12, Ngõ 397, Phạm Văn Đồng, Cầu Giấy, ', 'Phường Dịch Vọng', 'Quận Cầu Giấy', 'Chú Quân', '0969834263'),
(55, 'số 4, ngách 24/133, ngõ 133 Xuân Thủy, Cầu Giấy', 'Phường Dịch Vọng Hậu', 'Quận Cầu Giấy', 'Cô Hồng', '0336842913'),
(56, 'số 11A, Ngách 24, Ngõ 165 Cầu Giấy', 'Phường Dịch Vọng', 'Quận Cầu Giấy', '', '0969633422');

-- --------------------------------------------------------

--
-- Table structure for table `gia_phong_tro`
--

CREATE TABLE `gia_phong_tro` (
  `IDPhongTro` int(11) NOT NULL,
  `user_name` varchar(20) CHARACTER SET latin1 NOT NULL DEFAULT 'admin',
  `TieuDe` tinytext COLLATE utf8_unicode_ci NOT NULL,
  `KieuPhong` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `KieuVeSinh` varchar(40) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Chưa xác định',
  `GiaChoThue` int(11) NOT NULL,
  `DienTich` double NOT NULL,
  `GiaDien` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `GiaNuoc` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `DoiTuong` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Chưa xác định',
  `TienIch` tinytext COLLATE utf8_unicode_ci,
  `MoTa` text COLLATE utf8_unicode_ci,
  `ThoiGianDang` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `gia_phong_tro`
--

INSERT INTO `gia_phong_tro` (`IDPhongTro`, `user_name`, `TieuDe`, `KieuPhong`, `KieuVeSinh`, `GiaChoThue`, `DienTich`, `GiaDien`, `GiaNuoc`, `DoiTuong`, `TienIch`, `MoTa`, `ThoiGianDang`) VALUES
(4, 'thangnm', 'Cho thuê căn hộ KHÔNG CHUNG CHỦ tại số 12 ngõ 271 Yên Hòa- Trung Kính( ngay Lottle Trung Kính). Giá chỉ từ 2.8tr. Ảnh thật 100%', 'Nhà nguyên căn', 'Khép kín', 2800000, 50, 'Nhà nước quy định', '100k/số', 'Tất cả', 'Chỗ để xe , Sân phơi , Internet , Điều hòa , Bình nóng lạnh , Máy giặt ', 'Cho thuê căn hộ KHÔNG CHUNG CHỦ tại số 12 ngõ 271 Yên Hòa-Trung Kính( ngay Lottle Trung Kính). Giá chỉ từ 2.8tr. Ảnh thật 100%\r\nƯu điểm : \r\n+ không chung chủ- yên tĩnh\r\n+ Cách phố 20m có đầy đủ siêu thị, hàng ăn, các tiện ích\r\n+Ngõ Cực Sạch và An ninh\r\n………………………………………………\r\n+ Diện tích  25m-50m thiết kế CỰC ĐẸP\r\n+ sofa SANG TRỌNG\r\n+ Giường cực Lớn 2mx2,2m bao gồmcả Đệm, Ga, Gối\r\n+ Tủ quần áo cỡ lớn D 2,5m R 0,9mC 3,5m\r\n+ Cây treo đồ tiện lợi\r\n+ Bàn ăn 6 ghế màu trắng\r\n+ Đệm Văng dài 4m tiẹn nghỉ ngơi\r\n+ Tủ bếp cỡ lớn.\r\n+ Sàn Gỗ.\r\n+ Bếp Ga,bình ga + bếp từ+ đồ làmbếp\r\n+ Húi mùi \r\n+ Điều hoà inventer 12000btu haichiều\r\n+ Kệ tivi \r\n+ Tủ nhỏ để sách\r\n+ Rèm gỗ\r\n+ Đồng hồ treo tường\r\n+ Đèn chùm lung linh\r\n+ Trần thạch cao, đèn chiếu sángâm trần\r\n+ bình nóng lạnh 30l ( đặc biệtcó trang bị Thái Dương Năng)\r\n+ vệ sinh khép kín\r\n+ Tủ đựng giày dép\r\n………………………………………………\r\nGiá chỉ từ 2.8tr ( tùy căn)\r\nLiên hệ 033.702.1163\r\nChủ nhà không phải môi giới', '2019-04-20 12:43:56'),
(7, 'chinh', 'Cho thuê phòng SIÊU ĐẸP, MỚI 100% Phạm Văn Đồng', 'Phòng trọ', 'Khép kín', 3000000, 25, '4000/số', '30000/khối', 'Gia đình', 'Chỗ để xe , Sân phơi , Internet , Điều hòa , Bình nóng lạnh , Máy giặt , Truyền hình cáp', '- Địa chỉ: Số 30 ngõ 394 Phạm Văn Đồng, Cầu Giấy.\r\n- Vị trí: Gần Bộ Công an, Cao đẳng Du lịch, Đại họcĐiện lực,, Đại học Tài chính, Đại học Sư phạm.\r\n- Nhà gồm 5 tầng, mỗi tầng 2 phòng, diện tích mỗiphòng: 25 – 30m2, vệ sinh giữa.\r\n- Nhà mới 100%, rất đẹp. Tất cả các phòng đều có cửasổ thoáng mát.\r\n- Phòng được trang bị đầy đủ: giường, tủ, điều hòa,nóng lạnh, máy giặt, bếp ăn tiện nghi, camera…\r\n- Để xe free tầng 1. Giờ giấc thoải mái, không chungchủ.\r\n- Dịch vụ:\r\n+ Điện: 3,5k/số (tính điện mỗi phòng, riêng điệnchung: nóng lạnh, máy giặt free).\r\n+ Nước: 100k/ người.\r\n+ Mạng: 50k/ phòng.\r\n- Giá thuê: 3tr – 3.5tr/ phòng (đóng 1 tháng cọc 1tháng)\r\n- Bạn nào quan tâm liên hệ: Ms Hương 0835 152 108(mình khá bận nên hạn chế về thời gian inbox, khuyến khích các bạn quan tâm qua\r\nxem để cảm nhận đầy đủ về nhà). LIÊN HỆ TRƯỚC ĐỂ QUA MỞ CỬA.', '2019-04-19 01:31:29'),
(8, 'linhhp', 'TÌm Nam ở ghép', 'Ở ghép', 'Khép kín', 2700000, 30, '3500/số', '150 nghìn/người', 'Sinh viên', 'Chỗ để xe , Sân phơi , Internet , Điều hòa , Bình nóng lạnh , Truyền hình cáp', '- Tìm Nam ở ghép tại nhà 7 ngách 11 ngõ 39 Hồ TÙng Mậu Cầu GIấy, Hà Nội., gần các trường ĐH như thương mại, QUốc Gia, DU lịch, SƯ Phạm, Múa,...- Hiện tại mình đang có 2 người cần tìm thêm 1 người để chia sẻ tiền phòng, Ưu tiên các bạn còn đang là sinh viên.\r\n+ Tiền phòng : 2tr7\r\n+ Điện: 3.000d/1so\r\n+ Nước : 150k/1 người\r\n+ Mạng : 50k/1 người\r\n+ Phòng rộng tầm 30m2\r\n+ Có chỗ để xe thoải má ở Tầng 1, và phơi quần áo ở tầng 5 ( tầng thượng) \r\n+ Nhà vệ sinh,đầy đủ nóng lạnh, Bếp nấu ăn.\r\n+ Chu kì đóng tiền nhà 1 tháng 1 vào ngày mùng 8 đầu tháng\r\n+ Có thể chuyển vào ở luôn vào đầu tháng 4 này\r\n* liên hệ: Điện thoại : 0394879549', '2019-04-20 12:41:07'),
(15, 'nguyendv99', 'cho thuê phòng trọ trần cung , hoàng quốc việt', 'Phòng trọ', 'Khép kín', 2800000, 23, '3500/số', '80000/người', 'Gia đình', 'Chỗ để xe , Sân phơi , Internet , Điều hòa , Bình nóng lạnh , Máy giặt', '++cho thuê phòng trọ 75/120 trần cung\r\n++nhà gần các trường đại học, cao đẳng sp tw, điện lực, học viên ktqs, cao đẳng du lịch\r\n++nhà k chung chủ đủ đồ , kệ giường, nóng lạnh điều hòa, ...\r\n++ có phòng 15m2-2.8tr, phòng to 23m2, giá 3,2tr\r\n++ có phòng khép kín, và không khép kín\r\n++ chỉ cho nữ, nhóm nữ, cặp đôi, hộ gd thuê\r\n++LH chủ nhà 0339869997', '2019-04-09 23:03:55'),
(20, 'admin', 'Cho thuê phòng trọ 25m2 tại ngõ 133 Xuân Thủy', 'Phòng trọ', 'Khép kín', 2400000, 25, '4000/số', '35000/khối', 'Sinh viên', 'bình nóng lạnh, chỗ để xe, sân phơi thoáng mát, internet tốc độ cao', NULL, '2019-04-20 13:18:04'),
(21, 'admin', 'Cho thuê căn hộ tại số 21 ngõ 133 Xuân Thủy', 'Nhà nguyên căn', 'Khép kín', 4500000, 40, '3500/số', '30000/khối', 'Người đi làm', 'Internet tốc độ cao, điều hòa, nóng lạnh', 'Gần ĐHGQHN, ĐHSP, Học viện Báo chí Tuyên truyền, các tòa nhà như IPH, HITC, tòa Richland Southern', '2019-04-20 13:24:07'),
(22, 'admin', 'Cho thuê văn phòng làm việc 3 tầng tại số 9 Quan Hoa, Cầu Giấy, Hà Nội (gần quận ủy Cầu Giấy)', 'Nhà nguyên căn', 'Chưa xác định', 4000000, 20, '3000/số', '350000/khối', 'Người muốn thuê phòng làm việc', '\r\nVăn phòng sạch sẽ, lát sàn gỗ, có điều hòa, nội thất cao cấp.', 'Cách Quận Ủy Cầu Giấy chỉ 50m, gần ĐH Giao thông Vận  tải', '2019-04-21 00:08:55'),
(26, 'admin', 'Tìm người ở ghép tại nhà 14, ngách 2/133, ngõ 133 Xuân Thủy, Cầu Giấy', 'Ở ghép', 'Khép kín', 2200000, 25, '3500đ/số', '90000đ/tháng', 'Tất cả', 'có bình nóng lạnh, chỗ để xe rộng rãi, Internet tốc độ cao', 'Thuận tiện đi lại cho sinh viên ĐHQGHN, ĐH Sư phạm, Học viện Báo chí Tuyên truyền, nhân viên làm việc tại HITC, IPH', '2019-04-20 21:00:09'),
(27, 'admin', 'Tìm người ở ghép tại số nhà 27, ngõ 269 Lạc Long Quân, Cầu Giấy', 'Ở ghép', 'Không khép kín', 1650000, 20, '2500đ/số', '30000k/khối', 'Tất cả', 'Có nóng lạnh, Internet, có chỗ để xe', 'Vị trí ngay gần Hồ Tây', '2019-04-21 02:46:04'),
(28, 'nguyendv99', 'Cho thuê phòng trọ Số 12, Trần Quốc Vượng, Cầu Giấy, Hà Nội', 'Phòng trọ', 'Không khép kín', 1600000, 20, '3000/số', '100000/tháng', 'Tất cả', 'Chỗ để xe , Sân phơi , Internet , Điều hòa , Bình nóng lạnh', 'không chung chủ, không khép kín, nấu ăn riêng, ngay trong phòng có kệ nấu rửa, phòng rộng 20m2 đi về tự quản vì có chìa khóa riêng', '2019-04-21 12:53:00'),
(29, 'nguyendv99', 'Tìm nữ ở ghép Trần Thái Tông, Cầu Giấy', 'Ở ghép', 'Không khép kín', 1000000, 25, '4000/số', 'Nhà nước quy định', 'Người đi làm', 'chỗ để xe, sân phơi, Internet, nóng lạnh', 'Mình hiện cần tìm 1-2 bạn nữ ở ghép vào tháng 3, ưu tiên chuyển đến vào cuối tháng 2 luôn. Cầu thang gỗ, bậc thấp, chuyển đồ rất tiện. Phòng khép kín rộng 20m2, có cửa sổ to, nhà tắm rộng, có nóng lạnh, khá thoáng và mát, có bồn rửa mặt, vòi hoa sen, có kệ bếp và quạt thông gió. Có wifi, có mạng dây, chỗ để xe rộng, có camera quan sát, ko chung chủ, bạn bè thoải mái, phơi đồ tầng 7. Toàn người đi làm nên rất yên tĩnh. Gần chợ, giặt là…', '2019-04-21 13:29:41'),
(30, 'nguyendv99', 'Cho thuê nhà số 42, ngõ 165 Xuân Thủy, Cầu Giấy', 'Nhà nguyên căn', 'Khép kín', 3000000, 25, '4500/số', '35000/khối', 'Người đi làm', 'Chỗ để xe , Internet tốc độ cao, truyền hình K+', '- Để xe ở tầng 1 nhưng hơi hẹp.\r\n- Nhà sàn gỗ nên không sợ ẩm mốc nhé', '2019-04-21 13:46:30'),
(32, 'admin', '', 'Nhà nguyên căn', 'Khép kín', 3500000, 0, '3500/số', '35000/khối', 'Gia đình', '', '', '2019-04-21 15:25:23'),
(33, 'newmember', 'Cho thuê phòng trọ số 29C, ngõ 79 Cầu Giấy', 'Phòng trọ', 'Khép kín', 1500000, 15, '3500/số', '80000/người', 'Sinh viên', 'Chỗ để xe , Sân phơi , Internet , Bình nóng lạnh', '-Diện tích sử dụng 15 M2,không khép kín,2 phòng chung nhau 1 vs,không chung chủ.\r\n-Giá : 15 00.000/ tháng, đặt cọc 1 tháng ,đóng 2 tháng 1 lần.\r\n-phòng ở tầng 2 ,nhà 2 tầng,có nóng lanh …\r\n-An ninh tốt ,nhà chỉ có 2 phòng cho thuê nên yên tĩnh,không ai làm phiền ai vì phòng bên cũng thuê đi làm sáng đi tối về…\r\n-Trong phòng có giường,quạt tường,gương,kệ kính…\r\n-phòng thông thoáng,có chỗ nấu ăn ở ngoài,phơi quần áo không bị mưa,có chỗ để xe miễn phí không mưa nắng,WIFI – internet cáp quang,chợ cách mấy bước chân,mua bán đi lại thuận tiện …\r\n- Điện 3,5k/số,nước 80k/người/tháng,mạng chia đầu người…\r\n-Gần trạm trung chuyển cầu giấy đi lại thuận tiện,ĐH GTVT,Ngoại thương,sư phạm, quốc gia,điện lực…..', '2019-04-21 18:12:07'),
(34, 'newmember', 'Cho thuê phòng tại số nhà 16, ngách 32/27, 233 Xuân Thủy, Cầu Giấy', 'Phòng trọ', 'Không khép kín', 1300000, 16, '4000/số', '25000/khối', 'Sinh viên', 'Chỗ để xe, sân phơi, Internet', 'phòng trong nhà 6 tầng, vị trí gần ĐHQGHN, ĐHSPHN, Học viện Báo chí Tuyên truyền.', '2019-04-21 18:19:26'),
(35, 'thangnm', 'Cho thuê phòng trọ số 5, Ngõ 168 Trần Thái Tông, Cầu Giấy', 'Phòng trọ', 'Khép kín', 2500000, 25, 'Nhà nước quy định', 'Nhà nước quy định', 'Tất cả', 'Chỗ để xe , Sân phơi , Internet , Điều hòa , Bình nóng lạnh , Tivi', 'Chính chủ có phòng cho thuê, tiện nghi đầy đủ, vệ sinh khép kín (giường có đệm ga đầy đủ, bình nóng lạnh, điều hòa, tivi, tủ đựng quần áo, bàn ghế), khu vực an ninh tốt, tòa nhà có bảo vệ, thời gian đi về thoải mái. Ai có nhu cầu liên hệ chính chủ:Hải Anh. Địa chỉ: 5/168 Trần Thái Tông, Cầu Giấy, Hà Nội', '2019-04-21 18:41:59'),
(36, 'ndt0123', 'Cho thuê phòng trọ số 39A, Ngõ 28 Trần Thái Tông', 'Phòng trọ', 'Khép kín', 3800000, 20, '3500/số', '25000/khối', 'Người đi làm', 'Chỗ để xe, sân phơi, Internet', '+Vị trí: Tòa nhà 7 tầng tọa lạc tại số 39A ngõ 28 Đường “ TRẦN THÁI TÔNG ”, cách mặt đường “ TRẦN THÁI TÔNG” khoảng 200m. Ngõ thông ra đường Đồng Bông\r\n+ Tòa nhà mới xây dựng: Thiết kế đẹp, đầy đủ tiện nghi, không gian thoáng mát, Thỏa sức mua sắm tại trung tâm thương mại Lotte Mart với 6 phút di chuyển. \r\n+ Tiện nghi: Tòa nhà trang bị đầy đủ thiết bị bao gồm điều hòa,nóng lạnh,giường, tủ quần áo, bàn làm việc, chậu rửa bếp, kệ bếp, máy giặt chung của tòa nhà được free điện nươc sử dụng giặt máy. Internet & cáp truyền hình đến tận phòng, thang máy tốc độ cao…Mỗi phòng được thiết kế hợp lý, phòng rộng 20 m2 – 22 m2, có ban công phơi đồ, không gian thoáng tận hưởng không khí trong lành, View đẹp. Không gian sinh hoạt chung: các phòng có hành lang sinh hoạt chung rộng rãi, trang trí cây xanh dịu mát.\r\n+ Giao thông: Đường vào nhà rộng thoáng, ngay đằng sau nhà là bãi gửi xe ô tô.', '2019-04-21 18:46:17'),
(37, 'ndt0123', 'Cho thuê phòng trọ số 65, Ngõ 98 Xuân Thủy', 'Phòng trọ', 'Không khép kín', 2100000, 25, '3500/số', '50000/người', 'Tất cả', 'Chỗ để xe , Sân phơi , Internet , Điều hòa , Bình nóng lạnh', 'Còn 1 phòng cho thuê tại ngõ 98 Xuân Thủy, riêng chủ, đủ đồ, giờ giấc tự quản\r\nPhòng nhà mình trong nhà riêng 5 tầng, ngay phía sau trường báo trí tuyên truyền, đi từ Nguyễn Phong Sắc hoặc Xuân Thủy đều vào được. Thuận tiện xe bus, xung quanh rất nhiều trường đại học: ĐH Sư Phạm, ĐH Quốc Gia, Giao Thông Vận Tải…..\r\nNhà riêng chủ, đồ đạc đầy đủ: Giường ngủ, tủ quần áo, điều hòa, nóng lạnh, wiffi…. Chỗ để xe FREE, ban công thoáng mát.\r\nGiá 2.6 triệu (thanh toán 3 tháng/lần)', '2019-04-21 18:54:01'),
(38, 'ndt0123', 'Cho thuê phòng trọ số 65, Ngõ 98 Xuân Thủy', 'Phòng trọ', 'Không khép kín', 2100000, 25, '3500/số', '50000/người', 'Tất cả', 'Chỗ để xe , Sân phơi , Internet , Điều hòa , Bình nóng lạnh', 'Còn 1 phòng cho thuê tại ngõ 98 Xuân Thủy, riêng chủ, đủ đồ, giờ giấc tự quản\r\nPhòng nhà mình trong nhà riêng 5 tầng, ngay phía sau trường báo trí tuyên truyền, đi từ Nguyễn Phong Sắc hoặc Xuân Thủy đều vào được. Thuận tiện xe bus, xung quanh rất nhiều trường đại học: ĐH Sư Phạm, ĐH Quốc Gia, Giao Thông Vận Tải…..\r\nNhà riêng chủ, đồ đạc đầy đủ: Giường ngủ, tủ quần áo, điều hòa, nóng lạnh, wiffi…. Chỗ để xe FREE, ban công thoáng mát.\r\nGiá 2.6 triệu (thanh toán 3 tháng/lần)', '2019-04-21 18:54:01'),
(39, 'ndt0123', 'Cho thuê phòng trọ số 10A, Ngõ 155/43 Cầu Giấy', 'Phòng trọ', 'Không khép kín', 2000000, 20, '4000/số', '30000/khối', 'Tất cả', 'chỗ để xe, sân phơi, Internet, nóng lạnh', 'Có chỗ để xe rộng rãi. Điện 4k, nước 30k, đặt cọc 1 tháng thanh toán hàng tháng. ưu tiên ở lâu dài. Giá 2tr, phòng tầng 5 địa chỉ ngõ 155/43 nhà 10A gần bưu điện cầu giấy. Liên hệ mình 01655990877 để xem phòng.', '2019-04-21 19:02:05'),
(40, 'ndt0123', 'Cho thuê phòng trọ số 67, Ngõ 165 Cầu Giấy', 'Phòng trọ', 'Khép kín', 1500000, 15, '4000/số', '100000/tháng', 'Tất cả', 'Chỗ để xe, sân phơi, Internet', 'CHO THUÊ PHÒNG!!!\r\nMình có 1 phòng gần cuối tháng này cho thuê lại. Ở 165 cầu giấy. Giá 1.5tr. Khép kín . Điên 4k 1 số. Nc khoảng 100k 1 ng. 11h đóng cửa. Ai có nhu cầu ib mình. Giờ mà tìm đc phòng khep kin tr5 ở khu đấy là hiếm đấy nhé.Nhanh tay kẻo hết.!', '2019-04-21 19:09:20'),
(41, 'admin', 'Cho thuê phòng trọ số 34, Ngõ 329 Cầu Giấy', 'Phòng trọ', 'Khép kín', 2300000, 20, 'Nhà nước quy định', 'Nhà nước quy định', 'Sinh viên', 'Chỗ để xe, sân phơi, Internet', 'phòng đẹp kiểu CCMN. giá 2,3tr. rộng hơn 20m2. khép kín. \r\nan ninh tốt. \r\ngần các trường đh lớn như báo chí, sư phạm, quốc gia, gtvt,...\r\ncách đh thương mại gần 2km.\r\ngần sở công thương Cầu Giấy. gần chợ. siêu thị. các trung tâm thương mại lớn. gần công viên cầu giấy, cv nghĩa đô,..\r\nđầu ngõ có phòng tập nhảy hiện đại cho b nữ nào đam mê nhé..', '2019-04-21 19:14:30'),
(42, 'admin', 'Cho thuê phòng trọ tại sô 39A, Trần Thái Tông, Cầu Giấy, Hà Nội', 'Phòng trọ', 'Khép kín', 1900000, 20, '3500/số', '30000/khối', 'Sinh viên', 'Internet, sân phơi rộng rãi, bình nóng lạnh', 'Cho thuê phòng trọ tại sô 39A, Trần Thái Tông, Cầu Giấy, Hà Nội, gần Học viện Báo chí, ĐHSPHN, ĐHQGHN.', '2019-04-22 01:00:57'),
(43, 'admin', 'Cho thuê văn phòng tại số 235 Yên Hòa, Cầu Giấy', 'Nhà nguyên căn', 'Không khép kín', 4200000, 30, '3500/số', '30000/khối', 'Người đi làm', 'Chỗ để xe , Sân phơi , Internet , Điều hòa , Bình nóng lạnh , Máy giặt , Tivi', 'Cho thuê văn phòng tại số 235 Yên Hòa, Cầu Giấy, diện tích 30m2, đầy đủ tiện nghi', '2019-04-22 00:54:57'),
(46, 'newsignUp', 'tìm nam ở ghép ở số 9, ngõ 299 đường Cầu Giấy ', 'Ở ghép', 'Không khép kín', 2700000, 25, '4000/số', '35000/khối', 'Sinh viên', 'sân để xe rộng rãi, Internet ổn định, phòng có bình nóng lạnh', 'Tìm một nam ở ghép luôn và ngay vì bạn mình mới chuyển đi gấp.\r\n- Cần một bạn Nam ở sạch sẽ, không hút thuốc. \r\n- Phòng đã có 2 người ở đầy đủ đồ dùng hết rồi, chỉ cần mang theo đồ cá nhân theo là đủ.\r\n- Phòng trọ gần ĐH Thương Mại, Công Nghiệp, QUốc gia, Sư phạm, Cao đẳng du lịch .\r\n- Nhanh tay đăng ký gọi điện  với mình qua số ( 0945.803.765) vì số lượng có hạn', '2019-04-22 20:19:54'),
(47, 'newsignUp', 'Tìm nữ ở ghép tại số 28, ngõ 37, Dịch Vọng, Cầu Giấy', 'Ở ghép', 'Khép kín', 3200000, 35, '3500/số', '30000/khối', 'Người đi làm', 'Đầu thu K+, Internet tốc độ cao, chỗ để xe rộng rãi', 'Mình đang cần tìm một bạn nữ nữa ở ghép, ưu tiên các bạn đã đi làm hoặc sắp tốt nghiệp. Chỗ ở đầy đủ tiện ích như nóng lạnh, điều hòa, giường, tủ, rèm cửa, bàn ăn,...\r\nĐịa chỉ: số 28, ngõ 37 Dịch Vọng, Cầu Giấy, Hà Nội', '2019-04-22 20:30:12'),
(48, 'ndt0123', 'Tìm nữ ở ghép số 12, Ngách 15, Ngõ 329 Dịch Vọng', 'Ở ghép', 'Khép kín', 2000000, 25, '4000/số', '25000/khối', 'Sinh viên', 'Chỗ để xe , Sân phơi , Internet', '[TÌM 1 NỮ Ở GÉP] phòng 25m2 giá: 2 triệu. Khép kín ', '2019-04-23 01:39:00'),
(51, 'admin', 'Tìm nam ở ghép tại số 12, tổ 29, ngách 37/21, Dịch Vọng, Cầu Giấy', 'Ở ghép', 'Không khép kín', 1000000, 15, '3000/số', '60000/người', 'Sinh viên', 'Chỗ để xe , Sân phơi , Internet', 'Địa chỉ số 12 tổ 29 ngách 37/21 Dịch Vọng Cầu Giấy\r\n+giá 1 triệu 1 tháng\r\n+ Diện tích 15m2\r\n+phòng thoáng mát\r\n+ Điện 3k5/1 số\r\n+ mạng 60k/1 phòng (cáp quang )\r\n+an ninh đảm bảo\r\n+có chỗ để xe', '2019-04-23 02:33:54'),
(52, 'chinh', 'Tìm nam ở ghép tại phòng trọ số 10, Ngách 91, Ngõ 68 Đường Cầu Giấy', 'Ở ghép', 'Không khép kín', 1400000, 16, '4000/số', '70000/người', 'Sinh viên', '', 'khép kín riêng chủ 1tr4 - 1tr7. số 10 ngách 91 ngõ 68 đường Cầu Giấy _(điện 4k, nước70k, net 50k, chỗ để xe hơi chật). Inbox hoặc liên hệ sdt Bác chủ nhà 0438339363', '2019-04-23 02:50:42'),
(54, 'thangnm', 'mình muốn tim một bạn nam vào ở ghép ở Số 12, Ngõ 397, Phạm Văn Đồng, Cầu Giấy, ', 'Ở ghép', 'Khép kín', 2600000, 22, 'Nhà nước quy định', 'Nhà nước quy định', 'Sinh viên', 'Chỗ để xe , Sân phơi , Internet , Điều hòa , Bình nóng lạnh', 'Phòng đã có 2 người, đồ đạc đầy đủ, yêu cầu trung thực, sạch sẽ. Ưu tiên sinh viên ĐHQGHN', '2019-04-23 03:31:46'),
(55, 'diepdx', 'Cho thuê phòng trọ tại số 4, ngách 24/133, ngõ 133 Xuân Thủy, Cầu Giấy', 'Phòng trọ', 'Khép kín', 2500000, 25, '4000/số', '30000/khối', 'Sinh viên', 'bình nóng lạnh, wifi, sân phơi rộng rãi', 'Cho thuê phòng trọ tại nhà số 4, ngách 24/133, ngõ 133 Xuân Thủy, Cầu Giấy. Phòng có cửa sổ rộng, tiện nghi đầy đủ, thích hợp với những bạn sinh viện đang học tại ĐHQGHN, ĐHSPHN, Học viện Báo chí,', '2019-04-23 12:10:17'),
(56, 'thangnm', 'Cho thuê phòng trọ số 11A, Ngách 24, Ngõ 165 Cầu Giấy', 'Phòng trọ', 'Khép kín', 2000000, 20, 'Nhà nước quy định', 'Nhà nước quy định', 'Tất cả', 'Chỗ để xe , Sân phơi , Internet , Bình nóng lạnh', 'phòng đầy đủ tiện nghi', '2019-04-25 21:54:48');

-- --------------------------------------------------------

--
-- Table structure for table `hinh_anh_bai_dang`
--

CREATE TABLE `hinh_anh_bai_dang` (
  `IDimage` int(11) NOT NULL,
  `IDBaiDang` int(11) NOT NULL,
  `DuongDan` text CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `hinh_anh_phong_tro`
--

CREATE TABLE `hinh_anh_phong_tro` (
  `IDimage` int(11) NOT NULL,
  `IDPhongTro` int(11) NOT NULL,
  `DuongDan` text CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `hinh_anh_phong_tro`
--

INSERT INTO `hinh_anh_phong_tro` (`IDimage`, `IDPhongTro`, `DuongDan`) VALUES
(3, 28, 'uploads/2.jpg'),
(4, 29, 'uploads/5.jpg'),
(5, 30, 'uploads/6.jpg'),
(6, 30, 'uploads/7.jpg'),
(9, 32, 'uploads/10.jpg'),
(10, 32, 'uploads/11.jpg'),
(11, 32, 'uploads/12.jpg'),
(12, 33, 'uploads/1.jpg'),
(14, 33, 'uploads/4.jpg'),
(15, 33, 'uploads/13.jpg'),
(16, 34, 'uploads/15.jpg'),
(17, 34, 'uploads/16.jpg'),
(18, 34, 'uploads/17.jpg'),
(19, 34, 'uploads/18.jpg'),
(20, 35, 'uploads/19.jpg'),
(21, 36, 'uploads/21.jpg'),
(22, 36, 'uploads/22.jpg'),
(23, 37, 'uploads/20.jpg'),
(25, 39, 'uploads/24.jpg'),
(26, 40, 'uploads/23.jpg'),
(27, 41, 'uploads/26.jpg'),
(28, 41, 'uploads/27.jpg'),
(29, 41, 'uploads/28.jpg'),
(30, 41, 'uploads/29.jpg'),
(31, 42, 'uploads/30.jpg'),
(32, 43, 'uploads/41.jpg'),
(33, 43, 'uploads/42.jpg'),
(34, 43, 'uploads/43.jpg'),
(35, 43, 'uploads/44.jpg'),
(38, 47, 'uploads/50.jpg'),
(39, 47, 'uploads/51.jpg'),
(40, 47, 'uploads/52.jpg'),
(41, 48, 'uploads/45.jpg'),
(44, 51, 'uploads/50.jpg'),
(45, 52, 'uploads/48.jpg'),
(47, 54, 'uploads/52.jpg'),
(48, 54, 'uploads/53.jpg'),
(49, 55, 'uploads/37.jpg'),
(50, 55, 'uploads/38.jpg'),
(51, 55, 'uploads/41.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_name` varchar(20) CHARACTER SET latin1 NOT NULL,
  `password` varchar(40) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_name`, `password`) VALUES
('admin', '123456'),
('chinh', '123456'),
('diepdx', '123456'),
('hoangnv', '123456'),
('hung63', '12345678'),
('imanewbie', 'k62ie9uet'),
('linhhp', '123456'),
('ndt0123', '123456'),
('newaccount', '12345678'),
('newmember', 'k62ie9uet'),
('newsignUp', 'k62ie9uet'),
('nguyendv99', '123456'),
('phanthi123', '12345678'),
('tam0123', '123456'),
('thangnm', '123456');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bai_dang`
--
ALTER TABLE `bai_dang`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_name` (`user_name`);

--
-- Indexes for table `dia_chi_phong_tro`
--
ALTER TABLE `dia_chi_phong_tro`
  ADD PRIMARY KEY (`IDPhongTro`);

--
-- Indexes for table `gia_phong_tro`
--
ALTER TABLE `gia_phong_tro`
  ADD PRIMARY KEY (`IDPhongTro`),
  ADD KEY `user_name` (`user_name`);

--
-- Indexes for table `hinh_anh_bai_dang`
--
ALTER TABLE `hinh_anh_bai_dang`
  ADD PRIMARY KEY (`IDimage`),
  ADD KEY `IDBaiDang` (`IDBaiDang`);

--
-- Indexes for table `hinh_anh_phong_tro`
--
ALTER TABLE `hinh_anh_phong_tro`
  ADD PRIMARY KEY (`IDimage`),
  ADD KEY `IDPhongTro` (`IDPhongTro`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_name`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bai_dang`
--
ALTER TABLE `bai_dang`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `dia_chi_phong_tro`
--
ALTER TABLE `dia_chi_phong_tro`
  MODIFY `IDPhongTro` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `gia_phong_tro`
--
ALTER TABLE `gia_phong_tro`
  MODIFY `IDPhongTro` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `hinh_anh_bai_dang`
--
ALTER TABLE `hinh_anh_bai_dang`
  MODIFY `IDimage` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hinh_anh_phong_tro`
--
ALTER TABLE `hinh_anh_phong_tro`
  MODIFY `IDimage` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `bai_dang`
--
ALTER TABLE `bai_dang`
  ADD CONSTRAINT `bai_dang_ibfk_1` FOREIGN KEY (`user_name`) REFERENCES `user` (`user_name`) ON UPDATE CASCADE;

--
-- Constraints for table `gia_phong_tro`
--
ALTER TABLE `gia_phong_tro`
  ADD CONSTRAINT `gia_phong_tro_ibfk_1` FOREIGN KEY (`IDPhongTro`) REFERENCES `dia_chi_phong_tro` (`IDPhongTro`) ON UPDATE CASCADE,
  ADD CONSTRAINT `gia_phong_tro_ibfk_2` FOREIGN KEY (`user_name`) REFERENCES `user` (`user_name`) ON UPDATE CASCADE;

--
-- Constraints for table `hinh_anh_bai_dang`
--
ALTER TABLE `hinh_anh_bai_dang`
  ADD CONSTRAINT `hinh_anh_bai_dang_ibfk_1` FOREIGN KEY (`IDBaiDang`) REFERENCES `bai_dang` (`ID`) ON UPDATE CASCADE;

--
-- Constraints for table `hinh_anh_phong_tro`
--
ALTER TABLE `hinh_anh_phong_tro`
  ADD CONSTRAINT `hinh_anh_phong_tro_ibfk_1` FOREIGN KEY (`IDPhongTro`) REFERENCES `dia_chi_phong_tro` (`IDPhongTro`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
