create database DataWeb1
go
use DataWeb1
go
create table TheLoai
(
MaTheLoai int primary key identity,
TenTheLoai nvarchar(25),
)
alter table dbo.Theloai add link char(50)
create table Phim
(
MaPhim int primary key identity ,
TenPhim nvarchar(50),
TenAnh ntext,
NoiDung ntext,
DienVien nvarchar(100),
LinkPhim char(200),
LinkVideo ntext,
MaTheLoai int references dbo.Theloai(MaTheLoai),
)

create  table Anh
(
MaAnh int identity primary key,
MaPhim int references dbo.Phim(MaPhim) ,
TenAnh ntext,
)
create table taikhoan
(
stt int identity,
Tentk nvarchar(200),
matkhau nvarchar(200),
email nvarchar(200)
)
alter table dbo.taikhoan add primary key(stt)
create table nhanxetphim
(
stt int identity primary key,
Ten nvarchar(50),
noidung nvarchar(50),
maphim int references dbo.Phim(maphim)
)
--dl thể loại
insert dbo.TheLoai(TenTheLoai)
values(N'Hành động')
insert dbo.TheLoai(TenTheLoai)
values(N'Hoạt hình')
insert dbo.TheLoai(TenTheLoai)
values(N'Hài hước')
insert dbo.TheLoai(TenTheLoai)
values(N'Kinh dị')
use DataWeb
go

update dbo.TheLoai set link='Hanhdong' where MaTheLoai=1
update dbo.TheLoai set link='Hoathinh' where MaTheLoai=2
update dbo.TheLoai set link='Haihuoc' where MaTheLoai=3
update dbo.TheLoai set link='Kinhdi' where MaTheLoai=4



--dữ liệu phim
insert dbo.Phim(TenPhim,TenAnh,NoiDung,DienVien,LinkVideo,MaTheLoai)
values(N'Ác quỷ ma sơ',N'ac-quy-ma-so-the-nun-2018-c706a1d4b4.jpg',N'Bộ phim lấy bối cảnh vào năm 1952 tại Romania, hai nữ tu Công giáo La Mã sống tại Tu viện Carța đi vào một đường hầm tăm tối, họ cầm theo một chiếc chìa khóa với mục đích lấy lại một di tích Thiên Chúa giáo cổ đại, họ đã bị tấn công bởi một thế lực vô hình. Nữ tu Victoria may mắn sống sót đã cầm theo chiếc chìa khóa và chạy trốn khỏi kẻ tấn công, đó là một con ác quỷ xuất hiện với hình dạng một nữ tu, sau đó sơ Victoria đã tự treo cổ mình khi trong tay vẫn còn cầm chặt chiếc chìa khóa. Thi thể của cô được phát hiện bởi Frenchie, một người Pháp gốc Canada sinh sống tại Romania, anh là một dân làng chở vật tư cho các nữ tu tại tu viện Carta',N'',N'TheNun.mp4',4)

insert dbo.Phim(TenPhim,TenAnh,NoiDung,DienVien,LinkVideo,MaTheLoai)
values(N'Ainbo',N'3.jpg',N'Ainbo kể câu chuyện về một cô gái trẻ lớn lên trong rừng sâu nhất của Amazon mang tên Colonia, trái tim Thần Linh mạnh nhất của rừng nhiệt đới. Một ngày Ainbo phát hiện ra thiên đường của cô đang bị đe dọa bởi Yacuruna, một con quỷ cổ đại hiện thân cho cái ác của nhân loại. Ainbo đấu tranh chống lại tham lam, phá rừng và khai thác trái phép đang gây dịch bệnh cho người dân của cô',N'',N'Ainbo - Spirit Of The Amazon (2019) Trailer.mp4',2)

insert dbo.Phim(TenPhim,TenAnh,NoiDung,DienVien,LinkVideo,MaTheLoai)
values(N'Ám ảnh kinh hoàng',N'5b2530970df938466dc09bf9_480x.jpg',N'The Conjuring (tựa tiếng Việt: Ám ảnh kinh hoàng hay Gọi hồn) là một bộ phim kinh dị siêu nhiên của điện ảnh Hoa Kỳ công chiếu vào năm 2013, đạo diễn bởi James Wan. Hai diễn viên Vera Farmiga và Patrick Wilson vào vai Ed và Lorraine Warren, họ là những nhà điều tra các hiện tượng siêu nhiên xảy ra trên nước Mỹ. Những báo cáo của họ còn truyền cảm hứng cho cuốn tiểu thuyết Amityville Horror. Trong phim hai vợ chồng Warren là những người điều tra các hiện tượng siêu nhiên, họ đến để hỗ trợ gia đình Perron (Ron Livingston và Lili Taylor) đang trải qua các sự kiện ngày càng đáng lo ngại trong trang trại của họ ở Harrisville, Rhode Island vào năm 1971.',N'',N'Annabelle1.mp4',4)

insert dbo.Phim(TenPhim,TenAnh,NoiDung,DienVien,LinkVideo,MaTheLoai)
values(N'Ant man',N'antman.jpg',N'Năm 1989, nhà khoa học Hank Pym đã rời khỏi tổ chức S.H.I.E.L.D sau khi phát hiện ra tổ chức này định sao chép và sản xuất đại trà công nghệ mang tên ông. Biết được sự nguy hiểm của công nghệ này, Pym thề sẽ bảo vệ nó miễn là ông còn sống. Sau đó con gái của Pym, Hope van Dyne ghẻ lạnh cha mình và đi theo người học trò cũ của ông - kẻ đã đuổi ông ra khỏi công ty của mình, Darren Cross. Hắn đã gần hoàn thiện bộ đồ thu nhỏ của riêng mình "Bộ cánh vàng", đối địch với công nghệ Pym',N'',N'🎥 ANT-MAN (2015) - Full Movie Trailer in Full HD - 1080p.mp4',1)

insert dbo.Phim(TenPhim,TenAnh,NoiDung,DienVien,LinkVideo,MaTheLoai)
values(N'Aquaman',N'Aquaman.jpg',N'Tại Maine, người gác hải đăng Thomas Curry tìm thấy Atlanna, công chúa của quốc gia dưới đại dương có tên là Atlantis, trong một cơn bão. Họ dần dần dành tình cảm cho nhau và có chung một người con trai, Arthur, người được sinh ra với sức mạnh có thể giao tiếp với các sinh vật biển. Atlanna sau đó bị bắt buộc phải dời bỏ gia đình của mình để trở về Atlantis, cô cũng tin tưởng giao cho người cố vấn thân tín Nuidis Vulko nhiệm vụ dạy dỗ và rèn luyện Arthur. Được Vulko chỉ dạy, Arthur dần trở thành chiến binh mạnh mẽ, anh cũng biết được sự thật rằng mẹ mình đã bị vua của Atlantis xử tử vì ghen tuông. Đau khổ và bị khước từ, Arthur quyết định không quan tâm tới Atlantis nữa',N'',N'AQUAMAN- ĐẾ VƯƠNG ATLANTIS EXTENDED TRAILER - KC 21.12.2018.mp4',1)
insert dbo.Phim(TenPhim,TenAnh,NoiDung,DienVien,LinkVideo,MaTheLoai)
values(N'Avangers 2',N'avanger1.jpg',N'Ở quốc gia Tây Âu Sokovia, Biệt Đội Siêu Anh Hùng tấn công bất ngờ 1 trụ sở của HYDRA dẫn đầu bởi Baron von Strucker - kẻ đang tiến hành thí nghiệm trên cơ thể con người bằng cây quyền trượng của Loki. Họ đã chạm trán hai trong số những thí nghiệm của Strucker - cặp sinh đôi nhà Maximoffs, Pietro có siêu tốc độ còn Wanda có khả năng điều khiển tâm trí và phóng ra năng lượng bằng tay. Nhóm đã bắt được Strucker và Stark lấy lại cây quyền trượng của Loki.',N'',N'Marvel Studios Avengers - Official Trailer.mp4',1)
insert dbo.Phim(TenPhim,TenAnh,NoiDung,DienVien,LinkVideo,MaTheLoai)
values(N'Avengers infinity war',N'Avanger2.jpg',N'Giới thiệu: Ở quốc gia Tây Âu Sokovia, Biệt Đội Siêu Anh Hùng tấn công bất ngờ 1 trụ sở của HYDRA dẫn đầu bởi Baron von Strucker - kẻ đang tiến hành thí nghiệm trên cơ thể con người bằng cây quyền trượng của Loki. Họ đã chạm trán hai trong số những thí nghiệm của Strucker - cặp sinh đôi nhà Maximoffs, Pietro có siêu tốc độ còn Wanda có khả năng điều khiển tâm trí và phóng ra năng lượng bằng tay. Nhóm đã bắt được Strucker và Stark lấy lại cây quyền trượng của Loki.',N'',N'Marvel Studios Avengers - Official Trailer.mp4',1)

