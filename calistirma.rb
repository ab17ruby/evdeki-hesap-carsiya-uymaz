require './program'

puts `clear`
puts "Welcome to my alışveriş sepeti"
loop do
  puts "seçimler"
  puts "1) Yeni ekle"
  puts "2) Tahmini Fiyat Toplam ve Cikis"
  puts "3) Gercek fiyati"
  puts "4) Gercek Fiyat Toplam ve Cikis"
  puts "5) Farki gorme"
  puts "6) Evdeki Hesap"

  case gets.chomp
    when "1"
      print "urun adi giriniz :\t"
      urunadi = gets.chomp()
      print "urun magazasi giriniz :\t"
      urunmagazasi=gets.chomp()
      print "urun miktari giriniz :\t"
      urunmiktari=gets.chomp()
      print "urun fiyati giriniz :\t"
      urunfiyati=gets.chomp()
      print "urun tarihi giriniz :\t"
      uruntarihi=gets.chomp()
      ali=Alisveris_listesi::Urun.new
      ali.urun_adi = urunadi
      ali.urun_magazasi=urunmagazasi
      ali.urun_miktari=urunmiktari
      ali.urun_fiyati=urunfiyati
      ali.urun_tarihi=uruntarihi
      ali.ekle()
      puts "ürün eklendi"

    when "2"
      puts "#{Alisveris_listesi::Urun.fiyat_toplama} tutarinda tahmini fiyatiniz vardir"
      break
    when "3"
      print "urun adi giriniz :\t"
      urunadi = gets.chomp()
      print "urun magazasi giriniz :\t"
      urunmagazasi=gets.chomp()
      print "urun miktari giriniz :\t"
      urunmiktari=gets.chomp()
      print "urun fiyati giriniz :\t"
      urunfiyati=gets.chomp()
      print "urun tarihi giriniz :\t"
      uruntarihi=gets.chomp()
      print "gercek fiyati gir :\t"
      gercekfiyat=gets.chomp()
      kali=Alisveris_listesi::Urun.new
      kali.urun_adi = urunadi
      kali.urun_magazasi=urunmagazasi
      kali.urun_miktari=urunmiktari
      kali.urun_fiyati=urunfiyati
      kali.urun_tarihi=uruntarihi
      kali.gercek_fiyati=gercekfiyat
      kali.gercek_fiyatlar
      puts "urun gercek fiyatlari belirlendi"
    when "4"
      puts "#{Alisveris_listesi::Urun.gercek_fiyat_toplama} tutarinda gercek fiyatiniz vardir"
      break
    when "5"
      puts "#{Alisveris_listesi::Urun.gercek_fiyat_toplama - Alisveris_listesi::Urun.fiyat_toplama} gerçek fiyatlar tahminden farkı var"
      break
    when "6"
      case Alisveris_listesi::Urun.gercek_fiyat_toplama <=> Alisveris_listesi::Urun.fiyat_toplama
      when 0
        puts "Evdeki hesap çarşıya uydu"
        break
      when 1
        puts "Evdeki hesap çarşıya uymadı"
        break
      when -1
        puts "Evdeki hesap iyiki çarşıya uymadı"
        break
      end
    end
end
