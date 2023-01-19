// //  17/10/2022   https://api.flutter.dev/flutter/dart-core/DateTime-class.html
// //  dart:core -> DateTime class

// // yyyy-MM-ddTHH:mm:ss.mmmuuuZ for UTC time, 
// // yyyy-MM-ddTHH:mm:ss.mmmuuu (no trailing "Z") for local/non-UTC time


// // TẠO ĐỐI TƯỢNG DateTime
// // Tạo đối tượng DateTime bằng cách sử dụng một trong các hàm tạo hoặc bằng cách phân tích cú pháp một String được định dạng chính xác, 
// //tuân thủ tập hợp con của ISO 8601. Lưu ý: giờ được chỉ định trong khoảng từ 0 đến 23, như trong đồng hồ 24 giờ.

// final now = DateTime.now();
// final firstDateTime = DateTime.utc(1989, 11, 9);
// final secondDateTime = DateTime.parse('1969-07-20 20:18:04Z'); // Chuyển từ String -> DateTime

// // Đối tượng DateTime được neo trong múi giờ UTC hoặc trong múi giờ Local của máy tính hiện tại khi đối tượng được tạo
// // Sau khi được tạo, cả giá trị và múi giờ của đối tượng DateTime đều không được thay đổi

// print(firstDateTime.year); // 1989
// print(firstDateTime.month); // 11
// print(firstDateTime.day); // 9
// print(secondDateTime.hour); // 20
// print(secondDateTime.minute); // 18




// // LÀM VIỆC VỚI MÚI GIỜ UTC 
// Đối tượng DateTime sẽ được nằm trong múi giờ địa phương trừ khi được tạo rõ ràng trong múi giờ UTC. 
// Sử dụng isUtc để xác định xem một đối tượng DateTime có dựa trên UTC hay không.

// final dDay = DateTime.utc(1944, 6, 6);   // Tạo 1 đối tượng DateTime trên múi giờ 0(UTC)
// print(dDay.isUtc); // true

// final dDayLocal = DateTime(1944, 6, 6);  // Múi giờ Local
// print(dDayLocal.isUtc); // false

// // CHUYỂN ĐỔI GIỮA GIỜ UTC -- GIỜ LOCAL
// Sử dụng các phương thức toLocal và toUtc để nhận giá trị ngày / giờ tương đương được chỉ định trong múi giờ khác.

// final localDay = dDay.toLocal(); // e.g. 1944-06-06 02:00:00.000 Sẽ từ múi giờ UTC -- múi giờ Local
// print(localDay.isUtc); // false

// final utcFromLocal = localDay.toUtc(); // 1944-06-06 00:00:00.000Z
// print(utcFromLocal.isUtc); // true


// // LẤY TÊN VIẾT TẮT MÚI GIỜ CHO 1 ĐỐI TƯỢNG DateTime
// Sử dụng timeZoneName để lấy tên viết tắt của múi giờ cho đối tượng DateTime.
// print(dDay.timeZoneName); // UTC
// print(localDay.timeZoneName); // e.g. EET


// Để tìm sự khác biệt giữa UTC và múi giờ của một đối tượng DateTime, hãy gọi timeZoneOffset

// print(dDay.timeZoneOffset); // 0:00:00.000000
// print(localDay.timeZoneOffset); // e.g. 2:00:00.000000

// // SO SÁNH @ DateTime
// Lớp DateTime chứa các phương thức để so sánh DateTimes theo thứ tự thời gian, chẳng hạn như isAfter, isBefore và isAtSameMomentAs


// print(firstDateTime.isAfter(secondDateTime)); // true   seconDateTime nằm sau firstDateTime
// print(firstDateTime.isBefore(secondDateTime)); // false
// print(dDay.isAtSameMomentAs(localDay)); // true


// // CỘNG TRỪ DateTime
// Tạo ra 1 đối tượng DateTime có sự chênh lệch về thời gian với 1 đối tượng DateTime khác bằng cách sử dụng Duration

// final now = DateTime.now();
// final later = now.add(const Duration(hours: 36));   // DateTime sau cộng thêm 36h 
// final before = now.subtract(const Duration(hours: 36));   // DateTime sau cộng thêm 36h 

// //SỰ CHÊNH LỆCH GIỮA 2 DateTime
// final difference = firstDateTime.difference(secondDateTime);
// print(difference.inDays); // 7416  sự khác biệt là 7416 ngày 


// //Constructors

// DateTime.now()
// //Tạo một phiên bản DateTime với ngày và giờ hiện tại trong múi giờ địa phương.