insert dbo.Phim(TenPhim,TenAnh,NoiDung,DienVien,LinkVideo,MaTheLoai)
values(N'Bạn gái tôi là xếp',N'Bangaitoilaxep.jpg',N'Sau thành công với Em Là Bà Nội Của Anh, nữ hoàng phòng vé Miu Lê hứa hẹn một cuộc tái xuất đình đám trong năm nay. Lần này, cô là nữ diên viên chính trong Bạn Gái Tôi Là Sếp, dự án mới của đạo diễn Hàm Trần. Trên teaser poster vừa được công bố, Miu Lê xuất hiện ấn tượng với màn hành hạ trai đẹp đầy quyến rũ và thách thức.',N'',N'Bạn gái tôi là sếp.mp4',3)
insert dbo.Phim(TenPhim,TenAnh,NoiDung,DienVien,LinkVideo,MaTheLoai)
values(N'Bảy viên ngọc rồng',N'bayvienngocrong.jpg',N'Dragon Ball là một bộ truyện tranh nhiều tập được viết và vẽ minh họa bởi Toriyama Akira. Loạt truyện tranh bắt đầu xuất bản hàng tuần trong danh sách Shōnen từ năm 1984 đến 1995 với 519 chương và sau đó được xuất bản trong 42 tập truyện dày bởi nhà xuất bản Shueisha.',N'',N'7 viên ngọc rồng - Goku cố gắng dùng thanh kiếm Z.mp4',2)
insert dbo.Phim(TenPhim,TenAnh,NoiDung,DienVien,LinkVideo,MaTheLoai)
values(N'Bí kíp luyện rồng',N'bikipluyenrong.jpg',N'Bí kíp luyện rồng: Vùng đất bí ẩn là một bộ phim hoạt hình máy tính 3D hành động giả tưởng Mĩ năm 2019, được sản xuất bởi DreamWorks Animation và phát hành bởi Universal Pictures dựa trên cuốn sách cùng tên. Đây là phần tiếp theo của Bí kíp luyện rồng 2 và là phần cuối cùng trong loạt phim Bí kíp luyện rồng.',N'',N'BÍ KÍP LUYỆN RỒNG 3 OFFICIAL TRAILER 2 - KC 06 02 2019.mp4',2)
insert dbo.Phim(TenPhim,TenAnh,NoiDung,DienVien,LinkVideo,MaTheLoai)
values(N'Black panther',N'black_panther_poster.jpg',N'Từ nhiều thế kỉ trước, đã xảy ra cuộc chiến tranh năm tộc người châu Phi gần thiên thạch có chứa Vibranium. Đã có một chiến binh nuốt phải Tâm Hình Thảo bị ảnh hưởng bởi kim loại trên và nhận được sức mạnh siêu nhiên, trở thành Chiến binh Báo Đen đầu tiên và trở thành vua. Ông đã thống nhất các bộ tộc trừ tộc Jabari, tạo nên quốc gia mang tên Wakanda. Người Wakanda dùng Vibranium đã phát triển công nghệ, đồng thời tự cô lập mình với thế giới như một "Thế giới thứ ba"…',N'',N'Black Panther.mp4',1)
insert dbo.Phim(TenPhim,TenAnh,NoiDung,DienVien,LinkVideo,MaTheLoai)
values(N'Bumblebee',N'maxresdefault.jpg',N'Bumblebee là phim điện ảnh khoa học viễn tưởng của Mỹ năm 2018 tập trung vào nhân vật cùng tên của thương hiệu Transformers. Đây là phần phim thứ sáu của loạt phim người đóng Transformers và đồng thời cũng là phần tiền truyện của bộ phim Transformers năm 2007. Bumblebee do Travis Knight đạo diễn và Christina Hodson biên kịch, với sự tham gia diễn xuất của Hailee Steinfeld, John Cena, Jorge Lendeborg Jr., John Ortiz, Jason Drucker và Pamela Adlon. Đây cũng là phần phim Transformers đầu tiên mà Michael Bay không nhận vị trí đạo diễn, dù vậy ông vẫn đảm nhiệm vai trò nhà sản xuất cho phim.',N'',N'Bumblebee (2018).mp4',1)
insert dbo.Phim(TenPhim,TenAnh,NoiDung,DienVien,LinkVideo,MaTheLoai)
values(N'Búp bê ma ám',N'Annabelle.jpg',N'Một đêm khác, Mia tỉnh dậy sau khi nghe tiếng thét vang từ nhà Higgins và John đã đến đó tìm hiểu. Khi trở về nhà và gọi cấp cứu theo lời chồng mình dặn, Mia bị tấn công bởi một người đàn ông và một người phụ nữ lạ mặt. Người đàn ông kịp đâm vào bụng của Mia trước khi John đến. Sau cùng, ông ta bị bắn chết bởi cảnh sát, người phụ nữ kia nấp vào một căn phòng và tự sát khi trong tay vẫn còn cầm con búp bê còn mới của Mia. Trên tường, bà ta đã dùng chính máu của mình để viết nhiều ký tự nguệch ngoạc và một giọt máu đã vô tình rơi vào và chảy vào trong mắt của con búp bê. Ở bệnh viện, bác sĩ đã bảo cô chỉ bị thương nhẹ ở cổ tử cung mà không có thương tích gì với đứa bé trong bụng. Mọi chuyện sáng tỏ dần, khi người đàn bà kia chính là con gái của nhà Higgins,',N'',N'Annabelle2.mp4',4)
insert dbo.Phim(TenPhim,TenAnh,NoiDung,DienVien,LinkVideo,MaTheLoai)
values(N'Câu chuyện lego',N'CÂU CHUYỆN LEGO.jpg',N'The Lego Batman Movie là bộ phim hoạt hình máy tính siêu anh hùng 3D năm 2017 do Warner Animation Group sản xuất. Chris McKay đạo diễn, Seth Grahame-Smith, Chris McKenna, Erik Sommers, Jared Stern và John Whittington viết kịch bản bởi và Dan Lin, Roy Lee, Phil Lord và Christopher Miller sản xuất.',N'',N'[M.G.P] The Lego Movie (2014) - Trailer (Vietsub).mp4',2)
insert dbo.Phim(TenPhim,TenAnh,NoiDung,DienVien,LinkVideo,MaTheLoai)
values(N'Chú hề ma quái',N'IT.jpg',N'Những đứa trẻ nhận ra rằng tất cả chúng đang bị đe dọa bởi cùng một thực thể. Chúng xác định rằng Pennywise biến hóa thành những gì chúng sợ, hắn thức dậy cứ sau 27 năm để làm hại trẻ em ở thị trấn Derry trước khi quay lại ngủ đông và di chuyển thông qua hệ thống cống ngầm, tất cả đường cống đều dẫn đến một cái giếng hiện đang ở dưới ngôi nhà bỏ hoang số 29 trên đường Neibolt. Sau một cuộc tấn công của Pennywise, cả nhóm mạo hiểm đến ngôi nhà hoang để đối đầu với hắn, từng đứa trẻ tách ra và bị hù dọa. Khi chúng tập hợp lại, Beverly đâm vào đầu ',N'',N'CHÚ HỀ MA QUÁI TRAILER LOTTE CINEMA KC 08 09 2017.mp4',4)
insert dbo.Phim(TenPhim,TenAnh,NoiDung,DienVien,LinkVideo,MaTheLoai)
values(N'Cỗ máy tử thần',N'comaytuthan.jpg',N'Bộ phim Mortal Engines được chuyển thể từ tập đầu tiên trong loạt tiểu thuyết của Philip Reeve.  Tác phẩm lấy bối cảnh thời hậu tận thế khi Trái đất gần như diệt vong sau sự kiện “Chiến tranh 60 phút”',N'',N'MORTAL ENGINES - CỖ MÁY TỬ THẦN - TRAILER D - KC- 07.12.2018.mp4',1)
insert dbo.Phim(TenPhim,TenAnh,NoiDung,DienVien,LinkVideo,MaTheLoai)
values(N'Cổ tích nơi đại dương',N'Cổ Tích Nơi Đại Dương.jpg',N'Được dịch từ tiếng Anh-Nàng tiên cá là một bộ phim phiêu lưu giả tưởng hành động trực tiếp của Mỹ năm 2018 lấy cảm hứng từ câu chuyện cùng tên của Hans Christian Andersen. Nó được đạo diễn và viết bởi Blake Harris, đồng đạo diễn bởi Chris Bouchard, và được sản xuất bởi Armando Gutierrez và Robert Molloy.',N'',N'CỔ TÍCH NƠI ĐẠI DƯƠNG - THE LITTLE MERMAID - TRAILER - KC 17.08.2018.mp4',1)
insert dbo.Phim(TenPhim,TenAnh,NoiDung,DienVien,LinkVideo,MaTheLoai)
values(N'Cua lại vợ bầu',N'Cualaivobau.jpg',N'Cua lại vợ bầu kể về câu chuyện của Thành, hành nghề sửa xe máy trong một cửa hàng chuyên độ xe. Thành yêu Khánh, một nhà thiết kế thời trang và xem Khánh là cả cuộc đời mình. Cho đến một ngày, Khánh đột nhiên mang bầu và... đòi chia tay Thành với lý do đứa bé trong bụng không phải là con của anh mà là con người yêu cũ...',N'',N'CuaLaiVoBau.mp4',3)
insert dbo.Phim(TenPhim,TenAnh,NoiDung,DienVien,LinkVideo,MaTheLoai)
values(N'Đấu trường ảo',N'Đấu trường ảo.jpg',N'Năm 2045, phần lớn các trung tâm dân cư trên Trái Đất đã trở thành các thành phố của những khu nhà ổ chuột. Để trốn tránh thực tại ấy, con người bắt đầu tham gia vào thế giới thực tế ảo mang tên OASIS, nơi họ có thể tham gia nhiều hoạt động khác nhau như giáo dục hay giải trí. Các người chơi đã tìm ra "Nhiệm vụ Anorak" ẩn sâu bên trong OASIS, một chương trình trò chơi của James Halliday, người sáng tác ra OASIS. Người đầu tiên tìm được quả trứng Phục sinh trong Nhiệm vụ Anorak sẽ được toàn quyền sở hữu hệ thống OASIS cùng nhiều phần quà hấp dẫn khác. Nhiệm vụ này đã cuốn hút nhiều kẻ săn trứng.',N'',N'[TRAILER] ĐẤU TRƯỜNG ẢO.mp4',1)
insert dbo.Phim(TenPhim,TenAnh,NoiDung,DienVien,LinkVideo,MaTheLoai)
values(N'Deadpool',N'Deadpool.jpg',N'Deadpool xoay quanh anh chàng Wade Wilson, một người bị ung thư vô phương cứu chữa được thí nghiệm trở thành dị nhân với khả năng phục hồi siêu tốc giống Wolverine, tuy nhiên Deadpool được rất nhiều fan hâm mộ biết đến như là một nhân vật cực kỳ hài hước với cái mồm không bao giờ ngừng nói nhảm của hắn',N'',N'Deadpool.mp4',3)
insert dbo.Phim(TenPhim,TenAnh,NoiDung,DienVien,LinkVideo,MaTheLoai)
values(N'Deadpool2',N'deadpool2.jpg',N'Nam diễn viên Ryan Reynolds đã tung ra đoạn video nhá hàng phim Deadpool 2 cực kỳ vui nhộn mang tên "No Good Deed". Anh khả ái đã trở lại và ăn hại hơn gấp bội phần, làm màu với chém gió thì nhiều mà hành động chẳng được bao nhiêu...Deadpool là nhân vật phản anh hùng (anti-hero) cực kỳ được yêu thích trong vũ trụ Marvel. Bộ phim solo của "anh khả ái dọn dẹp ngang trái" vào năm 2016 đã thành công rực rỡ với doanh thu lên đến 783 triệu USD.',N'',N'Deadpool.mp4',3)
insert dbo.Phim(TenPhim,TenAnh,NoiDung,DienVien,LinkVideo,MaTheLoai)
values(N'Diệp vấn',N'Diệp Vấn.jpg',N'Diệp Vấn (Ip Man) được sản xuất dựa trên câu chuyện có thật về cuộc đời Diệp Vấn, một vị danh sư của võ phái Vịnh Xuân, ngoài ra còn là sư phụ của huyền thoại võ thuật Lý Tiểu Long. Bộ phim kể về một giai đoạn quan trọng trong cuộc đời của Diệp sư phụ',N'',N'DIỆP VẤN 3 - Trailer 2.mp4',1)
insert dbo.Phim(TenPhim,TenAnh,NoiDung,DienVien,LinkVideo,MaTheLoai)
values(N'Em chưa 18',N'Emchua18.jpg',N'Em Chưa 18 - Jailbait xoay quanh câu chuyện tình yêu, tình bạn, sự ganh đua giữa những người trẻ tuổi. Hoàng – tay chơi quan niệm “một lần rồi thôi” với mọi cô gái, bị dính vào mối quan hệ phức tạp không ngờ với Linh Đan - cô nàng ranh mãnh đang lên kế hoạch trả thù chàng bồ cũ Tony. Linh Đan đã làm gì để đạt được mục đích với Hoàng? Tony phải dùng chiêu nào để chống lại tất cả những đòn yêu này? Khi thời hạn hợp tác giữa Hoàng và Linh Đan kết thúc, trong cuộc đua này ai là người thắng - kẻ thua? Sau tất cả, Linh Đan liệu có tìm được hạnh phúc? Ở bất cứ thời đại nào, tuổi trẻ cũng là để trải nghiệm, để bước tiếp đi.',N'',N'EmChua18.mp4',3)
insert dbo.Phim(TenPhim,TenAnh,NoiDung,DienVien,LinkVideo,MaTheLoai)
values(N'Finding Dory',N'Dory.jpg',N'Một hôm, trong khi đang ở trường học ở Rặng Đá Ngầm (Coral Reef), Dory đột nhiên nhớ lại những kỷ niệm thời thơ ấu của mình.[10] Cô ra đi và tìm đến một học viện dành cho các loài động vật biển, tại đây, cô trở thành bạn của bạch tuộc Hank, nhân vật sau này trở thành người dẫn đường của cô',N'',N'Finding Dory.mp4',2)
insert dbo.Phim(TenPhim,TenAnh,NoiDung,DienVien,LinkVideo,MaTheLoai)
values(N'Gia đình siêu nhân',N'incredibles.jpg',N'Gia đình siêu nhân 2 kể về cuộc phiêu lưu của nhà Parr, một gia đình Siêu Nhân (Supers, những con người có sức mạnh siêu nhiên). Nhà Parr có bố Bob, còn có tên là Mr. Incredible với sức khỏe phi thường, Helen, vợ của Bob, hay Elastigirl có khả năng co giãn cơ thể, và con cái của họ Violet có khả năng tàng hình và tạo ra trường bảo vệ, Dash với khả năng chạy siêu nhanh và Jack-Jack có khả năng biến đổi thành nhiều hình dạng khác nhau. Phim tiếp nối sát nội dung của phần một, ngay khi cả gia đình chạm trán Underminer, theo đội trưởng sáng tạo của Pixar John Lasseter.',N'',N'Gia Đình Siêu Nhân 2 - Trailer 3.mp4',2)
insert dbo.Phim(TenPhim,TenAnh,NoiDung,DienVien,LinkVideo,MaTheLoai)
values(N'Giải mã giấc mơ',N'giaimagiacmo.jpg',N'Trước ngày diễn ra Thế vận hội Olympics tại Tokyo, cha của Kokone, một nữ sinh cuối cấp 3, đột ngột bị bắt bởi cảnh sátTrước ngày diễn ra Thế vận hội Olympics tại Tokyo, cha của Kokone, một nữ sinh cuối cấp 3, đột ngột bị bắt bởi cảnh sát. Sở hữu khả năng kì lạ khi ngủ, Kokone vô tình tìm được những manh mối về cha mình trong giấc mơ. Những giấc mơ đang cố gắng nói cho Kokone điều gì? Kịch tính và đầy bất ngờ, Kokone nhanh chóng bước vào hành trình giải mã những mảnh ghép để khám phá ra bí mật sau cùng.',N'',N'Giải Mã Giấc Mơ.mp4',2)
insert dbo.Phim(TenPhim,TenAnh,NoiDung,DienVien,LinkVideo,MaTheLoai)
values(N'Giải mã mê cung',N'preview.medium.jpg',N'Maze Runner: The Death Cure (còn được gọi tắt là The Death Cure) là phim hành động khoa học viễn tưởng năm 2018 của Hoa Kỳ do Wes Ball đạo diễn và T.S. Nowlin viết kịch bản, dựa trên tiểu thuyết The Death Cure của tác giả James Dashner. Đây là phần tiếp theo của bộ phim 2015 Maze Runner: The Scorch Trials và phần thứ ba cũng là phần cuối cùng trong loạt phim Maze Runner. Dàn diễn viên gồm Dylan O Brien, Kaya Scodelario, Thomas Brodie-Sangster, Dexter Darden, Nathalie Emmanuel, Giancarlo Esposito, Aidan Gillen, Walton Goggins, Ki Hong Lee, Jacob Lofland, Katherine McNamara, Barry Pepper, Will Poulter, Rosa Salazar và Patricia Clarkson…',N'',N'Giải Mã Mê Cung.mp4',1)
insert dbo.Phim(TenPhim,TenAnh,NoiDung,DienVien,LinkVideo,MaTheLoai)
values(N'Hulk(2008)',N'2.jpg',N'Sau nhiều năm bị biến thành kẻ nửa người nửa quái vật The Hulk, nhà khoa học Bruce Banner vẫn phải lần trốn trong rừng rậm Nam Mỹ, tìm cách chữa trị cho chính bản thân mình. Cùng lúc đó anh vẫn bị sự truy lùng của quân đội Mỹ, dẫn dắt bởi tướng Ross và tên Emil Blonsky, kẻ muốn sử dụng sức mạnh của The Hulk. Chính tên này sau đó đã tự lặp lại tai nạn của Bruce Banner, với hy vọng biến mình thành siêu nhân. Nhưng Emil phát hiện ra rằng hắn bị biến thành một con quái vật - the Abomination- và không bao giờ trở lại thành dạng người như Bruce được nữa. Đổ lỗi cho Bruce vì sự đột biến của mình, hắn truy sát anh để trả thù.',N'',N'The Incredible Hulk (2008).mp4',1)


