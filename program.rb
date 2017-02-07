module Alisveris_listesi
  class Urun
    DOSYA_ADI="../DB/almadan_once_liste"
    DOSYA_ADI2="../DB/aldiktan_sonra_liste"
    attr_accessor :urun_adi, :urun_magazasi, :urun_miktari, :urun_fiyati, :urun_tarihi, :gercek_fiyati

    def ekle()
      liste=[@urun_adi,@urun_magazasi,@urun_miktari,@urun_fiyati,@urun_tarihi]
      File.open(DOSYA_ADI,"a") do |urun|
        urun.puts liste.join(",")
      end
    end

    def gercek_fiyatlar()
        liste=[@urun_adi,@urun_magazasi,@urun_miktari,@urun_fiyati,@urun_tarihi,@gercek_fiyati]
        File.open(DOSYA_ADI2,"a") { |filemiz| filemiz.puts liste.join(",") }
    end

    class << self
      def fiyat_toplama
        @sayac=0
        liste=[@urun_adi,@urun_magazasi,@urun_miktari,@urun_fiyati,@urun_tarihi]

        File.open(DOSYA_ADI,"r") do |dosyamiz|
          dosyamiz.readlines.reject { |satir| satir.empty? }.map {|eleman| eleman.split ','}.each { |eleman| @sayac += eleman[3].to_i }
        end

        @sayac
      end
      def gercek_fiyat_toplama
        @sayac=0
        liste=[@urun_adi,@urun_magazasi,@urun_miktari,@urun_fiyati,@urun_tarihi,@gercek_fiyati]

        File.open(DOSYA_ADI2,"r") do |dosyamiz|
          dosyamiz.readlines.reject { |satir| satir.empty? }.map {|eleman| eleman.split ','}.each { |eleman| @sayac += eleman[5].to_i }
        end
        @sayac
      end

    end
  end
end #modulun
