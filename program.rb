module Alisveris_listesi
  class Urun
    DOSYA_ADI="../DB/almadan_once_liste"
    attr_accessor :urun_adi, :urun_magazasi, :urun_miktari, :urun_fiyati, :urun_tarihi

    def ekle()
      liste=[@urun_adi,@urun_magazasi,@urun_miktari,@urun_fiyati,@urun_tarihi]
      File.open(DOSYA_ADI,"a") do |urun|
      urun.puts liste.join(",")
    end    #do nun endi




    end #def eklenin
  end #classın
end #modulun