insert dbo.Phim(TenPhim,NoiDung,DienVien,LinkVideo,MaTheLoai)
values(N'Insidious',N'Insidious là phim kinh dị siêu nhiên Mỹ - Canada năm 2010 do James Wan đạo diễn, Leigh Whannell viết kịch bản, diễn viên gồm Patrick Wilson, Rose Byrne và Barbara Hershey. Đây là phần phim đầu tiên (theo thứ tự thời gian, lần thứ ba) trong loạt phim Insidious. Câu chuyện xoay quanh cặp vợ chồng có con trai không hiểu sao đi vào tình trạng hôn mê và trở thành một vật chứa cho hồn ma trong một không gian tâm linh muốn cư ngụ cơ thể của mình, để sống một lần nữa. Bộ phim đã được phát hành tại rạp vào ngày 1 tháng 4 năm 2011 và FilmDistrict phát hành đầu tiên.',N'',N'Insidious(2014)2.mp4',4)
insert dbo.Phim(TenPhim,NoiDung,DienVien,LinkVideo,MaTheLoai)
values(N'Kẻ trộm mặt trăng',N'Gru, hiện là đại lý của Liên minh chống tội phạm (Anti-villain League - AVL), đã đánh bại tên trộm nguy hiểm nhất thế giới, Balthazar Bratt, nhưng không thể bắt được ông ta. Bratt đã từng là một diễn viên nhí những năm thập niên 80, người đã miêu tả một siêu ác nhân trong một loạt phim truyền hình nổi tiếng trước khi chương trình bị hủy bỏ do tuổi dậy thì của anh và sự nổi tiếng của anh đã khiến anh trở thành một siêu ác nhân thực sự. Do mãi không bắt được Bratt, Gru và vợ của ông, Lucy, đã bị giám đốc mới của AVL, Valerie Da Vinci, miễn nhiệm.',N'',N'Kẻ Trộm Mặt Trăng.mp4',2)
insert dbo.Phim(TenPhim,NoiDung,DienVien,LinkVideo,MaTheLoai)
values(N'Spider Man',N'Spider Man 1 là phần mở đầu cho series phim "Siêu anh hùng" nổi tiếng Người Nhện. Bộ phim kể về Peter Parker, một cậu học sinh nhút nhát, được nuôi nấng bởi người cô chú giàu tình thương coi cậu như con đẻ. Trong một lần đi thăm khu nghiên cứu loài nhện, Peter bị cắn bởi một chú nhện. Sau khi bị hôn mê, tỉnh dậy anh trở nên vạm vỡ và có những khả năng phi thường. Anh sử dụng khả năng của mình để làm những việc thiện, giúp đỡ kẻ yếu nhưng giữ kín tung tích của mình. Nhưng, có sức mạnh không có nghĩa là may mắn. Peter đã gặp phải một đối thủ hết sức lợi hại là Norman Osborn - một nhà khoa học trong một tai nạn biến thành một kẻ nửa người máy độc ác, có sức mạnh không kém gì anh... Liệu Peter có thể quen với sức mạnh mới của mình? Anh có chiến đấu chống lại được Norman Osborn?',N'',N'Spider-Man.mp4',1)
insert dbo.Phim(TenPhim,NoiDung,DienVien,LinkVideo,MaTheLoai)
values(N'Người sắt',N'Tony Stark vừa là chủ tập đoàn công nghệ, vừa là một tay chơi kỳ dị. Trong chuyến thị sát Afghanistan, ông bị nhóm khủng bố bắt cóc. Chúng đòi Tony chế tạo thứ vũ khí hủy diệt để tấn công nước Mỹ.Nhận ra sự thật phũ phàng rằng, những vũ khí do mình chế tạo đang quay ngược lại tấn công chính mình, Tony bắt tay chế tạo bộ giáp công nghệ cao. Tẩu thoát khỏi nơi giam cầm, Tony trở thành đại diện công lý dưới biệt danh Người sắt. Trong khi đó, người đồng sự trong tập đoàn Stark âm mưu lật đổ Tony.',N'',N'Iron Man 3.mp4',1)
insert dbo.Phim(TenPhim,NoiDung,DienVien,LinkVideo,MaTheLoai)
values(N'Nhiệm vụ bất khả thi',N'Hai năm sau khi Solomon Lane bị bắt giữ, phần còn lại của tổ chức Syndicate giờ đã thành lập nên một nhóm khủng bố tự mệnh danh là Tông đồ. Ethan Hunt được phân công để lấy được ba lõi hạt nhân plutonium tại Berlin trước khi lũ Tông đồ có thể bán chúng cho John Lark. Anh cùng Benji Dunn và Luther Stickell tham gia vào nhiệm vụ, nhưng lại thất bại khi Luther bị bắt làm con tin và Ethan phải lựa chọn để cứu mạng anh ấy, tạo nên cơ hội cho Tông đồ cướp được ba khối plutonium. Cả nhóm bắt cóc chuyên gia vũ khí hạt nhân Nils Debruuk và biết được rằng hắn đã chế tạo ba vũ khí hạt nhân cho bọn Tông đồ',N'',N'NHIỆM VỤ BẤT KHẢ THI.mp4',1)
insert dbo.Phim(TenPhim,NoiDung,DienVien,LinkVideo,MaTheLoai)
values(N'Nhóc trùm',N'Cậu bé Tim 7 tuổi vốn dĩ đang có một cuộc sống rất ấm êm và đầy màu hồng thì bỗng dưng phải đối mặt với “biến cố” lớn trong đời: có một đứa em trai và phải học cách làm anh. Mọi khi cậu luôn là tâm điểm trong mắt bố mẹ, nhưng giờ đây Tim phải chấp nhận san sẻ tình yêu thương. Chưa hết, đứa em trai quái chiêu của cậu còn “thống trị” toàn bộ căn nhà, bắt nạt Tim và luôn khóc thét trước mặt bố mẹ để dành quyền được dỗ dành',N'',N'NhocTrum.mp4',3)
insert dbo.Phim(TenPhim,NoiDung,DienVien,LinkVideo,MaTheLoai)
values(N'Ở nhà một mình',N'Gia đình bác Frank đi nghỉ giáng sinh cùng gia đình của Kevin. Buổi sáng ra sân bay, cả nhà trể giờ, trong lúc lộn xộn, cậu bé Kenvin bị bỏ lại ở nhà một mình mà không ai hay biết. Trong lúc đó, hai tên trộm xấu xa tìm đến nhà cậu. Vượt qua sự sợ hãi ban đầu, một mình cậu với sự thông minh và lòng can đảm tuyệt vời chiến đấu với hai kẻ trộm để bảo vệ căn nhà của mình và khán giả được một dịp cười vỡ bụng...',N'',N'Home Alone.mp4',3)
insert dbo.Phim(TenPhim,NoiDung,DienVien,LinkVideo,MaTheLoai)
values(N'Quái thú vô hình',N'Quái thú vô hình là phim điện ảnh hành động khoa học viễn tưởng do Shane Black đạo diễn từ phần kịch bản do Black và Fred Dekker thực hiện. Đây là phần phim thứ tư trong loạt phim Quái thú vô hình, sau Predator, Predator 2 và Quái thú vô hình.',N'',N'THE PREDATOR.mp4',4)
insert dbo.Phim(TenPhim,NoiDung,DienVien,LinkVideo,MaTheLoai)
values(N'Quá nhanh quá nguy hiểm',N'Furious 7 (còn được gọi là Furious 7 và Furious Seven) là một phim hành động năm 2015 của Mỹ. Đây là phần tiếp theo của bộ phim năm 2013 Fast &amp; Furious 6 và cũng là bộ phim thứ bảy trong loạt phim Fast &amp; Furious. Bộ phim được biên kịch bởi Chris Morgan và đạo diễn bởi James Wan, với sự góp mặt của các ngôi sao như Vin Diesel, Paul Walker, Dwayne Johnson, Michelle Rodriguez, Jordana Brewster, Tyrese Gibson, Chris "Ludacris" Bridges, Kurt Russell, và Jason Statham. Fast &amp; Furious 7 theo sau Dominic Toretto (Diesel), Brian O Conner (Walker), cùng với những người đồng đội của họ, đã trở lại Hoa Kỳ để sống một cuộc sống bình thường sau khi được ân xá những tội lỗi họ đã làm trong Fast &amp; Furious 6 (2013), cho đến khi họ bị Deckard Shaw (Statham), một kẻ ám sát tìm kiếm để báo thù cho người em trai đang hôn mê của mình, đặt họ vào vòng nguy hiểm thêm một lần nữa.',N'',N'quá nhanh quá nguy hiểm 9.mp4',1)
insert dbo.Phim(TenPhim,NoiDung,DienVien,LinkVideo,MaTheLoai)
values(N'Insidious 2',N'Năm 1986, Lorraine Lambert mời nhà tâm linh Elise đến nhà mình để giúp tìm con ma đang đeo bám cậu con trai Josh của bà. Elise nhận định Josh có khả năng đặc biệt mà người thường không có, đó là kết nối linh hồn mình với thế giới của người chết. Hai người quyết định xóa ký ức của Josh để anh thôi không "du hành" vào thế giới đen tối này nữa.',N'',N'Insidious(2014)2.mp4',4)
insert dbo.Phim(TenPhim,NoiDung,DienVien,LinkVideo,MaTheLoai)
values(N'Robin Hood',N'Robin Hood là bộ phim hành động - phiêu lưu Mỹ năm 2018 do Otto Bathurst đạo diễn, được viết bởi Ben Chandler và David James Kelly, từ câu chuyện của Chandler. Phim dựa trên câu chuyện về Robin Hood sau khi được John huấn luyện để cướp sản từ quận trưởng của Nottingham.',N'',N'Robin Hood (2018 Movie).mp4',1)
insert dbo.Phim(TenPhim,NoiDung,DienVien,LinkVideo,MaTheLoai)
values(N'Siêu sao siêu ngố',N'Siêu sao siêu ngố là bộ phim hài tình cảm có nội dung xoay quanh nhân vật chính là ngôi sao điện ảnh Thế Sơn. Mặc dù sở hữu sự nghiệp thành công hàng đầu và có cuộc sống sang chảnh bậc nhất khiến vạn người mê, nhưng Thế Sơn lại chẳng thể tự do yêu đương hay làm những gì mà mình yêu thích. Anh luôn bị giám sát và phải chịu nhiều chi phối từ công ty quản lý, nhà đầu tư, vấn đề tiền bạc… đặc biệt là Tony Dũng',N'',N'SieuSaoSieuNgo.mp4',3)
insert dbo.Phim(TenPhim,NoiDung,DienVien,LinkVideo,MaTheLoai)
values(N'Siêu thú cuồng nộ',N'Bộ phim kể về nhà sinh vật học Davis Okoye có mối liên kết khăng khít với George - một chú gorilla lưng bạc được anh chăm sóc từ nhỏ. Một thí nghiệm đột biến ngoài ý muốn đã làm biến đổi gorilla thành quái vật khổng lồ hung hăng. Gorilla cùng những sinh vật bị biến đổi khác đã tấn công con người và đẩy nhân loại đứng trước hiểm họa diệt vong.',N'',N'Rampage.mp4',1)
insert dbo.Phim(TenPhim,NoiDung,DienVien,LinkVideo,MaTheLoai)
values(N'Sinh vật huyền bí',N'Năm 1927, một phù thủy bóng tối rất mạnh Gellert Grindelwald đang bị Hội phép thuật Hoa Kỳ (MACUSA) giam giữ. Trong khi bị di chuyển từ nhà tù an ninh tối cao đến Luân Đôn để bị xét xử vì tội ác của mình ở Châu Âu, Grindelwald được một nhân viên MACUSA, Abernathy thả ra. Grindelwald giết người và trốn thoát.',N'',N'Sinh Vật Huyền Bí.mp4',1)
insert dbo.Phim(TenPhim,NoiDung,DienVien,LinkVideo,MaTheLoai)
values(N'Star war',N'Star Wars là bộ tác phẩm hư cấu sử thi không gian của Mỹ sáng tạo bởi George Lucas, tập trung chủ yếu vào một loạt các phim điện ảnh được công chiếu kể từ năm 1977. Loạt phim kể về những cuộc phiêu lưu của các nhân vật khác nhau tại một thiên hà xa xôi',N'',N'Star Wars.mp4',1)
insert dbo.Phim(TenPhim,NoiDung,DienVien,LinkVideo,MaTheLoai)
values(N'Thám tử lừng danh conan',N'Thám tử lừng danh Conan là một bộ truyện tranh Nhật Bản thuộc loại trinh thám được vẽ và minh họa bởi Aoyama Gosho. Bộ truyện này ban đầu là những chương truyện nhỏ được đăng trên tuần báo Shōnen Sunday của Shogakukan từ 19 tháng 1 năm 1994 sau đó được đóng thành các tập tankōbon',N'',N'NOBITA VÀ CHUYẾN THÁM HIỂM MẶT TRĂNG.mp4',2)
insert dbo.Phim(TenPhim,NoiDung,DienVien,LinkVideo,MaTheLoai)
values(N'Thế giới khủng long',N'Hai mươi hai năm sau sự cố tại Công viên kỷ Jura, công viên trưng bày khủng long được nhân bản, một công viên mới gọi là Thế giới khủng long bây giờ đã đưa vào hoạt động trên cùng hòn đảo đó. Hai anh em Zach (Nick Robinson) và Gray (Ty Simpkins) được gửi đến hòn đảo để thăm dì của mình. Claire Dearing (Bryce Dallas Howard), quản lý điều hành công viên. Trợ lý của Claire là người giám sát chúng, vì Claire quá bận để thuyết phục tập đoàn tài trợ cho một điểm thu hút mới, một loài khủng long lai điều chỉnh gen gọi là Indominus rex. Loài khủng long này có ADN của vài loài khủng long săn mồi khác cùng với những loài động vật ngày nay; nhà khoa học Henry Wu (B. D. Wong) giữ kín về thành phần của loài này',N'',N'Jurassic World.mp4',1)

