require './program'
while true
    print "urun adi giriniz"
    a=gets.chomp()
    print "urun magazasi giriniz"
    b=gets.chomp()
    print "urun miktari girinz"
    c=gets.chomp()
    print "urun fiyati giri,niz "
    d=gets.chomp()
    print " "
    e=gets.chomp()
    print "1,2"
    adli=gets.chomp()
    if adli== "2"
      break
    end
    ali=Alisveris_listesi::Urun.new
    ali.urun_adi=a
    ali.urun_magazasi=b
    ali.urun_miktari=c
    ali.urun_fiyati=d
    ali.urun_tarihi=e
    ali.ekle()
end
