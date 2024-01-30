import 'package:flutter/material.dart';

String uri = 'http://<yourip>:3000';

class Novel {
  final int id;
  final int userId;
  final int bookId;
  final String bookName;
  final String bookSlug;
  final Map<String, String> bookPoster;
  final int latestIndex;
  final int chapterId;
  final int chapterIndex;
  final String authorName;
  final String bookSynopsis;
  final int subscriptionId;
  final String subscriptionStatus;
  final String url;
  final String createdAt;

  Novel({
    required this.id,
    required this.userId,
    required this.bookId,
    required this.bookName,
    required this.bookSlug,
    required this.bookPoster,
    required this.latestIndex,
    required this.chapterId,
    required this.chapterIndex,
    required this.authorName,
    required this.bookSynopsis,
    required this.subscriptionId,
    required this.subscriptionStatus,
    required this.url,
    required this.createdAt,
  });
}

class GlobalVariables {
  // COLORS
  static const appBarGradient = LinearGradient(
    colors: [
      Color.fromARGB(255, 29, 201, 192),
      Color.fromARGB(255, 125, 221, 216),
    ],
    stops: [0.5, 1.0],
  );

  static const secondaryColor = Color.fromRGBO(255, 153, 0, 1);
  static const backgroundColor = Colors.white;
  static const Color greyBackgroundCOlor = Color(0xffebecee);
  static var selectedNavBarColor = Colors.cyan[800]!;
  static const unselectedNavBarColor = Colors.black87;

  // STATIC IMAGES
  static const List<String> carouselImages = [
    "https://res.cloudinary.com/dayqaa8if/image/upload/v1706412734/hobanovel/carousel/3cacea3d8088a68296107169710d5f4b_mzv2le.webp",
    "https://res.cloudinary.com/dayqaa8if/image/upload/v1706412734/hobanovel/carousel/0cbed5e61027a26648aee3b609c02343_vebvvj.webp",
    "https://res.cloudinary.com/dayqaa8if/image/upload/v1706412735/hobanovel/carousel/866d5ee0d1f660771d665e2a86a4961d_c6lad0.jpg",
    "https://res.cloudinary.com/dayqaa8if/image/upload/v1706412735/hobanovel/carousel/3247e2a49468941c8d63d69049f7443a_v0cakr.webp",
    "https://res.cloudinary.com/dayqaa8if/image/upload/v1706412735/hobanovel/carousel/3247e2a49468941c8d63d69049f7443a_v0cakr.webp",
    "https://res.cloudinary.com/dayqaa8if/image/upload/v1706412734/hobanovel/carousel/1b1c87dfcdac3e6efb037421a6049d09_xgzgen.jpg",
    "https://res.cloudinary.com/dayqaa8if/image/upload/v1706412734/hobanovel/carousel/cd00f3055d2c4b6040ab3ba52d0981a8_g9ukzy.webp",
    "https://res.cloudinary.com/dayqaa8if/image/upload/v1706412734/hobanovel/carousel/0a055e0a2f923a60093211d659cafd2e_co0xqq.webp",
  ];

  static const List<Map<String, String>> categoryImages = [
    {
      'title': 'Mobiles',
      'image': 'assets/images/mobiles.jpeg',
    },
    {
      'title': 'Essentials',
      'image': 'assets/images/essentials.jpeg',
    },
    {
      'title': 'Appliances',
      'image': 'assets/images/appliances.jpeg',
    },
    {
      'title': 'Books',
      'image': 'assets/images/books.jpeg',
    },
    {
      'title': 'Fashion',
      'image': 'assets/images/fashion.jpeg',
    },
  ];