select *from dbo.Phim


insert dbo.Phim(TenPhim,NoiDung,DienVien,LinkVideo,MaTheLoai)
values(N'The Nun',N'Bộ phim lấy bối cảnh vào năm 1952 tại Romania, hai nữ tu Công giáo La Mã sống tại Tu viện Carța đi vào một đường hầm tăm tối, họ cầm theo một chiếc chìa khóa với mục đích lấy lại một di tích Thiên Chúa giáo cổ đại, họ đã bị tấn công bởi một thế lực vô hình. Nữ tu Victoria may mắn sống sót đã cầm theo chiếc chìa khóa và chạy trốn khỏi kẻ tấn công, đó là một con ác quỷ xuất hiện với hình dạng một nữ tu, sau đó sơ Victoria đã tự treo cổ mình khi trong tay vẫn còn cầm chặt chiếc chìa khóa. Thi thể của cô được phát hiện bởi Frenchie, một người Pháp gốc Canada sinh sống tại Romania, anh là một dân làng chở vật tư cho các nữ tu tại tu viện Carta.',N'',N'TheNun.mp4',4)

insert dbo.Phim(TenPhim,NoiDung,DienVien,LinkVideo,MaTheLoai)
values(N'Venom',N'Trong khi khám phá không gian cho những thế giới mới có thể ở được, một tàu thăm dò thuộc tập đoàn kỹ thuật sinh học Life Foundation phát hiện ra một sao chổi được bao phủ trong các dạng sống cộng sinh. Tàu thăm dò trở về Trái đất với bốn mẫu, nhưng một mẫu đã trốn thoát và khiến con tàu gặp nạn ở Malaysia. Life Foundation thu hồi ba người kia và vận chuyển họ đến cơ sở nghiên cứu của họ ở San Francisco, nơi họ phát hiện ra rằng các symbiote không thể tồn tại mà không có vật chủ thở oxy, thường từ chối sự cộng sinh khiến vật chủ tử vong. Nhà báo điều tra Eddie Brock (Tom Hardy) sống cùng với vị hôn thê Anne Weying, một luật sư tại công ty luật đại diện cho Life Foundation. Trong khi Weying đang ngủ, Brock đăng nhập vào máy tính của cô và tìm hiểu về những thử nghiệm trên người này từ một tài liệu bí mật mà anh tìm thấy sau khi truy cập email công việc của cô',N'',N'Venom.mp4',1)
insert dbo.Phim(TenPhim,NoiDung,DienVien,LinkVideo,MaTheLoai)
values(N'Về quê ăn tết',N'Chuyện phim bắt đầu đầy “bão táp” bằng chuyến xe nhốn nháo của nữ tài xế Đậu Xanh (Ngô Thanh Vân) và cậu em lơ xe Đậu Đỏ (Jun Phạm). Không còn là một phụ nữ quyền quý, nghiêm khắc, Ngô Thanh Vân nay thử sức với hình tượng mới mẻ: cô tài xế bụi bặm, nóng nảy, thỉnh thoảng pha trò trêu chọc cậu em trai ương bướng.Bởi lý do giới tính, Đậu Xanh bị bố đuổi khỏi nhà, cùng cậu em trai lang bạt kiếm sống trên chiếc xe khách tồi tàn chuyên chạy tuyến Sài Gòn - miền Tây. Nhưng bởi khả năng lái xe “kinh hoàng” của bộ đôi, rốt cuộc không còn bến nào dám nhận xe của hai chị em nhà Đậu nữa.',N'',N'Về Nhà Ăn Tết.mp4',3)
insert dbo.Phim(TenPhim,NoiDung,DienVien,LinkVideo,MaTheLoai)
values(N'Vua hài kịch',N'Chàng - một diễn viên lận đận suốt cuộc đời vẫn chỉ chung thành với những vai đóng thế không tên tuổi đang băn khoăn về con đường diễn viên mà mình chọn.Nàng - cô tiếp viên nhà hàng bị hoàn cảnh xô đẩy nhưng vẫn giữ được khí tiết và khát khao được yêu chân thành.Hai người đến với nhau qua bao lời dị nghị của người đời, đúng thời điểm chàng có thế đổi đời, với điều kiện phải từ bỏ mối tình với cô gái làng chơi',N'',N'VuaHaiKich2.mp4',3)
insert dbo.Phim(TenPhim,NoiDung,DienVien,LinkVideo,MaTheLoai)
values(N'Vua sư tử',N'Vua sư tử là một bộ phim điện ảnh chính kịch Mỹ, phim cho tuổi mới lớn sắp tới của đạo diễn Jon Favreau và được sản xuất bởi Walt Disney Pictures dựa trên bộ phim hoạt hình cùng tên năm 1994. Đây là phiên bản tái phát hành người đóng 3D, hay gọi cách khác là bản làm lại.',N'',N'The Lion King.mp4',2)