// DateTime(int year, [int month = 1, int day = 1, int hour = 0, int minute = 0, int second = 0, int millisecond = 0, int microsecond = 0])
// //Đây là dạng khai báo DateTime theo múi giờ Local

// DateTime.utc(int year, [int month = 1, int day = 1, int hour = 0, int minute = 0, int second = 0, int millisecond = 0, int microsecond = 0])
// //Tạo một phiên bản DateTime được chỉ định trong múi giờ UTC.

// DateTime.fromMicrosecondsSinceEpoch(int microsecondsSinceEpoch, {bool isUtc = false})
// //Tạo một phiên bản DateTime mới với micro giây cho trước

// DateTime.fromMillisecondsSinceEpoch(int millisecondsSinceEpoch, {bool isUtc = false})
// //Tạo một phiên bản DateTime mới với mili giâySinceEpoch đã cho.

// ######  Properties 
// now.day   //Trả ra giá trị ngày [1..31]
// hour // [0..23]


// day → int
// The day of the month [1..31].


// hashCode → int
// The hash code for this object.


// hour → int
// The hour of the day, expressed as in a 24-hour clock [0..23].


// isUtc → bool
// True if this DateTime is set to UTC time.


// microsecond → int
// The microsecond [0...999].

// microsecondsSinceEpoch → int
// The number of microseconds since the "Unix epoch" 1970-01-01T00:00:00Z (UTC).

// millisecond → int
// The millisecond [0...999].

// millisecondsSinceEpoch → int
// The number of milliseconds since the "Unix epoch" 1970-01-01T00:00:00Z (UTC).

// minute → int
// The minute [0...59].

// month → int
// The month [1..12].

// runtimeType → Type
// A representation of the runtime type of the object.


// second → int
// The second [0...59].


// timeZoneName → String
// The time zone name.


// timeZoneOffset → Duration
// The time zone offset, which is the difference between local time and UTC.


// weekday → int
// The day of the week monday..sunday.

// year → int
// The year.



// ###### Method 
// add(Duration duration) → DateTime
// //Trả ra 1 DateTime với thời lượng thời gian được thêm vào


// subtract(Duration duration) → DateTime
// //Trả ra 1 DateTime với thời lượng thời gian được trừ đi

// compareTo(DateTime other) → int
// //So sánh đối tượng DateTime này với đối tượng khác, trả về 0 nếu các giá trị bằng nhau.

// difference(DateTime other) → Duration
// Trả về Khoảng thời gian với sự khác biệt với đối tượng DateTime khác

// isAfter(DateTime other) → bool
// Trả về true nếu  DateTime này sau DateTime other

// isBefore(DateTime other) → bool
// Trả về true nếu  DateTime này trước DateTime other

// isAtSameMomentAs(DateTime other) → bool
// Trả về true nếu điều này xảy ra cùng lúc với thời điểm khác.

// toString() → String
// Trả về một chuỗi mà con người có thể đọc được cho trường hợp này.

// toIso8601String() → String
// Trả về biểu diễn định dạng mở rộng chính xác đầy đủ ISO-8601.

// toLocal() → DateTime
// Trả về giá trị DateTime này trong múi giờ địa phương.

// toUtc() → DateTime
// Trả về giá trị DateTime này trong múi giờ UTC.

// ###### Static Methods

// parse(String formattedString) → DateTime
// Tạo một phiên bản DateTime mới dựa trên formattedString.


// tryParse(String formattedString) → DateTime?
// Tạo một phiên bản DateTime mới dựa trên formattedString.


// ##########  Constants

// january → const int
// 1
// february → const int
// 2
// march → const int
// 3
// april → const int
// 4
// may → const int
// 5
// june → const int
// 6
// july → const int
// 7
// august → const int
// 8
// september → const int
// 9
// october → const int
// 10
// november → const int
// 11
// december → const int
// 12

// daysPerWeek → const int
// 7
// monthsPerYear → const int
// 12

// monday → const int
// 1
// tuesday → const int
// 2
// wednesday → const int
// 3
// thursday → const int
// 4
// friday → const int
// 5
// saturday → const int
// 6
// sunday → const int
// 7


// // UTC là múi giờ 0
// // toLocal Là múi giờ địa Phương có cộng 7
// //###### định dạng String toIso8601String()  là định dạng làm việc với backend
// // HH là định dạng 24h 


// // Accepted String Patterns:
// // "2012-02-27"
// // "2012-02-27 13:27:00"
// // "2012-02-27 13:27:00.123456789z"
// // "2012-02-27 13:27:00,123456789z"
// // "20120227 13:27:00"
// // "20120227T132700"
// // "20120227"
// // "+20120227"
// // "2012-02-27T14Z"
// // "2012-02-27T14+00:00"
// // "-123450101 00:00:00 Z": in the year -12345.
// // "2002-02-27T14:00:00-0500": Same as "2002-02-27T19:00:00Z"