  static const List<Map<String, dynamic>> novelsNew = [
    {
      "id": 12337670,
      "user_id": 1000020,
      "book_id": 118183,
      "book_name": "Trường Sinh: Theo Khí Vận Dòng Bắt Đầu",
      "book_slug": "truong-sinh-theo-khi-van-dong-bat-dau",
      "book_poster": {
        "150": "https://res.cloudinary.com/dayqaa8if/image/upload/v1706412896/hobanovel/thumbnail/600_wlp5zq.jpg",
        "300": "https://res.cloudinary.com/dayqaa8if/image/upload/v1706412896/hobanovel/thumbnail/600_wlp5zq.jpg",
        "600": "https://res.cloudinary.com/dayqaa8if/image/upload/v1706412896/hobanovel/thumbnail/600_wlp5zq.jpg",
        "default": "https://res.cloudinary.com/dayqaa8if/image/upload/v1706412896/hobanovel/thumbnail/600_wlp5zq.jpg"
      },
      "latest_index": 706,
      "chapter_id": 17343618,
      "chapter_index": 706,
      "author_name": "Giang Thượng Cảnh",
      "book_synopsis": "Khương Nguyên xuyên qua đến một phương huyền huyễn thế giới.  \tPhụ thân là một huyện đại lão, vốn cho là cẩm y phú quý.  \tKhông nghĩ tới phụ thân áp tiêu bị cướp, toàn quân bị diệt.  \tTrong vòng một đêm mọi người nhìn qua phụ thân hắn lưu lại vạn kim tài sản nhìn chằm chằm.  \tMay mắn hắn sớm đã đã thức tỉnh bảng khí vận, có thể nhìn người khác tiên thiên khí vận, có thể thăng cấp tự thân khí vận thiên phú.  \tThân thể cường tráng (trắng)→ thể trạng phi phàm (lục)→ Long Hổ chi khu (lam)→? ? ? (vàng)  \tNgộ tính xuất chúng (lục)→? ? ? (vàng)  \t. . .  \t【  vạn thọ vô cương (tím) 】: Tăng thọ vạn, vĩnh bảo thanh xuân!  \t【  thượng cổ Trùng Đồng (vàng) 】: Trời sinh Trùng Đồng, Nhân Hoàng dị tượng , giống như là thời cổ Nhân Hoàng tại thế, thiên tư tuyệt thế.  \t【  Ngũ Sắc Thần Quang (vàng) 】: Trời sinh thần thông, một khi tế ra, ngũ hành bên trong, không gì không quét, không gì không phá!  \t【  không nhập luân hồi (đỏ) 】: Trời sinh cấm kỵ, vĩnh viễn không rơi vào trong luân hồi, có thể vĩnh viễn bảo trì chân linh không mê muội chuyển thế trùng sinh.  \tTừng cái từng cái khí vận dòng hợp thành tuyệt thế thiên kiêu!  \tMà hắn cũng phát hiện mình có thể không ngừng thu hoạch được tiên thiên khí vận đồng thời thêm vào thăng cấp.  \tThiên phú biến đến quan cổ tuyệt kim, dần dần đi lên con đường vô địch.",
      "subscription_id": null,
      "subscription_status": null,
      "url": "javascript:",
      "created_at": "2023-05-07T02:58:22.000000Z"
    },
    {
      "id": 18371457,
      "user_id": 1000010,
      "book_id": 122915,
      "book_name": "Dung Hợp Công Pháp: Từ Gia Tộc Tộc Trưởng Bắt Đầu",
      "book_slug": "dung-hop-cong-phap-tu-gia-toc-toc-truong-bat-dau",
      "book_poster": {
        "150": "https://res.cloudinary.com/dayqaa8if/image/upload/v1706412931/hobanovel/thumbnail/600_pk9igh.jpg",
        "300": "https://res.cloudinary.com/dayqaa8if/image/upload/v1706412931/hobanovel/thumbnail/600_pk9igh.jpg",
        "600": "https://res.cloudinary.com/dayqaa8if/image/upload/v1706412931/hobanovel/thumbnail/600_pk9igh.jpg",
        "default": "https://res.cloudinary.com/dayqaa8if/image/upload/v1706412931/hobanovel/thumbnail/600_pk9igh.jpg"
      },
      "latest_index": 273,
      "chapter_id": 17293479,
      "chapter_index": 100,
      "author_name": "Phô Bất Liễu",
      "book_synopsis": "\tGiang Phong là một nhà Game Online công ty nhân viên developer, xuyên việt trước, đang ở khai phát một cái dung hợp thế giới võ hiệp trò chơi.  \tTrò chơi này bao hàm đại vân sở hữu đại hình triều đại, Tần,Hán, Đường, Tống, Nguyên, Minh, Thanh...các loại, cũng đem Kim Cổ Hoàng các loại võ hiệp nhân vật, đều hỗn hợp ở trong đó.  \tCũng may Giang Phong mang theo công pháp dung hợp hệ thống cùng xuyên việt đến rồi!  \tNguyên tưởng rằng là một cái bình thường không có gì lạ Võ Hiệp thế giới, thẳng đến phát hiện, Di Sơn Đảo Hải dường như không có khó khăn như vậy, mới ý thức tới thế giới này không đơn giản.  \tSinh ra thương gia giàu có gia tộc, dẫn dắt gia tộc kiêu ngạo biến cường.  \tNơi nào có người, nơi đó tất có Giang gia cửa hàng.  \tLàm cái kia một cái sâu không thấy đáy Thiên Uyên xuất hiện, bí ẩn thế giới từng bước vạch trần mới diện mục.  Cảnh giới: Hậu Thiên (cửu phẩm-nhất phẩm) - Tiên Thiên - Tông Sư - Đại Tông Sư...  công pháp cấp bậc: Hậu Thiên - Tiên Thiên (sơ, trung, cao, đỉnh) - Tông Sư - Đại Tông Sư... công pháp phẩm chất: Hoàng - Huyền - Địa - Thiên - Thần... ví dụ Hậu Thiên cao thủ học Hậu Thiên Thiên cấp công pháp, có thể vượt cấp vã Tiên Thiên cao thủ học Hoàng cấp công pháp  Dị thú: Nhất giai, Nhị giai, Tam giai  Cao võ nhé, có Dị thú, Yêu thú các kiểu, hiểu đơn giản thì là võ hiệp bản tu tiên, có đan dược, linh dược, nội đan, yêu thú tài liệu làm vũ khí... tác ra hơn 500k chữ r nhé",
      "subscription_id": null,
      "subscription_status": null,
      "url": "javascript:",
      "created_at": "2024-01-10T04:20:35.000000Z"
    },
    {
      "id": 17458620,
      "user_id": 1000015,
      "book_id": 104476,
      "book_name": "Đạo Lữ Hung Mãnh Cũng Trùng Sinh",
      "book_slug": "dao-lu-hung-manh-cung-trung-sinh",
      "book_poster": {
        "150": "https://res.cloudinary.com/dayqaa8if/image/upload/v1706412985/hobanovel/thumbnail/600_dmx0yz.jpg",
        "300": "https://res.cloudinary.com/dayqaa8if/image/upload/v1706412985/hobanovel/thumbnail/600_dmx0yz.jpg",
        "600": "https://res.cloudinary.com/dayqaa8if/image/upload/v1706412985/hobanovel/thumbnail/600_dmx0yz.jpg",
        "default": "https://res.cloudinary.com/dayqaa8if/image/upload/v1706412985/hobanovel/thumbnail/600_dmx0yz.jpg"
      },
      "latest_index": 556,
      "chapter_id": 12838838,
      "chapter_index": 8,
      "author_name": "Vũ Hạ Đích Hảo Đại",
      "book_synopsis": "Lục Thủy thân là Lục gia duy nhất nam đinh, hôm nay nhận được trong tộc đại lão mệnh lệnh: Tiến về Mộ gia từ hôn.  \tNghe nói Mộ gia thiên chi kiều nữ trong vòng một đêm tu vi mất hết biến thành phế vật, dẫn đến Lục gia đại lão phi thường bất mãn, muốn từ hôn, thay hôn tuyển.  \tBình thường Lục Thủy không có cự tuyệt.  \tMà khi Lục Thủy đi vào Mộ gia nhìn thấy vị hôn thê thời điểm, mộng bức, nguyên lai thê tử ở kiếp trước hung mãnh lại bất hòa này cũng trùng sinh.",
      "subscription_id": null,
      "subscription_status": null,
      "url": "javascript:",
      "created_at": "2020-07-09T10:00:10.000000Z"
    },
    {
      "id": 17620713,
      "user_id": 1000016,
      "book_id": 103944,
      "book_name": "Ta Thật Không Phải Khí Vận Chi Tử",
      "book_slug": "ta-that-khong-phai-khi-van-chi-tu",
      "book_poster": {
        "150": "https://res.cloudinary.com/dayqaa8if/image/upload/v1706413019/hobanovel/thumbnail/600_mjhhue.jpg",
        "300": "https://res.cloudinary.com/dayqaa8if/image/upload/v1706413019/hobanovel/thumbnail/600_mjhhue.jpg",
        "600": "https://res.cloudinary.com/dayqaa8if/image/upload/v1706413019/hobanovel/thumbnail/600_mjhhue.jpg",
        "default": "https://res.cloudinary.com/dayqaa8if/image/upload/v1706413019/hobanovel/thumbnail/600_mjhhue.jpg"
      },
      "latest_index": 512,
      "chapter_id": 12637941,
      "chapter_index": 3,
      "author_name": "Vân Trung Điện",
      "book_synopsis": "Thanh Nguyệt tiên tử: Ta từng cùng sư huynh đi về phía tây ba ngàn dặm, tại Côn Luân bí cảnh đến Nhật Nguyệt Kim Luân!  \tLinh Lung đế cơ: Ta từng bồi sư huynh xâm nhập Đông Hải Đế Táng Cốc, cùng một chỗ tiếp nhận Đan Đế truyền thừa!  \tBất Tử hoàng hậu: Ha ha, một đám chim non! Biết hắn Long Hoàng Bất Diệt Thể làm sao tới sao?  \t...  \tXuyên qua Tu Tiên Giới, Thẩm Thiên phát hiện chính mình có thể nhìn thấy bên người những người khác khí vận cùng cơ duyên .  \tÔm cọ đại lão nhân vật chính quang hoàn ý nghĩ, Thẩm Thiên bắt đầu chủ động kết giao cái kia chút khí vận chi tử .  \t...  \tVề sau mọi người dần dần phát hiện: Vô luận là ai, chỉ cần cùng Thẩm Thiên cùng một chỗ lịch luyện, liền tất nhiên gặp được đại cơ duyên, chưa từng ngoại lệ!  \tTừ ngày đó trở đi, Trầm Thiên Thành Tu Tiên Giới được hoan nghênh nhất vật biểu tượng .",
      "subscription_id": null,
      "subscription_status": null,
      "url": "javascript:",
      "created_at": "2020-04-21T13:18:48.000000Z"
    },
    {
      "id": 17626646,
      "user_id": 1000181,
      "book_id": 104298,
      "book_name": "Vô Địch Gian Thương",
      "book_slug": "vo-dich-gian-thuong",
      "book_poster": {
        "150": "https://res.cloudinary.com/dayqaa8if/image/upload/v1706413041/hobanovel/thumbnail/600_fxpzpo.jpg",
        "300": "https://res.cloudinary.com/dayqaa8if/image/upload/v1706413041/hobanovel/thumbnail/600_fxpzpo.jpg",
        "600": "https://res.cloudinary.com/dayqaa8if/image/upload/v1706413041/hobanovel/thumbnail/600_fxpzpo.jpg",
        "default": "https://res.cloudinary.com/dayqaa8if/image/upload/v1706413041/hobanovel/thumbnail/600_fxpzpo.jpg"
      },
      "latest_index": 562,
      "chapter_id": 12786341,
      "chapter_index": 1,
      "author_name": "DongHo",
      "book_synopsis": "Đây là một thế giới tưởng tượng với những quỹ tích lịch sử vừa có sự tương đồng, vừa có sự khác biệt với thế giới chúng ta đang sống.  Câu chuyện bắt đầu từ những năm đầu thập niên 90 của thế kỷ trước khi VN bước vào thời kỳ đổi mới. Đối với người đời sau mà nói, đây chính là thời điểm khởi phát hoàn hảo của vô số những cự đầu thương nghiệp.  Một năm này, thiếu niên nông thôn Đỗ Bá Cường vừa tròn mười sáu tuổi, đứng trước ngưỡng cửa trưởng thành.  Đối mặt với hoàn cảnh nông thôn nghèo đói, gia cảnh mẹ góa con côi, muôn đường mưu sinh vất vả, Đỗ Bá Cường trong lòng chỉ có một ý niệm:  “Nên là của ta, vẫn là của ta;  Không nên là của ta, đồng dạng là của ta!\"  Đỗ Bá Cường với khả năng thích ứng cực cao, tài năng kinh tế trác tuyệt cùng thủ đoạn tàn nhẫn vô song, hắn đã một tay từng bước biến vùng đất nghèo khó quê hương thành một thủ phủ công thương nghiệp hàng đầu của đất nước.  Kiếm tiền chỉ là giai đoạn sơ cấp, leo lên Time Magazine, chế tạo IT sản nghiệp , vấn đỉnh Forbes bảng mới là chân chính trâu bò thế nhưng sau cùng cái gì mới gọi là cảnh giới tối cao?  Phát huy chữ “Gian” tới chỗ cực điểm, gây dựng nên gia tài khổng lồ từ hai bàn tay trắng, đứng trên đỉnh cao nhân sinh xứng danh cùng tôn xưng “Huyền thoại” thế nhưng sau tất cả, liệu Đỗ Bá Cường có thật sự hạnh phúc? Danh vọng, tiền bạc cuối cùng có là lẽ sống duy nhất mà hắn phải theo đuổi?   Câu trả lời sẽ dần được gợi mở qua các chương truyện! Mời các bạn cùng theo dõi hành trình lắm thị phi, nhiều góc khuất nhưng không thiếu đi sự thú vị trên từng nấc thang để trở thành một một tài phiệt khét tiếng toàn cầu của Đỗ Bá Cường.  P/s 1: Ta viết cho dị giới nên có nhiều sự khác biệt với thực tế. Main không xuyên không, không phải trùng sinh nên việc tồn tại main với tài năng trác tuyệt đưa nước nhà giàu mạnh đi lên vốn đã là một sự \"ảo\" không hề nhẹ rồi. Hãy coi như câu chuyện được diễn ra ở một thế giới khác hoàn toàn độc lập với thế giới chúng ta đang sống, nơi đây ta xây dựng nên một nhận vật đặc biệt cùng câu chuyện của riêng hắn. Ở một vài chi tiết như vật giá chẳng hạn, các đạo hữu không cần phải quá bám sát theo thực tế làm gì, cứ nghĩ đơn giản là thứ này lên giá so với thực tế thì vật giá các thứ khác cũng lên là được.  p/s: 2 Nếu thấy truyện hay, đừng quên vote, buff Nguyệt phiếu cùng Kim đậu làm động lực cho ...",
      "subscription_id": null,
      "subscription_status": null,
      "url": "javascript:",
      "created_at": "2020-06-19T09:09:00.000000Z"
    },
    {
      "id": 17479129,
      "user_id": 1000020,
      "book_id": 100669,
      "book_name": "Ta Man Hoang Bộ Lạc",
      "book_slug": "ta-man-hoang-bo-lac",
      "book_poster": {
        "150": "https://res.cloudinary.com/dayqaa8if/image/upload/v1706413068/hobanovel/thumbnail/600_skw7hn.jpg",
        "300": "https://res.cloudinary.com/dayqaa8if/image/upload/v1706413068/hobanovel/thumbnail/600_skw7hn.jpg",
        "600": "https://res.cloudinary.com/dayqaa8if/image/upload/v1706413068/hobanovel/thumbnail/600_skw7hn.jpg",
        "default": "https://res.cloudinary.com/dayqaa8if/image/upload/v1706413068/hobanovel/thumbnail/600_skw7hn.jpg"
      },
      "latest_index": 1153,
      "chapter_id": 12163622,
      "chapter_index": 73,
      "author_name": "Tiểu Tiểu Yêu Tiên",
      "book_synopsis": "Cổ Trần tỉnh lại sau giấc ngủ, thành một cái nguyên thủy bộ lạc tiểu tộc trưởng.  Ngươi nói bộ lạc Tế Thần mỗi năm đều muốn ăn hết mười cái tộc nhân?  Bên ngoài hung thú hoành hành, bách tộc vi tôn?  Nói đùa, đường đường Nhân tộc, vậy mà biến thành các tộc nuôi nhốt nô lệ cùng khẩu phần lương thực?  Cổ Trần huy kiếm đối với Man Hoang Bách Tộc nộ khiếu: \"Ta Nhân tộc, vĩnh không khuất phục, giết ta một người, tru ngươi toàn tộc!\"  Lấy bách tộc chi huyết, đúc ta Nhân tộc bất hủ Anh Linh!  PS: Thứ 2 ra c...............",
      "subscription_id": null,
      "subscription_status": null,
      "url": "javascript:",
      "created_at": "2020-03-26T06:55:28.000000Z"
    },
    {
      "id": 17626752,
      "user_id": 1000016,
      "book_id": 103901,
      "book_name": "Vô Địch Sư Thúc Tổ",
      "book_slug": "vo-dich-su-thuc-to",
      "book_poster": {
        "150": "https://res.cloudinary.com/dayqaa8if/image/upload/v1706413088/hobanovel/thumbnail/600_mt1mqg.jpg",
        "300": "https://res.cloudinary.com/dayqaa8if/image/upload/v1706413088/hobanovel/thumbnail/600_mt1mqg.jpg",
        "600": "https://res.cloudinary.com/dayqaa8if/image/upload/v1706413088/hobanovel/thumbnail/600_mt1mqg.jpg",
        "default": "https://res.cloudinary.com/dayqaa8if/image/upload/v1706413088/hobanovel/thumbnail/600_mt1mqg.jpg"
      },
      "latest_index": 431,
      "chapter_id": 12622947,
      "chapter_index": 4,
      "author_name": "Cửu Thứ Tuyệt",
      "book_synopsis": "Ta gọi Tần Giác, năm nay mười sáu tuổi, là Huyền Ất Sơn sử thượng trẻ tuổi nhất sư thúc tổ .  \tCũng là trên cái thế giới này cường đại nhất tồn tại .  \t(PS: Vô địch văn)",
      "subscription_id": null,
      "subscription_status": null,
      "url": "javascript:",
      "created_at": "2020-04-15T10:45:29.000000Z"
    },
    {
      "id": 13942024,
      "user_id": 1000043,
      "book_id": 111544,
      "book_name": "Cẩu Thả Tại Nữ Ma Đầu Bên Người Vụng Trộm Tu Luyện",
      "book_slug": "bat-dau-nu-ma-dau-phu-ta",
      "book_poster": {
        "150": "https://res.cloudinary.com/dayqaa8if/image/upload/v1706413107/hobanovel/thumbnail/600_akkbsw.jpg",
        "300": "https://res.cloudinary.com/dayqaa8if/image/upload/v1706413107/hobanovel/thumbnail/600_akkbsw.jpg",
        "600": "https://res.cloudinary.com/dayqaa8if/image/upload/v1706413107/hobanovel/thumbnail/600_akkbsw.jpg",
        "default": "https://res.cloudinary.com/dayqaa8if/image/upload/v1706413107/hobanovel/thumbnail/600_akkbsw.jpg"
      },
      "latest_index": 1315,
      "chapter_id": 17341235,
      "chapter_index": 1311,
      "author_name": "Phạ Lạt Đích Hồng Tiêu",
      "book_synopsis": "Tên cũ: Bắt Đầu Nữ Ma Đầu Phụ Ta  \tGiang Hạo xuyên qua phổ thông nhân gia, bị ép bán nhập ma môn, trở thành Ma Môn đệ tử.  \tVốn định an tâm tu luyện một chút mạnh lên, tốt tại tu chân giới sinh tồn được, nhưng lại bị một vị nữ ma đầu \"Đủ kiểu nhục nhã\" .  \tThực lực chênh lệch cách xa, hắn chỉ có thể nhẫn nhục sống tạm bợ, hi vọng không cần gặp được đối phương.  \tKhông có có chỗ dựa hắn đạt được Ma Môn chưởng giáo ưu ái, có thể an tâm tu luyện, khi hắn thành vi thủ tịch đệ tử gặp mặt chưởng giáo lúc, lại sững sờ tại tại chỗ.  \tNhìn đối phương tuyệt mỹ khuôn mặt, hắn có chút cười không nổi, đây không phải lúc trước cái kia nữ ma đầu sao?  ",
      "subscription_id": null,
      "subscription_status": null,
      "url": "javascript:",
      "created_at": "2022-03-10T03:02:59.000000Z"
    },
    {
      "id": 18370263,
      "user_id": 1000043,
      "book_id": 118601,
      "book_name": "Thần Thoại Kỷ Nguyên, Ta Tiến Hóa Thành Hằng Tinh Cấp Cự Thú",
      "book_slug": "than-thoai-ky-nguyen-ta-tien-hoa-thanh-hang-tinh-cap-cu-thu",
      "book_poster": {
        "150": "https://res.cloudinary.com/dayqaa8if/image/upload/v1706413128/hobanovel/thumbnail/600_x0omhm.jpg",
        "300": "https://res.cloudinary.com/dayqaa8if/image/upload/v1706413128/hobanovel/thumbnail/600_x0omhm.jpg",
        "600": "https://res.cloudinary.com/dayqaa8if/image/upload/v1706413128/hobanovel/thumbnail/600_x0omhm.jpg",
        "default": "https://res.cloudinary.com/dayqaa8if/image/upload/v1706413128/hobanovel/thumbnail/600_x0omhm.jpg"
      },
      "latest_index": 968,
      "chapter_id": 16303210,
      "chapter_index": 1,
      "author_name": "Quần Ngọc Sơn Đầu Kiến",
      "book_synopsis": "\tTrên trời cao, mấy ngàn thước dáng dấp côn theo vùng trời thành thị bay qua, coi thường thấu trời đạn đạo oanh tạc.  \tÚc Lợi châu, dài đến ngàn mét diệt thế cự mãng phá hủy thành thị, thôn phệ trăm vạn người, tại mấy khoả đạn hạt nhân dưới vụ nổ chậm chậm rời đi.  \tĐi tới cái này nguy hiểm thế giới, bất ngờ thu được một cái cá cóc phân thân Trần Sở có chút mờ mịt.  \tLớn chừng bàn tay lục giác cá cóc có thể làm cái gì?  \tQuay video kiếm lời lưu lượng? Đi dòng suối nhỏ bắt con tôm? Vẫn là. . . Tiến hóa thành cự thú?  \tMột đầu biệt danh Lục Giác Long, nắm giữ vô hạn năng lực tiến hóa lục giác cá cóc, dần dần hướng về truyền thuyết thần thoại diệt thế cự thú tiến hóa.  \tThân dài trăm mét, ngàn mét, mấy vạn mét. . .  \tMà tại đồng bộ cường hóa đặc tính phía dưới, Trần Sở bản thể cũng tại mạnh lên, lực lượng càng lúc càng lớn, tốc độ càng lúc càng nhanh, thậm chí. . .  ",
      "subscription_id": null,
      "subscription_status": null,
      "url": "javascript:",
      "created_at": "2023-06-01T03:55:57.000000Z"
    },
    {
      "id": 18364499,
      "user_id": 1000026,
      "book_id": 122702,
      "book_name": "Liếm Cẩu Phản Diện Chỉ Nghĩ Cẩu , Nữ Chính Không Theo Sáo Lộ Đi",
      "book_slug": "liem-cau-phan-dien-chi-nghi-cau-nu-chinh-khong-theo-sao-lo-di",
      "book_poster": {
        "150": "https://res.cloudinary.com/dayqaa8if/image/upload/v1706413144/hobanovel/thumbnail/600_kkef3s.jpg",
        "300": "https://res.cloudinary.com/dayqaa8if/image/upload/v1706413144/hobanovel/thumbnail/600_kkef3s.jpg",
        "600": "https://res.cloudinary.com/dayqaa8if/image/upload/v1706413144/hobanovel/thumbnail/600_kkef3s.jpg",
        "default": "https://res.cloudinary.com/dayqaa8if/image/upload/v1706413144/hobanovel/thumbnail/600_kkef3s.jpg"
      },
      "latest_index": 637,
      "chapter_id": 17242545,
      "chapter_index": 4,
      "author_name": "Ngã Thị Phẫn Nộ",
      "book_synopsis": "\tMột lần tai nạn xe cộ, để ta xuyên qua đến đô thị sảng văn bên trong làm phản diện, chỉ cần cẩu đến đại kết cục, liền có thể mang lấy phong phú thù lao về đến thế giới hiện thực.  \tNhưng là! Những này tuyệt sắc mỹ nữ đều không đi cho nhân vật nam chính làm hậu cung, mỗi ngày vây quanh ta chuyển, là chê ta chết không đủ nhanh sao?  \tĐừng có lại xuyên tất chân, mặc đồng phục a, các ngươi đều thông đồng ta làm cái gì, đi tìm Long Ngạo Thiên a! Đã thiên mệnh về ta, vậy lão tử dứt khoát cùng nhân vật chính phân cao thấp!  \tNgười nào là nhân vật chính, còn nói không chắc đâu!  ",
      "subscription_id": null,
      "subscription_status": null,
      "url": "javascript:",
      "created_at": "2023-12-29T13:22:31.000000Z"
    }
  ];
}