insert dbo.Phim(TenPhim,NoiDung,DienVien,LinkVideo,MaTheLoai)
values(N'Vương quốc xe hơi',N'Lightning McQueen, hiện tại đoạt 7 cup Piston, đột nhiên thấy mình bị lu mờ bởi Jackson Storm, một tân binh kiêu ngạo. Tay đua này thuộc về một thế hệ mới của các dòng tay đua sử dụng các công nghệ mới nhất để cải thiện hiệu suất. Điều này dẫn đến những cựu chiến binh của Lightning hoặc đang giải nghệ hoặc sa thải. Bởi các nhà tài trợ của họ đã thay thế bằng những tân binh mới. Trong cuộc đua cuối cùng của mùa giải, khi Lightning McQueen cố gắng bắt kịp Storm và các đối thủ khác, Lightning mất kiểm soát và bị một vụ va chạm cực kỳ thô bạo, gần như suýt mất mạng, khiến anh bị thương nặng.',N'',N'Vương Quốc Xe Hơi.mp4',2)
insert dbo.Phim(TenPhim,NoiDung,DienVien,LinkVideo,MaTheLoai)
values(N'Wreck-It Ralph 2',N'6 năm sau sự kiện xảy ra ở phần trước,phim xoay quanh chuyến phiêu lưu của Ráp-phờ trong không gian dữ liệu mạng sau khi một chiếc router Wi-Fi được ông Litwak lắp đặt tại trung tâm trò chơi để vào mạng và mua chiếc vô-lăng mới thay thế cho chiếc vô-lăng bị hỏng của trò Sugar Rush. Trong chuyến phiêu lưu này, Ráp-phờ cùng cô bạn thân của mình Vanellope von Schweetz được tiếp xúc với nhiều phong cách sống mới, thế giới mới và nhiều nhân vật mới như Thuật Toán sành điệu hay dàn công chúa Disney',N'',N'WRECK IT RALPH 2 Trailer 2 (2018).mp4',2)
insert dbo.Phim(TenPhim,NoiDung,DienVien,LinkVideo,MaTheLoai)
values(N'Xì Trum',N'Xì Trum là tựa tiếng Việt của bộ phim The Smurfs, một phim 3D do Mỹ sản xuất năm 2011, dựa trên sêri truyện tranh Xì Trum của tác gia Peyo và sêri hoạt hình cùng tên năm 1981',N'',N'Xì Trum 2.mp4',2)
insert dbo.Phim(TenPhim,NoiDung,DienVien,LinkVideo,MaTheLoai)
values(N'Xóm trọ 3D',N' Xóm Trọ 3D kể về một khu nhà trọ nơi “trai thẳng không cho thuê”. Vì muốn thuê phòng, chàng trai trẻ Phong đã giả vờ cong để qua mặt “má” Lâm – chủ khu nhà. Thế nhưng, Phong lại phải lòng Na- em gái “má” Lâm. Những tình huống dở khóc dở cười liên tục xảy ra. Ra mắt năm 2014, Xóm Trọ 3D là vở kịch đầu tiên trong lịch sử Việt Nam tạo nên những nhân vật đồng tính được khán giả đồng cảm và mến mộ. Tiếp nối thành công đó, phiên bản điện ảnh ra mắt với hy vọng sẽ khiến người hâm mộ lần nữa yêu thích. Nhập vai xuất sắc trong phiên bản sân khấu, nghệ sĩ Minh Nhí tiếp tục thủ vai “má” Lâm trong bản điện ảnh. Xóm Trọ 3D cũng là cuộc tái ngộ của cặp đôi màn ảnh Sài Gòn Anh Yêu Em – Huy Khánh và Maya. Trút bỏ những bộ quần áo hàng hiệu, họ hóa thân thành hai con người nghèo khổ nhưng đẹp đẽ về tâm hồn. Nghệ sĩ hài Việt Hương cũng có một vai diễn đáng mong chờ khi lần đầu tiên chị lột xác, trở thành đại ca giang hồ biệt danh Ông Nội.',N'',N'XomTro3D.mp4',3)
insert dbo.Phim(TenPhim,NoiDung,DienVien,LinkVideo,MaTheLoai)
values(N'Yêu nhầm hot girl',N'Được dịch từ tiếng Anh-I Love You, Beth Cooper là một bộ phim hài năm 2009 của đạo diễn Chris Columbus và có sự tham gia của Hayden Panettiere và Paul Rust. Nó dựa trên cuốn tiểu thuyết của Larry Doyle, với Doyle cũng đang viết kịch bản của bộ phim',N'',N'Yêu nhầm hot girl - I love you Beth Cooper.mp4',3)
insert dbo.Phim(TenPhim,NoiDung,DienVien,LinkVideo,MaTheLoai)
values(N'Zootopia',N'Trong một thế giới các loài động vật được nhân cách hóa, Juddy Hopps, một con thỏ sống tại vùng nông thôn Bunnyburrow, mang trong mình ước mơ trở thành một sĩ quan cảnh sát tại thành phố Zootopia. Tuy nhiên, khi đến nơi làm việc, cô được Cảnh sát trưởng Bogo, một con trâu châu Phi phân bổ nhiệm vụ làm nhân viên ghi vé phạt các xe đậu sai quy định do nghi ngờ khả năng của cô vì kích thước quá nhỏ bé. Nhưng rồi một bước ngoặt đã thay đổi mọi việc, cô tình cờ gặp Nick Wilde, một tên cáo lừa bịp.',N'',N'Zootopia.mp4',2)
go

