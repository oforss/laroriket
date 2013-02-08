# coding: utf-8

Laroriket.helpers do
  def pick_random_slogan
    slogans = [
      "Lärorikt i Läroriket – platsen för snabb inlärning",
      "Inlärning ska vara roligt",
      "Man lär så länge man har elever",
      "Man kan leda en häst till vattnet men man kan aldrig tvinga den att dricka",
      "Fantasi är viktigare än kunskap (Einstein)",
      "Hjärnan vill ha roligt",
      "Upptäck konsten och musiken i in- och utlärningen",
      "Du har enorma resurser – lär dig utnyttja dem!",
      "Framgång föder framgång",
      "Se och bli sedd!",
      "Inlärning är en positiv bieffekt i ett klassrum med välbefinnande och kreativitet",
      "Konsten att skapa en miljö där alla lyckas",
      "Alla besitter gömda reserver – lär dig locka fram dem!",
      "Alla lär på olika sätt – vilken är din inlärningsstil, vilken är dina elevers?",
      "Konsten att hjälpa studerande att hjälpa sig själva",
      "Hur bli den lärare alla vill ha?",
      "Hur lära sig på bästa möjliga sätt?",
      "Låt hjärnan lära sig på det naturliga sättet!",
      "Fantasi och inlärning hand i hand",
      "Lärorikt både för lärare och för inlärare",
      "För snabb, effektiv och rolig inlärning",
      "Lär dig mer om dina elever",
      "Ge glädje och kunskap till dina elever",
      "Hitta glädjen i din lärarroll",
      "Det är lätt att lära sig",
      "Med de rätta metoderna kan vår hjärna uträtta underverk",
      "Kaikki opimme eri tavoin – millä tavoin sinä opit, entä oppilaasi?",
      "Löydä opettamisen ilo",
      "Opettavaista sekä opettajille että oppijoille",
      "Hevosen voi johdattaa veden äärelle, muttei koskaan pakottaa juomaan"
    ]

    return slogans[rand(slogans.length)]
  end

  def swap_language
    if I18n.locale == :sv
      I18n.locale = :fi
    else
      I18n.locale = :sv
    end
  end
end