// //   # chuyển String --> DateTime
// //   DateTime.parse('String')
// //   var parsedDate = DateTime.parse('1974-03-20 00:00:00.000');

// //   # chuyển DateTime --> String 
// //   dateFormate = DateFormat("dd-MM-yyyy").format(DateTime.now())
// //   dateFormate = DateFormat("dd-MM-yyyy").format(DateTime.parse("2022-05-24"))

// //#### https://stackoverflow.com/questions/50758072/date-time-format-in-flutter-dd-mm-yyyy-hhmm

// //parse() là nhận String -> DateTime 
// // DateTime.parse('1969-07-20 20:18:04Z')   // String -> DateTime (Không gấn lại định dạng)
// // var inputDate = DateFormat('dd/MM/yyyy HH:mm').parse('31/12/2000 23:59');     //  STring -> DateTime (Có gán lại định dạng)


// //format() là nhận DateTime -> String
// // var outputDate = DateFormat('MM/dd/yyyy hh:mm a').format(DateTime.now());    // DateTime -> String (Có gán lại định dạng )
// //print(outputDate); // 12/31/2000 11:59 PM <-- MM/dd 12H format

// ######## DateFormat class của thư viện  intl Flutter
// DateFormat dùng để định dạng và phân tích cú pháp ngày tháng 
// Nó cho phép người dùng chọn từ một tập hợp các định dạng ngày giờ tiêu chuẩn cũng như chỉ định một mẫu tùy chỉnh theo các ngôn ngữ nhất định
// Các yếu tố ngày khác nhau giữa các ngôn ngữ bao gồm tên tháng, tên tuần, thứ tự trường, v.v. Chúng tôi cũng cho phép người dùng sử dụng bất kỳ mẫu tùy chỉnh nào để phân tích cú pháp hoặc định dạng chuỗi ngày-giờ theo một số ngôn ngữ nhất định.
// Các yếu tố ngày khác nhau giữa các ngôn ngữ bao gồm tên tháng, tên tuần, trường, đơn hàng, v.v.

// Định dạng ngày ở định dạng 'en_US' mặc định không yêu cầu bất kỳ khởi tạo nào

// Tùy chọn dễ nhất là dữ liệu có thể có sẵn cục bộ, được nhập vào thư viện chứa dữ liệu cho tất cả các ngôn ngữ

//  DateFormat.yMd()                 -> 7/10/1996
//  DateFormat('yMd')                -> 7/10/1996
//  DateFormat.yMMMMd('en_US')       -> July 10, 1996
//  DateFormat.jm()                  -> 5:08 PM
//  DateFormat.yMd().add_jm()        -> 7/10/1996 5:08 PM
//  DateFormat.Hm()                  -> 17:08 // force 24 hour time

// ######### Constructors
 
// DateFormat([String? newPattern, String? locale])
// Nhận vào 1 String (chứa định dạng Datime mới):  Tạo DateFormat mới, sử dụng định dạng do newPattern chỉ định.

//  DateFormat là định dạng lại kiểu cho DateTime
//  DateFormat('MM/dd/yyyy hh:mm a').parse('31/12/2000 23:59')---> trả ra 1 DateTime có định dạng 'MM/dd/yyyy hh:mm a'
//  DateFormat('MM/dd/yyyy hh:mm a').format(DateTime.now())   --->  trả ra 1 String có định dạng 'MM/dd/yyyy hh:mm a'


// ------- CASE: 
//  # 18/10/2022 :  convert  1 string -> DateTime -> String kiểu toIso8601String()  //Định dạng làm việc với backend
//  nhưng thời gian năm - tháng - ngày - giờ - phút - giây thay đổi
//         DateTime.parse("31/12/2000 23:59").toIso8601String()

//       "startDate": DateTime.parse("${state.startDay}").toIso8601String(),
//       "endDate": DateTime(DateTime.parse("${state.startDay}").year, DateTime.parse("${state.startDay}").month, DateTime.parse("${state.startDay}").day, 23, 59, 59).toIso8601String(),
         
//           startDay: DateTime(DateTime.now().subtract(const Duration(days: 7)).year, DateTime.now().subtract(const Duration(days: 7)).month, DateTime.now().subtract(const Duration(days: 7)).day).toIso8601String(),
//           endDay:DateTime(DateTime.now().year, DateTime.now().month, DateTime.now().day, 23, 59, 59).toIso8601String() ,






