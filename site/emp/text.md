
	 _____ __  __ ____  
	| ____|  \/  |  _ \ 
	|  _| | |\/| | |_) |
	| |___| |  | |  __/ 
	|_____|_|  |_|_|    

=================================
Elektronsko in Mobilno Poslovanje
=================================

>[Učilnica](https://ucilnica.fri.uni-lj.si/enrol/index.php?id=65)  
[Urnik](https://urnik.fri.uni-lj.si/timetable/2014_2015_zimski/allocations?subject=63712)

>[Rok Rupnik](http://www.fri.uni-lj.si/si/rok-rupnik)  
[David Jelenc](http://www.fri.uni-lj.si/si/david--jelenc)  

```timetable
 PON ; 13:00-14:00 ; Laboratorij za e-medije (3.nad) ; govorilne DJ 
     ; 11:15-14:15 ; P22  ; predavanja  
 TOR ;  8:30-10:00 ; PR09 ; vaje 
	 ; 10:15-11:45 ; PR06 ; vaje
	 ; 14:15-15:45 ; PR10 ; vaje
	 ; 16:15-17:45 ; PR16 ; vaje
 PET ; 15:15-16:45 ; PR08 ; vaje
```

>prosojnice na učilnici  
2x kolokvij (začetek Decembra, sredina Januarja)  
seminarska

VAJE
----
>svoji racunalniki
>dve seminarske
>3 vaje za windows phone
>6 vaj za android
>ocena se primerno otezi
>75% prisotnost obvezna

### Android Setup
>Eclipse ADT  
SDK Manager -> verzija 19  
Virtualna naprava -> Link v prosojnicah, pospesevalnik  
>>CPU/ABI ARM -> Intel Atom  
>>128 MB internal storage  
>>SD: 16 MB  
>>no skin, no camera  

>Na zadnje mi je dalala:
>>Device: Nexus S(4.0'', 480x800)  
Target: Android 4.4.2 - api level 19  
CPU: Intel Atom (x86)  
Skin: No skin  
Ram: 343 vm heap 32  
Internal Storage: 300

>Zelimo da LogCat Loger laufa (da dela println -> tag.system.out)  
Debuging: DDMS: Posiljanje fake koordinat,...

### VAJE 3

* Galaxy pad: andrioid 4.0.4 15-IceCreamSandwich

Vsaka aktivnost ima manifest.xml

#### Komunikacija Med Aktivnostmi

1. Create new: other: android activity
2. Hierarhical parent = kam gremo ce pritisnemo back button
3. Button -> android:OnClick="startNewActivity" (method name)
	main.java -> public void startNewActivity(View v) { ... }
4. Pozenemo novi activity:

		Intent intent = new Intent(this, OtherActivity.class)
		startActivity(intent)

5. Pozenemo activity in posljemo podatke:

		new Intent, new Bundle, bundle.putString(<id>, <string>),
		intent.putExtras(bundle), startActivity(intent)

6. V klicani aktivnosti preberemo podatke:

		onCreate { getIntent, intente.getExtras, extras.getString(id) }

7. Iz klicane aktivnosti zelimo vrniti podatke (Naprimer klic aplikacije kamera, ki potem vrne fotko):

		//A1-send:   
		startActivityForResult(intent, <request-code>: int)

		//A2-recieve: 
		onCreate { getIntent, intente.getExtras, extras.getString(id) }

		//A2-send: 
		new Intent, new Bundle, bundle.putString(<id>, string),
		intent.putExtras(bundle), setResult(RESULT_OK, intent), finish

		//A1-recieve: 
		onActivityResult(int requestCode, int resultCode, Intent intent) {
			if (requestCode == <request-code>)
				if (resultCode == RESULT_OK)
					String result = intent.getStringExtra(<id>)
		}

#### Ohranjanje stanj ob unicenju in ponovnem zagonu
* Ce napravo obrnemo se klice onCreate!


SEMINARSKA
----------

* Osnoven del 6 tock
* Dodatno 4 tocke - oddaja sredi decembra

-----------

>Kar se tiče aplikacije, napisat pa oddat jo morš na zagovoru

>Lahko sam lahko pa v skupini do tri!

>Nam je odgovoril, da smo imeli prevec kompleksen TP, nekaksno skrivanje v povzetkih je omenil, ne vem, ce tocno mislim, mogoce je mislil, da granulacija opravil ni zadosti velika (ali majhna pac?)??
docx je pa imel cirka 10 strani, nic posebnega. Stvar je, da smo uporabili kar nekaj MS proj server funkcionalnosti, npr. ocena stroskov projekta, forum, itd.

>pri nas je rekel, da je preveč mejnikov, hkrati pa da je premalo opravil, da je prekratek povzetek, projecta in project serverja nam praktično ni štel, čeprav smo tudi mi nekaj funkcionalnosti uporabili, ampak to so itak bonus točke.. kakorkoli gledamo, se nam zdi, da je čudno ocenjeval. imamo 7 strani VDP, približno 20 vrstic TP..

>Android aplikacija vsaj 4 aktivitije...
http://developer.android.com/reference/android/app/Activity.html



KOLOKVIJI
---------

### 1. Kolokvij, začetek Decembra

#### 2010
>Dokaj lahek, za prijavo rešit kviz na učilnici, rabis geslo kviza, prijaviš se na termin ki ti ustreza, opravljas ga na racunalniku.  V glavnem je bilo treba intuitivno sklepat(ugibat) iz tistega, kar smo slišali na predavanjih in vajah, nekaj odgovorov pa je blo podanih že v vprašanjih samih. 20 prašanj je blo.... 

#### Teme:
* projektno vodenje, 
* elektronsko poslovanje in
* CRM  

#### Vprašanja:
* kaj od naslednjega so platforme za razvoj MA(izberi 1 ali več): android, htc, windows phone 7, blackberry, windows mobile,...
* kako se imenuje okolje za testiranje MA? emulator  

#### Vprašanja iz izpiskov:
* definicija projekta
* vodenje - management
* pmbOk
* portfelj, program in projekt
* vloge na projektu
* projekti, redne aktivnosti in project life cycle
* procesi
* elektronsko poslovanje (Eposlovanje)
* oblike poslovanja
* generacije marketinga
* uvod
* zakaj crm?
* komponente crm
* stopnjevanje odnosa med stranko in podjetjem
* prednosti, pasti in tveganja
* stopnje crm
* kritični pogled na crm
* razlogi za neuspeh izvajanja crm

>[odgovori](1kolokvij.html)

#### 2011
#### Teme:
* Mobilno poslovanje in mobilne aplikacije
* Projektno vodenje
* Elektronsko poslovanje v slošnem
* Novi trendi področja marketinga
* CRM

#### Vprašanja:
* Ali lahko banka uporabi bankomat kot CRM sistem a svoje stranke?
* Kje lahjo kot študent sodeluješ? GZG, B2C?
* Ali je upravičena primerjava namiznih in mobilnih aplikacij? (Upravičena/Neupravičena) Pravilen odg. neupravičena.
* Definicija mobilne aplikacije: MA je aplikacija, ki deluje na mobilni napravi in se izvaja preko več nivojev več-nivojske arhitekture. 
* Kaj storimo če nekdo ni navdušen nad uvedbo CRM? (Ga poskusimo navdušiti/Ga vržemo s projekta) Jst sm dal da ga poskušamo navdušiti.
* Potem je bil za zbrat primer indirektne/direktne informacijsko podporo mobilne aplikacije. 
* Bla so še vprašanja glede klasičnega modela MA in pa glede kontekstnega modela. Kaj sodi v kontekst ...
* Kam spada poročanje? (To je tisti procesi, kr so našteti na koncu prve snovi.)
* Pogodbena razmerja z zunanjimi izvajalci "zapremo" v okviru
Izberi en odgovor:
a po zaključku projekta
b faze zaključka projekta
c v okvkru skupine procesov zapiranja
* V okviru uvajanja CRM lahko uvedemo tudi
Izberi en odgovor:
a administrativne ukrepe
b Portal za stranke
c že prej planirane ukrepe na področju prodaje
* povezovanje mobilnih os-jev z ustreznimi IT podjetji ( ejpl -> ios ... )
* ambulantna prodaja kaj je 
* klasična definicija MA - kateri je glavni element



### 2. Kolokvij, sredina Januarja

#### 2010
#### Teme:
* ERP

#### Vprašanja iz izpiskov:

* Nekaj dejstev 
* Osnovni pojmi 
* Najboljše prakse in referenčni modeli 
* Tipična struktura modulov ERP sistema 
* Uvajanje ERP: tveganja, kompleksnost in stroški
* Prednosti uvedbe ERP 
* Slabosti uvedbe ERP 
* Priložnosti kot posledica uvedbe ERP 
* Tveganja uvedbe ERP 

>[odgovori](3kolokvijERP.html)

#### 2011

* Kaj je ERP?

	>ERP je IS, ki omogoča izvajanje transakcij na nivoju celotnega podjetja in poleg tega omogočajo tudi informacijsko podporo planiranju, proizvodnji, prodaji in ostalim poslovnim procesom

* Kaj vsebuje struktura modulov, poleg HRM-ja?

	- Finance in računovodstvo
	- Proizvodnja
	- Logistika
	- Prodaja

* Kaj je slabost ERP-ja?

	- Dolgo obdobje uvajanja sistema
	- Potreba po realizaciji na novo vseh vmesnikov z ostalimi aplikativnimi sistemi
	- Potreba po visoki stopnji angažiranja poslovnih uporabnikov, predvsem ključnih, ves čas uvajanja sistema
	- Visoki predvideni stroški projekta
	- Večja obremenjenost ljudi zaradi vzporednega delovanja obeh sistemov
	do konca uvajanja ERP
	- Potreba po spreminjanju poslovnih procesov oz. nekaterih ključnih specifik in potencialne težave pri izvajanju poslovnih procesov

* Kje se najbolj uporablja MA?

* Kaj omogočajo kontekstno odvisne MA?

	- dostavo informacij(v enostavni obliki), ki jih akter potrebuje
	- Opravljanje mobilnosti primernih in prilagojenih storitev:
	- v trenutku, ko to mobilni uporabnik potrebuje in
	- na lokaciji, kjer to potrebuje

* Kaj je bolj pomembno izvajanje transakcij ali transformacije? 


* kaj je JIT (just in time)

	>Just in time (JIT) is a production strategy that strives to improve a business return on investment by reducing in-process inventory and associated carrying costs. Just-in-time production method is also called the Toyota Production System. To meet JIT objectives, the process relies on signals or Kanban between different points in the process, which tell production when to make the next part. Kanban are usually 'tickets' but can be simple visual signals, such as the presence or absence of a part on a shelf. Implemented correctly, JIT focuses on continuous improvement and can improve a manufacturing organization's return on investment, quality, and efficiency. To achieve continuous improvement key areas of focus could be flow, employee involvement and quality. http://en.wikipedia.org/wiki/Just_in_time_(business)

* ambulanta kaj je

* ERP

* HRM (še ene so zravn), nekej v povezavi s temkater je najbolj obremenjen del ko dela ERP

* Večja obremenjenost ljudi zaradi vzporednega delovanja obeh sistemov
do konca uvajanja ERP?


#### 2013
#### Teme:
* ERP, enterprise resource planing
>[članek](http://www.cio.com/article/2439502/enterprise-resource-planning/erp-definition-and-solutions.html)  
[wikipedia](http://en.wikipedia.org/wiki/Enterprise_resource_planning)  

* CRM, customer relationship management
>[webopedia](http://www.webopedia.com/TERM/C/CRM.html)  
[wikipedia](http://en.wikipedia.org/wiki/Customer_relationship_management)  
[slovenski ponudnik 1](http://www.oblikovanje.com/si/storitve/crm-sistemi)  
[slovenski ponudnik 2](http://www.intrix.si/)  

* (SCM, Supply chain management)