--dữ liệu ảnh

insert dbo.Anh(TenAnh,MaPhim)
values(N'ac-quy-ma-so-the-nun-2018-c706a1d4b4.jpg',1)
insert dbo.Anh(TenAnh,MaPhim)
values(N'3.jpg',2)
insert dbo.Anh(TenAnh,MaPhim)
values(N'5b2530970df938466dc09bf9_480x.jpg',3)
insert dbo.Anh(TenAnh,MaPhim)
values(N'antman.jpg',4)
insert dbo.Anh(TenAnh,MaPhim)
values(N'Aquaman.jpg',5)
insert dbo.Anh(TenAnh,MaPhim)
values(N'avanger1.jpg',6)
insert dbo.Anh(TenAnh,MaPhim)
values(N'Avanger2.jpg',7)
insert dbo.Anh(TenAnh,MaPhim)
values(N'Bangaitoilaxep.jpg',8)
insert dbo.Anh(TenAnh,MaPhim)
values(N'bayvienngocrong.jpg',9)
insert dbo.Anh(TenAnh,MaPhim)
values(N'bikipluyenrong.jpg',10)
insert dbo.Anh(TenAnh,MaPhim)
values(N'black_panther_poster.jpg',11)
insert dbo.Anh(TenAnh,MaPhim)
values(N'maxresdefault.jpg',12)
insert dbo.Anh(TenAnh,MaPhim)
values(N'Annabelle.jpg',13)
insert dbo.Anh(TenAnh,MaPhim)
values(N'Aquaman.jpg',14)
insert dbo.Anh(TenAnh,MaPhim)
values(N'IT.jpg',15)
insert dbo.Anh(TenAnh,MaPhim)
values(N'comaytuthan.jpg',16)
insert dbo.Anh(TenAnh,MaPhim)
values(N'Cổ Tích Nơi Đại Dương.jpg',17)
insert dbo.Anh(TenAnh,MaPhim)
values(N'Cualaivobau.jpg',18)
insert dbo.Anh(TenAnh,MaPhim)
values(N'Đấu trường ảo.jpg',19)
insert dbo.Anh(TenAnh,MaPhim)
values(N'Deadpool.jpg',20)
insert dbo.Anh(TenAnh,MaPhim)
values(N'deadpool2.jpg',21)
insert dbo.Anh(TenAnh,MaPhim)
values(N'Diệp Vấn.jpg',22)
insert dbo.Anh(TenAnh,MaPhim)
values(N'Emchua18.jpg',23)
insert dbo.Anh(TenAnh,MaPhim)
values(N'Dory.jpg',24)
insert dbo.Anh(TenAnh,MaPhim)
values(N'incredibles.jpg',25)
insert dbo.Anh(TenAnh,MaPhim)
values(N'giaimagiacmo.jpg',26)
insert dbo.Anh(TenAnh,MaPhim)
values(N'preview.medium.jpg',27)
insert dbo.Anh(TenAnh,MaPhim)
values(N'2.jpg',28)
insert dbo.Anh(TenAnh,MaPhim)
values(N'Insidious1.jpg',29)
insert dbo.Anh(TenAnh,MaPhim)
values(N'ketrommattrang.jpg',30)
insert dbo.Anh(TenAnh,MaPhim)
values(N'1.jpg',31)
insert dbo.Anh(TenAnh,MaPhim)
values(N'aa.jpg',32)
insert dbo.Anh(TenAnh,MaPhim)
values(N'NHIỆM VỤ BẤT KHẢ THI.jpg',33)
insert dbo.Anh(TenAnh,MaPhim)
values(N'nhoctrum.jpg',34)
insert dbo.Anh(TenAnh,MaPhim)
values(N'Homealone.jpg',35)
insert dbo.Anh(TenAnh,MaPhim)
values(N'Quái Thú Vô Hình 4.jpg',36)
insert dbo.Anh(TenAnh,MaPhim)
values(N'fast7.jpg',37)
insert dbo.Anh(TenAnh,MaPhim)
values(N'Insidious2.jpg',38)
insert dbo.Anh(TenAnh,MaPhim)
values(N'ROBIN HOOD.jpg',39)
insert dbo.Anh(TenAnh,MaPhim)
values(N'sieusaosieungo.jpg',40)
insert dbo.Anh(TenAnh,MaPhim)
values(N'Rampage.jpg',41)
insert dbo.Anh(TenAnh,MaPhim)
values(N'Sinh vật huyền bí.jpg',42)
insert dbo.Anh(TenAnh,MaPhim)
values(N'starwar.jpg',43)
insert dbo.Anh(TenAnh,MaPhim)
values(N'Thám tử lừng danh Conan.jpg',44)
insert dbo.Anh(TenAnh,MaPhim)
values(N'jurassic-world.jpg',45)
insert dbo.Anh(TenAnh,MaPhim)
values(N'TheNun.jpg',46)
insert dbo.Anh(TenAnh,MaPhim)
values(N'venom.jpg',47)
insert dbo.Anh(TenAnh,MaPhim)
values(N'vequeantet.jpg',48)
insert dbo.Anh(TenAnh,MaPhim)
values(N'vuahaikich.jpg',49)
insert dbo.Anh(TenAnh,MaPhim)
values(N'vuasutu.jpg',50)
insert dbo.Anh(TenAnh,MaPhim)
values(N'Car3.jpg',51)
insert dbo.Anh(TenAnh,MaPhim)
values(N'Wreck-It Ralph 2.jpg',52)
insert dbo.Anh(TenAnh,MaPhim)
values(N'Xitrum.jpg',53)
insert dbo.Anh(TenAnh,MaPhim)
values(N'xomtro3d.jpg',54)
insert dbo.Anh(TenAnh,MaPhim)
values(N'Yêu Nhầm Hot Girl.jpg',55)
insert dbo.Anh(TenAnh,MaPhim)
values(N'Zootopia.jpeg',56)
go


