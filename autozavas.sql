-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: June 2, 2020 at 03:01 PM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.3.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `autozavas`
--

-- --------------------------------------------------------

--
-- Table structure for table `buking`
--

CREATE TABLE `buking` (
  `id` int(11) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `voziloID` int(11) DEFAULT NULL,
  `datumOd` varchar(20) DEFAULT NULL,
  `datumDo` varchar(20) DEFAULT NULL,
  `poruka` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `datumPosta` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `buking`
--

INSERT INTO `buking` (`id`, `email`, `voziloID`, `datumOd`, `datumDo`, `poruka`, `status`, `datumPosta`) VALUES
(1, 'aleksandarb01@gmail.com', 3, '22/06/2020', '25/06/2020', 'Cist, brz efikasan auto', 1, '2017-06-19 20:15:43'),
(2, 'aleksandarb01@gmail.com', 6, '30/06/2020', '02/07/2020', 'Za put do Zlatibora', 2, '2017-06-26 20:15:43'),
(3, 'aleksandarb01@gmail.com', 7, '02/07/2020', '07/07/2020', 'Za sigurno i daleko putavanje', 0, '2017-06-26 21:10:06');

-- --------------------------------------------------------

--
-- Table structure for table `brend`
--

CREATE TABLE `brend` (
  `id` int(11) NOT NULL,
  `ime` varchar(120) NOT NULL,
  `datumKreiranja` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `datumAzuriranja` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `brend`
--

INSERT INTO `brend` (`id`, `ime`, `datumKreiranja`, `datumAzuriranja`) VALUES
(1, 'BMW', '2020-06-18 16:24:50', NULL),
(2, 'Audi', '2020-06-18 16:25:03', NULL),
(3, 'Nissan', '2020-06-18 16:25:13', NULL),
(4, 'Mercedes', '2020-06-18 16:25:24', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `kontakt`
--

CREATE TABLE `kontakt` (
  `id` int(11) NOT NULL,
  `adresa` tinytext,
  `email` varchar(255) DEFAULT NULL,
  `brojTelefona` char(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kontakt`
--

INSERT INTO `kontakt` (`id`, `adresa`, `email`, `brojTelefona`) VALUES
(1, 'Auto za Vas Servis', 'servis@voziloZaVas.rs', '06312312312');

-- --------------------------------------------------------

--
-- Table structure for table `kontaktUpit`
--

CREATE TABLE `kontaktUpit` (
  `id` int(11) NOT NULL,
  `ime` varchar(100) DEFAULT NULL,
  `email` varchar(120) DEFAULT NULL,
  `brojTelefona` char(11) DEFAULT NULL,
  `poruka` longtext,
  `datumPostavke` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kontaktUpit`
--

INSERT INTO `kontaktUpit` (`id`, `ime`, `email`, `brojTelefona`, `poruka`, `datumPostavke`, `status`) VALUES
(1, 'Aleksandar Babic', 'aleksandarb01@gmail.com', '0634689799', 'Koliko kosta novi BMW?', '2020-06-18 10:03:07', 1);

-- --------------------------------------------------------

--
-- Table structure for table `strane`
--

CREATE TABLE `strane` (
  `id` int(11) NOT NULL,
  `brojStrane` varchar(255) DEFAULT NULL,
  `tip` varchar(255) NOT NULL DEFAULT '',
  `detalji` longtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `strane`
--

INSERT INTO `strane` (`id`, `brojStrane`, `tip`, `detalji`) VALUES
(1, 'Uslovi koriscenja', 'uslovi', '<P align=justify><FONT size=2><STRONG><FONT color=#990000>(1) USLOVI KORISCENJA</FONT><BR><BR></STRONG>OPSTE ODREDBEOvim Uslovima koriScenja se uredjuju prava i obaveze u vezi sa koriScenjem PolovniAutomobili.com servisa. Servis koji se nalazi na Internet adresi http://www.polovniautomobili.com (u daljem tekstu: Servis) i predstavlja uslugu informacionog druStva, bilo da se Servisu pristupa putem Interneta ili putem aplikacija za mobilne uredjaje, koju pruza INFOSTUD 3 DOO SUBOTICA, Vladimira Nazora 7, 24000 Subotica, Republika Srbija, maticni broj: 20175095, PIB: 104505119 (u daljem tekstu: Kompanija).Ovi Uslovi koriScenja cine sastavni deo Servisa i predstavljaju odredbe ugovora koji se zakljucuje izmedju Kompanije i svakog pojedinog korisnika Servisa. Kompanija omogucava koriScenje Servisa fizickim i pravnim licima, iskljucivo na nacin i pod uslovima opisanim u ovim Uslovima koriScenja, na nacin i pod uslovima pod kojima se pruza usluga informacionog druStva.Pristupom i koriScenjem Servisa Kompanije, korisnici pristaju na Uslove koriScenja, te na taj nacin zakljucuju ugovor po pristupu sa Kompanijom kao pruzaocem usluge informacionog druStva.Na svaki pristup sadrzajima Servisa, primenjuju se ovi Uslovi koriScenja.Poslovanje Kompanije putem ovog Servisa regulisano je prevashodno Zakonom o elektronskoj trgovini, Zakonom o obligacionim odnosima, Zakonom o oglaSavanju, Zakonom o autorskom i srodnim pravima, Zakonom o zigovima, Zakonom o zaStiti podataka o licnosti, kao i drugim propisima pravnog sistema Republike Srbije u delovima koji nisu regulisani navedenim zakonima.Kompanija je posvecena ocuvanju i primeni prava zaStiti podatka o licnosti koja uzivaju fizicka lica, kao i autorskih prava, a u svemu prema pravilima informacione struke, dobrim poslovnim obicajima i u skladu sa vazecim propisima Republike Srbije.Servis nije zamena za profesionalnu konsultantsku uslugu u nabavci ili prodaji vozila, ili bilo druge usluge koje nisu navedene u ovim Uslovima, niti Kompanija pruza ili obezbedjuje bilo kakve druge usluge, osim opisane usluge informacionog druStva. Kompanija ni na koji nacin ne utice na sadrzaj koji postavljaju korisnici (osim uz prethodnu saglasnost korisnika koji je sadrzaj postavio) ili koji je nastao agregiranjem javno dostupnih podataka, niti garantuje za tacnost ili upotrebljivost informacija koje su prezentovane kroz dostupan sadrzaj. Iskljucivu odgovornost za sadrzaj imaju ona lica koja su sadrzaj postavila odnosno od kojih je sadrzaj preuzet.Kompanija ima pravo, ali ne i obavezu, da bilo koji sadrzaj, u bilo kom trenutku ukloni sa Servisa, bez obaveze bilo kakvog prethodnog ili naknadnog obaveStenja ili obrazlozenja.INTEGRITET SERVISAServis je namenjen oglaSavanju novih i polovnih vozila namenjenih prodaji kao Sto su: putnicka vozila, motori, transportna vozila, poljoprivredne maSine, radne maSine, plovila, bicikli, kao i oglaSavanju delova i opreme.Tekstovi i drugi unosi koje korisnici ostavljaju na bilo kom delu Servisa (na primer u komentarima i slicno) moraju biti tacni, ispravni. Za tacnost i ispravnost unetih podataka, odgovara iskljucivo korisnik koji je podatak uneo. Tacnost unosa podrazumeva da dolaze iz nekog kompetentnog izvora i/ili licnog iskustva korisnika. Ispravnost podrazumeva gramaticku i pravopisnu ispravnost.Svako koriScenje Servisa u celosti ili bilo kog njegovog dela koje nije u skladu sa Uslovima koriScenja, smatrace se zloupotrebom usluga koje pruza Kompanija, i krSenjem Uslova koriScenja.Korisnik samostalno bira lozinku prilikom registracije i iskljucivo je odgovoran za tajnost lozinke i koriScenje Servisa putem pristupnih podataka. Korisnik nece koristiti tudje pristupne podatke ili davati svoje korisnicke podatke trecem licu. Korisnik moze obavestiti Kompaniju ukoliko posumnja na neovlaSceno koriScenje svojih pristupnih podataka.Kompanija ce u svakoj pojedinacnoj prilici pruziti punu podrSku zaStiti prava licnosti, privatnosti, svojinskih prava i prava intelektualne svojine svim licima nosiocima tih prava, ili onim licima cije je pravo povredjeno, tako Sto ce, bez odlaganja:na obrazlozen zahtev, potkrepljen odgovarajucom dokumentacijom, ukloniti sadrzaj tako da ne bude javno dostupan, a sadrzaj sacuvati za potrebe dokazivanja,nadleznom organu, na zahtev dostaviti, podatke o korisniku ciji unos krSi neko od navedenih ili drugih prava, sve u skladu sa propisima Republike Srbije.Kompanija prenosi elektronske poruke koje su joj predate od strane korisnika usluga informacionog druStva, ali ni na koji nacin: ne inicira njihov prenos, ne vrSi odabir podataka ili dokumenata koji se prenose, ne izuzima ili menja podatke u sadrzaju poruka ili dokumenata, niti odabira primaoca prenosa.Kompanija zadrzava pravo izmene, ukidanja (bilo privremeno bilo trajno) bilo kog elementa Servisa, usluga koje pruza, kao i sadrzaja odnosno unosa, bez obzira na to ko je autor i bez prethodnog odobrenja ili obaveStenja, uz primenu dobrih poslovnih obicaja.Sve vremenske odrednice i rokovi prikazani kroz Servis, kao i vremenska zona i radni dani racunaju se prema vazecim propisima Republike Srbije. OPIS SERVISAKompanija putem Servisa pruza uslugu informacionog druStva.Servis je namenjen oglaSavanju novih i polovnih vozila namenjenih prodaji kao Sto su: putnicka vozila, motori, transportna vozila, poljoprivredne maSine, radne maSine, plovila, bicikli, kao i oglaSavanju delova i opreme.Servis omogucava korisnicima Internet pristup sadrzaju koji je nastao prikupljanjem javno dostupnih podataka, kao i sadrzaju postavljenom od strane Korisnika, iskljucivo bez ikakve naplate.Servis omogucava korisnicima Servisa Internet oglaSavanje pod uslovima i na nacin propisanim Zakonom o oglaSavanju. Lice koje se oglaSava putem Servisa nije duzno da dostavi Oglasnu deklaraciju u skladu sa clanom 45. Zakona o oglaSavanju, u vezi sa clanom 19., ali je duzno da se jasno identifikuje kako bi moglo da koristi uslugu oglaSavanja.KORISNICIKorisnicima usluga koje putem Servisa pruza Kompanija smatraju se kako posetioci, tako i registrovani korisnici.Posetilac je lice koje putem Interneta pristupi Servisu u smislu ovih Uslova koriScenja,bez prijave ili registracije na Servis. Posetilac moze da se upozna sa celokupnim sadrzajem dostupnim na Servisu, bez placanja bilo kakve naknade. Posetilac moze postavljati i objavljivati sopstveni sadrzaj: komentare i ocene.Registrovani korisnik je pravno ili fizicko lice koje se registrovalo na Servisu pod uslovima i na nacin iz ovih Uslova koriScenja.Samu registraciju korisnika, kao i sav sadrzaj koji registrovani korisnik postavlja na Servis, Kompanija ne moderira, modifikuje niti na bilo koji nacin utice na navedeni sadrzaj, i registrovani korisnik ima iskljucivu odgovornost i snosi sve pravne posledice koje iz njegovog sadrzaja na Servisu mogu da proisteknu.Registrovani korisnik zadrzava sva autorska i srodna prava na sadrzaju kojeg je autor. Registrovani korisnik garantuje da je vlasnik odnosno korisnik svih neophodnih autorskih prava na celokupnom sadrzaju, kao i svim njegovim pojedinim delovima, koji postavlja na Servis. Za svako eventualno krSenje autorskog ili srodnog prava, kao i drugih prava intelektualne svojine, odgovara iskljucivo registrovani korisnik koji je sadrzaj postavio. Postavljanjem sadrzaja, korisnik dozvoljava Kompaniji da bez ikakve naknade isti iskoristi za sopstvene promotivne ili edukativne potrebe, i da ga u tom smislu moze izmeniti i modifikovati prema svrsi tih potreba, bez navodjenja imena odnosno podataka o autoru sadrzaja.Registrovani korisnik moze istovremeno postavljati razlicit sadrzaj. Postavljanje sadrzaja na Servis, ni na koji nacin ne ogranicava registrovanog korisnika da isti sadrzaj postavi ili javno saopSti na drugom mestu. Registrovani korisnik moze bez bilo kakvog obrazlozenja ili obaveStenja, u bilo koje doba, obrisati ili izmeniti sadrzaj koji je postavio. Kompanija ce takav sadrzaj obrisati ili izmeniti istog momenta, osim sadrzaja koji se nalazi u rezervnim kopijama koje se sistemski generiSu, i na ciji sadrzaj ne moze da utice.Svakom pojedinom prijavom na Servis, registrovani korisnik dobija pristup svom nalogu na Servisu i mogucnost postavljanja sadrzaja. Registrovani korisnik moze da podesi svoj nalog i dodeli mu ili promeni ime, a svaki pojedini komentar koji postavlja oznaci kao anoniman.Postavljanjem sadrzaja na Servis, registrovani korisnik bezuslovno i neopozivo ovlaScuje Kompaniju da sadrzaj prenese neodredjenom broju lica, kao i da sadrzaj ukloni bez prethodnog ili naknadnog obaveStenja ili obrazlozenja.Registrovani korisnik moze bez bilo kakvog obrazlozenja ili obaveStenja, u bilo koje doba ukinuti svoj status registrovanog korisnika podnoSenjem zahteva za deaktivaciju svog korisnickog naloga.</FONT></P>'),
(2, 'Pravila privatnosti', 'privatnost', '<span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">Obavestenje o obradi podataka o licnosti1. SVRHA OBAVEŠTENJA O OBRADI PODATAKA O LICNOSTI Ovim Obavestenjem o obradi podataka o licnosti korisnika (u daljem tekstu: Obavestenje) informisu se korisnici PolovniAutomobili.com servisa koji se nalazi na internet adresi autoZaVas (u daljem tekstu: Servis), o svim relevantnim informacijama koje se ticu obrade podataka o licnosti korisnika.Imajuci u vidu zakonsku regulativu iz oblasti privatnosti licnih podataka fizickih lica, prvenstveno Zakon o zastiti podataka o licnosti (u daljem tekstu: ZZPL), veoma nam je bitno da pazljivo procitate ovo Obavestenje, kako biste bili upoznati sa vrstama podatka o licnosti koje najcesce obradjujemo, u koje svrhe obradjujemo vase licne podatke, ko ima pristup vasim podacima, a posebno kako biste bili upoznati sa vasim pravima u pogledu obrade licnih podataka. Mi vodimo racuna o zastiti vasih licnih podataka i u potpunosti podrzavamo prava vas kao korisnika koja predvidja ZZPL.Podatak o licnosti je svaki podatak koji se odnosi na fizicko lice ciji je identitet odredjen ili odrediv, neposredno ili posredno, posebno na osnovu oznake identiteta, kao sto je ime i identifikacioni broj, podataka o lokaciji, identifikatora u elektronskim komunikacionim mrezama ili jednog, odnosno vise obelezja njegovog fizickog, fizioloskog, genetskog, mentalnog, ekonomskog, kulturnog i drustvenog identiteta.Pitanja, prituzbe, zahteve i dodatne informacije oko Obavestenja o privatnosti, zastite podataka o licnosti i ostvarivanja vasih prava mozete ostvariti slanjem na e-mail adresu kontakta.</span>'),
(3, 'O nama', 'oNama', '<span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;\">AutoZaVas je najposeceniji domaci sajt za kupovinu i prodaju automobila, drugih vozila i rezervnih delova.Sajt autoZaVas omogucava oglasavanje vozila i rezervnih delova, efikasno povezuje kupce i prodavce i pruza savete i informacije oko kupoprodaje vozila.Cemu tezimoSajt autoZaVas zeli da utice na unapredjenje i razvoj trzista automobila kroz povecanje koriscenja Interneta u kupoprodaji vozila.Kupcima ovaj sajt zeli da olaksa donosenje prave odluke o kupovini, kroz kreiranje mogucnosti lakog uporedjivanja sirokog spektra ponude vozila, auto usluga i rezervnih delova, kao i kroz pruzanje zaokruzene celine prakticnih i neophodnih informacija.Prodavcima, auto salonima i auto dilerima sajt autoZaVas tezi da pomogne u pospesivanju prodaje koriscenjem Interneta u poslovanju i omoguci im brze i lakse povezivanje sa kupcima.</span>');

-- --------------------------------------------------------

--
-- Table structure for table `pretplatnici`
--

CREATE TABLE `pretplatnici` (
  `id` int(11) NOT NULL,
  `email` varchar(120) DEFAULT NULL,
  `datumPostavke` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pretplatnici`
--

INSERT INTO `pretplatnici` (`id`, `email`, `datumPostavke`) VALUES
(1, 'aleksandarb01@gmail.com', '2020-06-22 16:35:32');

-- --------------------------------------------------------

--
-- Table structure for table `potvrde`
--

CREATE TABLE `potvrde` (
  `id` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `potvrda` mediumtext NOT NULL,
  `datumPostavke` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `potvrde`
--

INSERT INTO `potvrde` (`id`, `email`, `potvrda`, `datumPostavke`, `status`) VALUES
(1, 'aleksandarb01@gmail.com', 'Potvrda za auto', '2020-06-18 07:44:31', 1),
(2, 'aleksandarb01@gmail.com', 'Odlican rad i posao', '2020-06-18 07:46:05', 1),
(3, 'aleksandarb01@gmail.com', 'Hocu Volvo', '2020-06-18 07:46:05', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `korisnici`
--

CREATE TABLE `korisnici` (
  `id` int(11) NOT NULL,
  `punoIme` varchar(120) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `lozinka` varchar(100) DEFAULT NULL,
  `brojTelefona` char(11) DEFAULT NULL,
  `dob` varchar(100) DEFAULT NULL,
  `adresa` varchar(255) DEFAULT NULL,
  `grad` varchar(100) DEFAULT NULL,
  `zemlja` varchar(100) DEFAULT NULL,
  `datumRegistracije` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `datumAzuriranja` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `korisnici`
--

INSERT INTO `korisnici` (`id`, `punoIme`, `email`, `lozinka`, `brojTelefona`, `dob`, `adresa`, `grad`, `zemlja`, `datumRegistracije`, `datumAzuriranja`) VALUES
(1, 'Aleksandar Babic', 'aleksandarb01@gmail.com', 'b4af804009cb036a4ccdc33431ef9ac9', '638156879', NULL, NULL, NULL, NULL, '2020-06-12 13:38:20', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `vozila`
--

CREATE TABLE `vozila` (
  `id` int(11) NOT NULL,
  `naslov` varchar(150) DEFAULT NULL,
  `brend` int(11) DEFAULT NULL,
  `pregled` longtext,
  `cenaPoDanu` int(11) DEFAULT NULL,
  `gorivo` varchar(100) DEFAULT NULL,
  `godiste` int(6) DEFAULT NULL,
  `sedista` int(11) DEFAULT NULL,
  `slika1` varchar(120) DEFAULT NULL,
  `slika2` varchar(120) DEFAULT NULL,
  `slika3` varchar(120) DEFAULT NULL,
  `slika4` varchar(120) DEFAULT NULL,
  `slika5` varchar(120) DEFAULT NULL,
  `klima` int(11) DEFAULT NULL,
  `automtskoZatvaranje` int(11) DEFAULT NULL,
  `alarm` int(11) DEFAULT NULL,
  `pomoc` int(11) DEFAULT NULL,
  `upravljanje` int(11) DEFAULT NULL,
  `vozacJastuk` int(11) DEFAULT NULL,
  `putnikJastuk` int(11) DEFAULT NULL,
  `prozor` int(11) DEFAULT NULL,
  `cdPlajer` int(11) DEFAULT NULL,
  `centralnaBrava` int(11) DEFAULT NULL,
  `senzor` int(11) DEFAULT NULL,
  `koznaSedista` int(11) DEFAULT NULL,
  `datumRegistracije` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `datumAzuriranja` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vozila`
--

INSERT INTO `vozila` (`id`, `naslov`, `brend`, `pregled`, `cenaPoDanu`, `gorivo`, `godiste`, `sedista`, `slika1`, `slika2`, `slika3`, `slika4`, `slika5`, `klima`, `automtskoZatvaranje`, `alarm`, `pomoc`, `upravljanje`, `vozacJastuk`, `putnikJastuk`, `prozor`, `cdPlajer`, `centralnaBrava`, `senzor`, `koznaSedista`, `datumRegistracije`, `datumAzuriranja`) VALUES
(1, 'BMW Serije 1', 1, 'Potpuno novi BMW serije 1 stigao je kako bi privukao sve te poglede divljenja. To je zato Sto se njegov izvanredan dizajn i progresivni jezik dizajna razlikuju od mnoStva na prvi pogled.', 10000, 'Benzin', 2019, 5, 'bmw-1-series1.jpg', 'bmw-1-series2.jpg', 'bmw-1-series3.jpg', 'bmw-1-series4.jpg', '', 1, 1, 1, 1, 1, 1, NULL, 1, 1, NULL, NULL, NULL, '2019-06-19 16:18:20', '2019-06-22 13:59:52'),
(2, 'BMW Serije 6 Gran Turismo', 1, 'Zahvaljujuci svojim cistim konturama, moderan dizajn modela BMW Serije 6 Gran Turismo svima privlaci pogled. Iza tecnog dizajnerskog jezika skriven je koncept komfora koji je istovremeno luksuzan i funkcionalan. Napravljen da ispuni najvise aspiracije, idealan je saputnik koji kombinuje eleganciju sa sportskim stilom.', 17000, 'Benzin', 2019, 5, 'bmw-6-series1.jpg', 'bmw-6-series2.jpg', 'bmw-6-series3.jpg', 'bmw-6-series4.jpg', '', 1, 1, 1, 1, 1, 1, NULL, 1, 1, NULL, NULL, NULL, '2019-06-19 16:18:20', '2019-06-22 13:59:52'),
(3, 'A3 Sportback', 2, 'U svetu koji se brzo menja, potreban vam je pratilac spreman za nove izazove. Sa progresivnim dizajnom i inovativnim tehnologijama kao Sto je Audi connect.', 15000, 'Dizel', 2019, 5, 'audi-a3-sportback1.jpg', 'audi-a3-sportback2.jpg', 'audi-a3-sportback3.jpg', 'audi-a3-sportback4.jpg', '', 1, 1, 1, 1, 1, 1, NULL, 1, 1, NULL, NULL, NULL, '2019-06-19 16:18:20', '2019-06-22 13:59:52'),
(4, 'Audi TT Coupe', 2, 'Silueta koja se izdvaja. Energican u svojoj ukupnoj pojavi. Horizontalno oblikovani zadnji deo vozila i izuzetno napete povrsine odusevljavaju dinamikom i mocnom estetikom. Ostre ivice ukazuju na snagu karaktera. Novi dizajn jednodelnog okvira maske hladnjaka (Singleframe) elegantno je integrisan u horizontalno oblikovan prednji deo vozila. Audi prstenovi na haubi motora. Novi Coupé odlikuju inovativne tehnologije pogona kao i koncepta upravljanja i prikaza instrumenata - medju njima i Audi virtual cockpit.', 15000, 'Dizel', 2019, 3, 'audi-tt-coupe1.jpg', 'audi-tt-coupe2.jpg', 'audi-tt-coupe3.jpg', 'audi-tt-coupe4.jpg', '', 1, 1, 1, 1, 1, 1, NULL, 1, 1, NULL, NULL, NULL, '2019-06-19 16:18:20', '2019-06-22 13:59:52'),
(5, 'Nissan Juke', 3, 'Ostre linije, dramatican izgled svetla, intrigantni dizajnerski akcenti, 19" aluminijumske felne i karakteristican plutajuci krov. Novi Nissan JUKE je izuzetno upecatljiv, a zahvaljujuci elegantnom aerodinamickom dizajnu klizi kroz vazduh u potpunoj tisini i pritom stedi na gorivu.', 10000, 'Dizel', 2019, 5, 'nissan-juke-1.jpg', 'nissan-juke-2.jpg', 'nissan-juke-3.jpg', 'nissan-juke-4.jpg', '', 1, 1, 1, 1, 1, 1, NULL, 1, 1, NULL, NULL, NULL, '2019-06-19 16:18:20', '2019-06-22 13:59:52'),
(6, 'Nissan Qashqai', 3, 'Neka svaka vasa voznja bude jos sigurnija, povezanija i uzbudljivija uz Nissanovu inteligentnu mobilnost - sistem koji prati saobracaj ispred vozila i preuzima kontrolu kako bi vam pomogao izbeci nesrecu. Sistem za pomoc pri parkiranju cak ce parkirati vas QASHQAI umesto vas. ', 11000, 'Dizel', 2019, 5, 'nissan-qashqai-1.jpg', 'nissan-qashqai-2.jpg', 'nissan-qashqai-3.jpg', 'nissan-qashqai-4.jpg', '', 1, 1, 1, 1, 1, 1, NULL, 1, 1, NULL, NULL, NULL, '2019-06-19 16:18:20', '2019-06-22 13:59:52'),
(7, 'Mercedes GLE', 4, 'Pogled odaje sve: tako snazan i reprezentativan, a ujedno prefinjen i elegantan. Tako potpuno nov, a ipak sasvim svoj. Sve to je novi GLE.', 20000, 'Dizel', 2019, 5, 'mercedes-gle-1.jpg', 'mercedes-gle-2.jpg', 'mercedes-gle-3.jpg', 'mercedes-gle-4.jpg', '', 1, 1, 1, 1, 1, 1, NULL, 1, 1, NULL, NULL, NULL, '2019-06-19 16:18:20', '2019-06-22 13:59:52'),
(8, 'Mercedes A-Klase', 4, 'Sta novu A-Klasu cini tako posebnom? Jednostavno je pitajte sami. Ona govori, razume, razmislja i cini se ocaravajuce ljudskom.', 13000, 'Dizel', 2019, 5, 'mercedes-a-1.jpg', 'mercedes-a-2.jpg', 'mercedes-a-3.jpg', 'mercedes-a-4.jpg', '', 1, 1, 1, 1, 1, 1, NULL, 1, 1, NULL, NULL, NULL, '2019-06-19 16:18:20', '2019-06-22 13:59:52');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `buking`
--
ALTER TABLE `buking`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `brend`
--
ALTER TABLE `brend`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kontakt`
--
ALTER TABLE `kontakt`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kontaktUpit`
--
ALTER TABLE `kontaktUpit`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `strane`
--
ALTER TABLE `strane`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pretplatnici`
--
ALTER TABLE `pretplatnici`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `potvrde`
--
ALTER TABLE `potvrde`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `korisnici`
--
ALTER TABLE `korisnici`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vozila`
--
ALTER TABLE `vozila`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `buking`
--
ALTER TABLE `buking`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `brend`
--
ALTER TABLE `brend`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `kontakt`
--
ALTER TABLE `kontakt`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `kontaktUpit`
--
ALTER TABLE `kontaktUpit`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `strane`
--
ALTER TABLE `strane`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `pretplatnici`
--
ALTER TABLE `pretplatnici`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `potvrde`
--
ALTER TABLE `potvrde`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `korisnici`
--
ALTER TABLE `korisnici`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `vozila`
--
ALTER TABLE `vozila`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
