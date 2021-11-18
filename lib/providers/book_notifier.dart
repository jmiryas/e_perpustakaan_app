import 'package:flutter/cupertino.dart';

import '../models/book_model.dart';
import '../enum/category_enum.dart';

class BookNotifier extends ChangeNotifier {
  int _currentIndex = 0;

  final List<BookModel> _books = [
    BookModel(
        title: "Pembunuhan Zodiak Tokyo (The Tokyo Zodiac Murders)",
        summary:
            "Pada suatu malam bersalju tahun 1936, seorang seniman dipukuli hingga tewas di balik pintu studionya yang terkunci di Tokyo. Polisi menemukan surat wasiat aneh yang memaparkan rencananya untuk menciptakan Azoth—sang wanita sempurna—dari potongan-potongan tubuh para wanita muda kerabatnya. Tak lama sesudah itu, putri tertuanya dibunuh. Lalu putri-putrinya yang lain serta keponakan-keponakan perempuannya tiba-tiba menghilang. Satu per satu mayat mereka yang termutilasi ditemukan, semua dikubur sesuai dengan prinsip astrologis yang diuraikan sang seniman. Pembantaian misterius itu mengguncang Jepang, menyibukkan pihak berwenang dan para detektif amatir, namun tirai misteri tetap tak terpecahkan selama lebih dari 40 tahun. Lalu pada suatu hari di tahun 1979, sebuah dokumen diserahkan kepada Kiyoshi Mitarai—astrolog, peramal nasib, dan detektif eksentrik. Dengan didampingi Dr. Watson versinya sendiri—ilustrator dan penggemar kisah detektif, Kazumi Ishioka—dia mulai melacak jejak pelaku Pembunuhan Zodiak Tokyo serta pencipta Azoth yang bagaikan lenyap ditelan bumi. Kisah menarik tentang sulap dan ilusi karya salah satu pencerita misteri terkemuka di Jepang ini disusun seperti tragedi panggung yang megah. Penulis melemparkan tantangan kepada pembaca untuk membongkar misteri sebelum tirai ditutup.",
        information: {
          "Author": "Soji Shimada",
          "Publisher": "Gramedia Pustaka Utama",
          "Category": categoryTypeString(CategoryType.adultFictions),
          "Pages": "360",
          "File Size": "10.0 MB",
        },
        rate: 4,
        image: "images/adult_fiction_the_tokyo_zodiak_murderer.jpg",
        stock: 10,
        categoryType: CategoryType.adultFictions),
    BookModel(
        title: "Surat Kematian (Death Notice) - Buku Kesatu",
        summary:
            "Hukum kita lemah... Kasus pembunuhan ganda yang belum terpecahkan sudah menghantui Sersan Zheng Haoming selama hampir dua puluh tahun. Aku menawarkan keadilan nyata... Kini, sepertinya pembunuh yang sudah bersembunyi sekian lama itu muncul kembali, memancing para polisi dengan “surat-surat kematian” yang mengumumkan nama korban berikut beserta tanggal “eksekusi”-nya. Apakah teknik kepolisian modern—profil kriminal, penyelidikan online, pasukan khusus—mampu menangkap seorang pembunuh yang sudah berhasil menghindari hukuman selama ini? Atau apakah pembunuh ini terbukti lebih hebat daripada polisi? Hanya ada satu hukuman: MATI.",
        information: {
          "Author": "Haohui Zhou",
          "Publisher": "Gramedia Pustaka Utama",
          "Category": categoryTypeString(CategoryType.adultFictions),
          "Pages": "344",
          "File Size": "10.0 MB",
        },
        rate: 4,
        image: "images/adult_fiction_surat_kematian.jpg",
        stock: 7,
        categoryType: CategoryType.adultFictions),
    BookModel(
        title: "Pembunuhan di Rumah Miring (Murder in the Crooked House)",
        summary:
            "Rumah Miring itu bertengger di tebing berselimut salju yang menghadap ke lautan es di ujung utara Jepang yang terpencil. Tempat yang aneh, tetapi di situlah sang jutawan Kozaburo Hamamoto membangunnya. Banyak labirin lantai yang miring dan tangga-tangga di tempat yang tidak biasa, juga topneg-topeng dan boneka seukuran manusia yang seram. Ketika seorang pria ditemukan mati dibunuh di salah satu kamar, polisi dipanggil, tapi mereka tak mampu memecahkan teka-teki itu. Lantas korban-korban lain berjatuhan. Maka dipanggillah Kiyoshi Mitarai, si detektif terkenal yang pernah memecahkan misteri kasus Pembunuhan Zodiak. Kalau bukan Mitarai, siapa lagi yang bisa? Tetapi mungkin Anda bisa mendahului Mitarai dalam memecahkan kasus ini? Semua petunjuknya dibeberkan dengan gamblang. Jadi, silakan ikut mencobanya.",
        information: {
          "Author": "Soji Shimada",
          "Publisher": "Gramedia Pustaka Utama",
          "Category": categoryTypeString(CategoryType.adultFictions),
          "Pages": "400",
          "File Size": "10.0 MB",
        },
        rate: 4,
        image: "images/adult_fiction_murder_in_the_crooked_house.jpg",
        stock: 5,
        categoryType: CategoryType.adultFictions),
    BookModel(
        title: "Mengelola Keuangan Pribadi",
        summary:
            "Pengelolaan keuangan merupakan salah satu aspek yang tidak dapat dipisahkan dari kehidupan seseorang. Anda akan dihadapkan pada pengaturan uang pribadi yang dapat bersumber dari penghasilan untuk kemudian dikelola guna memenuhi berbagai kebutuhan serta investasi. Pengelolaan keuangan pribadi yang baik dapat membuat seseorang mampu mencapai tujuan keuangan tertentu. Sedangkan, pengelolaan keuangan yang buruk akan menyebabkan seseorang terjerat masalah keuangan, seperti utang maupun tunggakan pembayaran kredit.\nDalam mengelola keuangan pribadi, Anda membutuhkan laporan keuangan yang di dalamnya terdapat perhitungan pemasukan (arus kas masuk) dan pengeluaran (arus kas keluar) yang harus diseimbangkan. Dengan menjadi manajer keuangan yang andal, Anda dapat melakukan perencanaan keuangan yang berkualitas. Anda dapat melakukan perencanaan tersebut dengan memiliki anggaran keuangan pribadi yang baik, sehingga dapat mencapai berbagai target seperti, membeli properti, melakukan pinjaman kredit, dan melakukan investasi.\nMelalui buku Mengelola Keuangan Pribadi ini pembaca akan belajar tentang prinsip-prinsip pengelolaan keuangan pribadi yang baik. Pembaca akan mempelajari bagaimana mengambil keputusan keuangan berdasarkan pertimbangan kondisi keuangan pribadi. Buku ini juga menyajikan berbagi informasi terkait jenis-jenis investasi beserta dengan keuntungan dan risikonya, sehingga pembaca dapat memilih jenis investasi terbaik bagi mereka.",
        information: {
          "Author": "Farah Margaretha Leon",
          "Publisher": "Salemba Empat",
          "Category": categoryTypeString(CategoryType.businessAndInvesting),
          "Pages": "244",
          "File Size": "10.0 MB",
        },
        rate: 4,
        image: "images/business_mengelola_keuangan_pribadi.jpg",
        stock: 4,
        categoryType: CategoryType.businessAndInvesting),
    BookModel(
        title: "Sejarah Ringkas Terbaik Dunia Kuno Empat Benua",
        summary:
            "Tradisi paling popular di dunia yang dirayakan oleh negara-negara Eropa setiap bulan Oktober, yaitu Halloween, ternyata berhubungan dengan kebiasaan masyarakat kuno Eropa. Bangsa Kelt sebagai penyebar tradisi Halloween berhasil membuat labu menjadi sebuah ikon lentera mistis yang diukir menyerupai muka hantu. Itulah salah satu bentuk kebudayaan Eropa. Hal ini membuka pengetahuan bahwa membahas seputar dunia kuno Eropa tak melulu terfokus pada kemegahan kuil Athena, sejarah perang Sparta-Persia, ataupun keagungan Romawi saja.\nDunia masih memiliki peradaban di benua Asia, Afrika, dan Amerika. Masing-masing benua memiliki sejarah kuno yang tak bisa ditinggalkan begitu saja dari materi sejarah. Masih ada Raja Ashoka dari peradaban lembah Sungai Indus yang bersinergi dengan kebudayaan Yunani Kuno. Ada Hammurabi yang terkenal dengan Codex Hammurabi, yang merupakan pendahulu undang-undang modern. Ada Nebukadnezar II (cucu Hammurabi) yang dikenal membangun Taman Gantung Babilon. Ada prasasti berukiran hieroglif dari peradaban Mesir di Afrika. Ada piramida pula di belahan Amerika, seolah kebudayaan mereka pernah menyatu dengan Mesir.\nBuku ini memaparkan secara ringkas sejarah peradaban kuno dari empat benua, sebagai pegangan pembelajar sejarah pemula untuk dapat menarik benang merah corak kebudayaan masing-masing benua.",
        information: {
          "Author": "Anisa Septianingrum, M.pd.",
          "Publisher": "Anak Hebat Indonesia",
          "Category": categoryTypeString(CategoryType.history),
          "Pages": "188",
          "File Size": "10.0 MB",
        },
        rate: 4,
        image:
            "images/history_sejarah_ringkas_terbaik_dunia_kuno_empat_benua.jpg",
        stock: 4,
        categoryType: CategoryType.history),
    BookModel(
      title: "Genom: Kisah Spesies Manusia Dalam 23 Bab",
      summary:
          "Genom manusia, seperangkat lengkap gen yang terdapat dalam dua puluh tiga pasang kromosom, tidak lain adalah autobiografi spesies kita. Dengan telah diumumkannya 'draf kasar' genom manusia, berarti kita, generasi yang beruntung ini, menjadi makhluk hidup pertama yang mampu membaca buku pintarnya sendiri, sekaligus memperoleh wawasan paling mendalam tentang makna hidup, arti menjadi manusia, kesadaran, atau fenomena jatuh sakit.\nDengan mengambil satu gen yang baru ditemukan dari tiap pasang kromosom kemudian menyuruhnya bercerita, Matt Ridley mengajak kita menapak tilas sejarah spesies kita sendiri berikut nenek-nenek moyangnya, sejak fajar kehidupan hingga peluang datangnya zaman kedokteran masa depan.\nla menemukan gen yang mungkin memengaruhi kecerdasan kita, gen yang memungkinkan kita bertata bahasa, gen yang memandu perkembangan tubuh dan otak kita, gen yang memungkinkan kita mengingat, gen yang menunjukkan keistimewaan unsur bawaan dan pengaruh pengasuhan, gen yang membebani kita dengan kecenderungan egois, gen yang saling berperang, juga gen yang merekam sejarah perpindahan penduduk.\nla menggali berbagai upaya penerapan genetika: untuk memahami penyakit Huntington hingga mengobati kanker. la mengupas munculnya kecemasan dan kengerian terhadap eugenika, serta implikasi filosofi dari memahami paradoks kehendak bebas.'Sebuah karya yang mudah dipahami, ringan, sekaligus mendebarkan tentang 23 kromosom manusia yang memungkinkan kita mengerti bagaimana faktor pewarisan dan pengasuhan sama-sama berperan dalam kehidupan manusia.'",
      information: {
        "Author": "Matt Ridley",
        "Publisher": "Gramedia Pustaka Utama",
        "Category": categoryTypeString(CategoryType.science),
        "Pages": "468",
        "File Size": "10.0 MB",
      },
      rate: 4,
      image: "images/science_genom.jpg",
      stock: 6,
      categoryType: CategoryType.science,
    ),
  ];

  List<BookModel> get books {
    return _books;
  }

  BookModel get currentBook {
    return _books[_currentIndex];
  }

  void changeCurrentIndex(int newIndex) {
    _currentIndex = newIndex;
    notifyListeners();
  }

  List<BookModel> getBookFiltered(
      List<BookModel> books, CategoryType categoryType) {
    switch (categoryType) {
      case CategoryType.all:
        return books.toList();
      case CategoryType.adultFictions:
        return books
            .where((item) => item.categoryType == categoryType)
            .toList();
      case CategoryType.businessAndInvesting:
        return books
            .where((item) => item.categoryType == categoryType)
            .toList();
      case CategoryType.history:
        return books
            .where((item) => item.categoryType == categoryType)
            .toList();
      case CategoryType.science:
        return books
            .where((item) => item.categoryType == categoryType)
            .toList();
      default:
        return books.toList();
    }
  }
}