---update dl tên ảnh
update dbo.Phim set TenAnh=N'Insidious1.jpg' where MaPhim=29
update dbo.Phim set TenAnh=N'ketrommattrang.jpg' where MaPhim=30
update dbo.Phim set TenAnh=N'1.jpg' where MaPhim=31
update dbo.Phim set TenAnh=N'aa.jpg' where MaPhim=32
update dbo.Phim set TenAnh=N'NHIỆM VỤ BẤT KHẢ THI.jpg' where MaPhim=33
update dbo.Phim set TenAnh=N'nhoctrum.jpg' where MaPhim=34
update dbo.Phim set TenAnh=N'Homealone.jpg' where MaPhim=35
update dbo.Phim set TenAnh=N'Quái Thú Vô Hình 4.jpg' where MaPhim=36
update dbo.Phim set TenAnh=N'fast7.jpg' where MaPhim=37
update dbo.Phim set TenAnh=N'Insidious2.jpg' where MaPhim=38
update dbo.Phim set TenAnh=N'ROBIN HOOD.jpg' where MaPhim=39
update dbo.Phim set TenAnh=N'sieusaosieungo.jpg' where MaPhim=40
update dbo.Phim set TenAnh=N'Rampage.jpg' where MaPhim=41
update dbo.Phim set TenAnh=N'Sinh vật huyền bí.jpg' where MaPhim=42
update dbo.Phim set TenAnh=N'starwar.jpg' where MaPhim=43
update dbo.Phim set TenAnh=N'Thám tử lừng danh Conan.jpg' where MaPhim=44
update dbo.Phim set TenAnh=N'jurassic-world.jpg' where MaPhim=45

update dbo.Phim set TenAnh=N'TheNun.jpg' where MaPhim=46

update dbo.Phim set TenAnh=N'venom.jpg' where MaPhim=47
update dbo.Phim set TenAnh=N'vequeantet.jpg' where MaPhim=48
update dbo.Phim set TenAnh=N'vuahaikich.jpg' where MaPhim=49
update dbo.Phim set TenAnh=N'vuasutu.jpg' where MaPhim=50
update dbo.Phim set TenAnh=N'Car3.jpg' where MaPhim=51
update dbo.Phim set TenAnh=N'Wreck-It Ralph 2.jpg' where MaPhim=52
update dbo.Phim set TenAnh=N'Xitrum.jpg' where MaPhim=53
update dbo.Phim set TenAnh=N'xomtro3d.jpg' where MaPhim=54
update dbo.Phim set TenAnh=N'Yêu Nhầm Hot Girl.jpg' where MaPhim=55
update dbo.Phim set TenAnh=N'Zootopia.jpeg' where MaPhim=56



--thêm điểm phim
alter table dbo.Phim add diemphim float
update dbo.Phim set diemphim=5.0 where MaPhim=1
update dbo.Phim set diemphim=5.0 where MaPhim=2
update dbo.Phim set diemphim=5.0 where MaPhim=3
update dbo.Phim set diemphim=4.6 where MaPhim=4
update dbo.Phim set diemphim=4.6 where MaPhim=5
update dbo.Phim set diemphim=4.6 where MaPhim=6
update dbo.Phim set diemphim=4.6 where MaPhim=7
update dbo.Phim set diemphim=4.5 where MaPhim=8
update dbo.Phim set diemphim=4.5 where MaPhim=9
update dbo.Phim set diemphim=4.5 where MaPhim=10
update dbo.Phim set diemphim=4.2 where MaPhim=11
update dbo.Phim set diemphim=4.2 where MaPhim=12
update dbo.Phim set diemphim=4.2 where MaPhim=13
update dbo.Phim set diemphim=4.2 where MaPhim=14
update dbo.Phim set diemphim=4.2 where MaPhim=15
update dbo.Phim set diemphim=4.0 where MaPhim=16
update dbo.Phim set diemphim=4 where MaPhim=17
update dbo.Phim set diemphim=4 where MaPhim=18
update dbo.Phim set diemphim=4 where MaPhim=19
update dbo.Phim set diemphim=4 where MaPhim=20
update dbo.Phim set diemphim=4 where MaPhim=21
update dbo.Phim set diemphim=4 where MaPhim=22
update dbo.Phim set diemphim=3.8 where MaPhim=23
update dbo.Phim set diemphim=3.8 where MaPhim=24
update dbo.Phim set diemphim=3.8 where MaPhim=25
update dbo.Phim set diemphim=3.8 where MaPhim=26
update dbo.Phim set diemphim=4.7 where MaPhim=27
update dbo.Phim set diemphim=4.7 where MaPhim=28
update dbo.Phim set diemphim=4.7 where MaPhim=29
update dbo.Phim set diemphim=4.7 where MaPhim=30
update dbo.Phim set diemphim=3.2 where MaPhim=31
update dbo.Phim set diemphim=3.2 where MaPhim=32
update dbo.Phim set diemphim=3.2 where MaPhim=33
update dbo.Phim set diemphim=3.2 where MaPhim=34
update dbo.Phim set diemphim=3.0 where MaPhim=35
update dbo.Phim set diemphim=3.0 where MaPhim=36
update dbo.Phim set diemphim=3.0 where MaPhim=37
update dbo.Phim set diemphim=3.0 where MaPhim=38
update dbo.Phim set diemphim=3.5 where MaPhim=39
update dbo.Phim set diemphim=3.5 where MaPhim=40
update dbo.Phim set diemphim=3.5 where MaPhim=41
update dbo.Phim set diemphim=3.5 where MaPhim=42
update dbo.Phim set diemphim=4.1 where MaPhim=43
update dbo.Phim set diemphim=4.1 where MaPhim=45
update dbo.Phim set diemphim=4.1 where MaPhim=46
update dbo.Phim set diemphim=4.1 where MaPhim=47
update dbo.Phim set diemphim=4 where MaPhim=48
update dbo.Phim set diemphim=4 where MaPhim=49
update dbo.Phim set diemphim=4 where MaPhim=50
update dbo.Phim set diemphim=4 where MaPhim=42
update dbo.Phim set diemphim=5.0where MaPhim=43
update dbo.Phim set diemphim=3.9 where MaPhim=45
update dbo.Phim set diemphim=3.9 where MaPhim=46
update dbo.Phim set diemphim=3.9 where MaPhim=47
update dbo.Phim set diemphim=3.9 where MaPhim=48
update dbo.Phim set diemphim=3.9 where MaPhim=49
update dbo.Phim set diemphim=3.4 where MaPhim=50
update dbo.Phim set diemphim=3.4 where MaPhim=50
update dbo.Phim set diemphim=3.4 where MaPhim=51
update dbo.Phim set diemphim=3.4 where MaPhim=52
update dbo.Phim set diemphim=3.4 where MaPhim=53
update dbo.Phim set diemphim=4.2 where MaPhim=54
update dbo.Phim set diemphim=4.8 where MaPhim=55
update dbo.Phim set diemphim=4.9 where MaPhim=56
