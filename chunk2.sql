DO $$
DECLARE
  v_luth_id UUID;
  v_eng_id UUID;
  v_math_id UUID;
  v_phys_id UUID;
  v_chem_id UUID;
  v_bio_id UUID;
BEGIN
  SELECT id INTO v_luth_id FROM exam_bodies WHERE short_name = 'LUTH' LIMIT 1;
  SELECT id INTO v_eng_id FROM exam_subjects WHERE exam_body_id = v_luth_id AND name = 'English' LIMIT 1;
  SELECT id INTO v_math_id FROM exam_subjects WHERE exam_body_id = v_luth_id AND name = 'Mathematics' LIMIT 1;
  SELECT id INTO v_phys_id FROM exam_subjects WHERE exam_body_id = v_luth_id AND name = 'Physics' LIMIT 1;
  SELECT id INTO v_chem_id FROM exam_subjects WHERE exam_body_id = v_luth_id AND name = 'Chemistry' LIMIT 1;
  SELECT id INTO v_bio_id FROM exam_subjects WHERE exam_body_id = v_luth_id AND name = 'Biology' LIMIT 1;

  INSERT INTO exam_questions (subject_id, question_text, question_type, options, correct_answer, difficulty, topic, year) VALUES
(v_phys_id, 'Nobody  expects  him  to  show  ------for  his  children  but he certainly bestows too much affection on them (A)love (B)concern(C)intimacy      (D)devotion(E)hatred', 'multiple_choice', '["love (", "concern(", "intimacy      (", "devotion(", "hatred"]'::jsonb, 'A', 'medium', 'LUTH 2016 PHYSICS', 2016),
(v_phys_id, 'The challenger was crude and inexperienced in contrast to the champion who was---------(A)great (B)exposed    (C)celebrated (D)refined (E)strong', 'multiple_choice', '["great (", "exposed    (", "celebrated (", "refined (", "strong"]'::jsonb, 'A', 'medium', 'LUTH 2016 PHYSICS', 2016),
(v_phys_id, 'The fisherman threw a stone into the river and this caused a ---------(A)sprinkle(B)sparkle   (C)splash   (D)spring(E)storm', 'multiple_choice', '["sprinkle(", "sparkle   (", "splash   (", "spring(", "storm"]'::jsonb, 'A', 'medium', 'LUTH 2016 PHYSICS', 2016),
(v_phys_id, 'The  play was  so  interesting  that the  --------clapped for quite a long time at the end.(A)spectators(B)watchers Search', 'multiple_choice', '["spectators(", "watchers", "congregation(", "people(", "audience"]'::jsonb, 'A', 'medium', 'LUTH 2016 PHYSICS', 2016),
(v_chem_id, 'Which of the following is not an example of a force?', 'multiple_choice', '["tension  (", "Weight  (", "friction  (", "mass  (", "thrust"]'::jsonb, 'A', 'medium', 'LUTH 2017 CHEMISTRY', 2017),
(v_chem_id, 'A body moves along a circular path with uniform angular speed of 0.6 rad s and at a constant speed of 3.0m1', 'multiple_choice', '["body moves along a circular path with uniform angular speed of 0.6 rad s and at a constant speed of 3.0m1\ncalculate the acceleration of the body towards the centre  of    the     circle    (", "25.0m/s(", "5.4m/s(", "5.0m/s(", "1.8m/s ("]'::jsonb, 'A', 'medium', 'LUTH 2017 CHEMISTRY', 2017),
(v_chem_id, 'Which of the following is a derived unit?(', 'multiple_choice', '["Kilogram (", "second (", "Ohm (", "Kelvin", "Kelvin"]'::jsonb, 'A', 'medium', 'LUTH 2017 CHEMISTRY', 2017),
(v_chem_id, 'A boytimed 20 oscillations of certain pendulum three', 'multiple_choice', '["0.13s(", "2.22s(", "2.26s  (", "44.30s  (", "45.17s"]'::jsonb, 'A', 'medium', 'LUTH 2017 CHEMISTRY', 2017),
(v_chem_id, 'A partide starts from rest and moves with a constant', 'multiple_choice', '["2.5s(", "7.1s(", "10.0s (", "50.0s   (", "100.0s"]'::jsonb, 'A', 'medium', 'LUTH 2017 CHEMISTRY', 2017),
(v_chem_id, 'A blodk of material of volume 2 xl0-5m³and density 2.5', 'multiple_choice', '["0.1ON(", "0.10N  (", "0.30N  (", "0.40N  (", "0.50N"]'::jsonb, 'A', 'medium', 'LUTH 2017 CHEMISTRY', 2017),
(v_chem_id, 'An object is projected with a velocity of 100ms''from the ground level at an angle?to the vertical.If the total time of flight of the projectile is los,calculate?(g 10ms1)(', 'multiple_choice', '["0    (", "30(", "45(", "60  (", "90"]'::jsonb, 'A', 'medium', 'LUTH 2017 CHEMISTRY', 2017),
(v_chem_id, 'Howfar will a body move in 4 secands if uniform accelerate from rest atrate of 2m/s²?(', 'multiple_choice', '["32m(", "24m(", "1óm(", "12m   (", "8m"]'::jsonb, 'A', 'medium', 'LUTH 2017 CHEMISTRY', 2017),
(v_chem_id, 'If the temperature of water is gradualy increased from 0 to 40C,the density of the water within this range (', 'multiple_choice', '["Increase\n\nfor a while and then decreases (", "decreases for a while\nand then increases (", "increases gradually 《", "decreases\ngradually (", "remains the same"]'::jsonb, 'A', 'medium', 'LUTH 2017 CHEMISTRY', 2017),
(v_chem_id, 'The expansion of solids can be considered a disadvantage in the (', 'multiple_choice', '["fire  alarm  system(", "thermostat   (", "riveting  of  steel plates 《", "balance wheel of a watch(", "fitting of wheels on  rims"]'::jsonb, 'A', 'medium', 'LUTH 2017 CHEMISTRY', 2017),
(v_chem_id, 'A solid metal cube of side 10cm is heated from 10c to 60c If', 'multiple_choice', '["0.ocm³(", "1.2cm²(", "18cm³\n(", "3.6cm³(", "6.0cm"]'::jsonb, 'A', 'medium', 'LUTH 2017 CHEMISTRY', 2017),
(v_chem_id, 'A gas has a volume of 546om3 at Oc What is the volume of the gas at 100°c if its pressure remains constant?', 'multiple_choice', '["gas has a volume of 546om3 at Oc What is the volume of the gas at 100°c if its pressure remains constant?\n(", "346cm³(", "446cm³(", "546cm³(", "646cm³("]'::jsonb, 'A', 'medium', 'LUTH 2017 CHEMISTRY', 2017),
(v_chem_id, 'An image which cannot be formed on a screen is said to be (', 'multiple_choice', '["invented  (", "real  (", "erect  (", "blurred", "blurred"]'::jsonb, 'A', 'medium', 'LUTH 2017 CHEMISTRY', 2017),
(v_chem_id, 'Longitudinal waves cannot be (', 'multiple_choice', '["diffracted  (", "refracted\n(", "polarized   t(", "reflected   (", "superposed"]'::jsonb, 'A', 'medium', 'LUTH 2017 CHEMISTRY', 2017),
(v_chem_id, 'The images formed by a diverging lens are always (', 'multiple_choice', '["diminish,virtual  and  inverted  (", "diminished,virtual  and\nerect  (", "magnified,virtual  and  erect  (", "magnified,real\nand  inverted", "magnified,real\nand  inverted"]'::jsonb, 'A', 'medium', 'LUTH 2017 CHEMISTRY', 2017),
(v_chem_id, 'In the normal use of a simple microscope,a person sees an (', 'multiple_choice', '["inverted,virtual   and    magnified    image(", "erect,virtual    and  magnified  image(", "erect,real  and  magnified  image     (", "magnified,real  and  magnified  image  (", "inverted  and     real image the same as the object"]'::jsonb, 'A', 'medium', 'LUTH 2017 CHEMISTRY', 2017);

  RAISE NOTICE 'Loaded micro-batch 7/23 with 20 questions (total so far: 140)';
END $$;
DO $$
DECLARE
  v_luth_id UUID;
  v_eng_id UUID;
  v_math_id UUID;
  v_phys_id UUID;
  v_chem_id UUID;
  v_bio_id UUID;
BEGIN
  SELECT id INTO v_luth_id FROM exam_bodies WHERE short_name = 'LUTH' LIMIT 1;
  SELECT id INTO v_eng_id FROM exam_subjects WHERE exam_body_id = v_luth_id AND name = 'English' LIMIT 1;
  SELECT id INTO v_math_id FROM exam_subjects WHERE exam_body_id = v_luth_id AND name = 'Mathematics' LIMIT 1;
  SELECT id INTO v_phys_id FROM exam_subjects WHERE exam_body_id = v_luth_id AND name = 'Physics' LIMIT 1;
  SELECT id INTO v_chem_id FROM exam_subjects WHERE exam_body_id = v_luth_id AND name = 'Chemistry' LIMIT 1;
  SELECT id INTO v_bio_id FROM exam_subjects WHERE exam_body_id = v_luth_id AND name = 'Biology' LIMIT 1;

  INSERT INTO exam_questions (subject_id, question_text, question_type, options, correct_answer, difficulty, topic, year) VALUES
(v_chem_id, 'A lens of focal length 15.0cm forms an upright image four times the size of an object.Calculate the distance of the image from the lens (', 'multiple_choice', '["11.3cm(", "18.8cm(", "37.5cm\n(", "45.0cm(", "75.0cm"]'::jsonb, 'A', 'medium', 'LUTH 2017 CHEMISTRY', 2017),
(v_chem_id, 'An objedt is placed between two mirrors four which are', 'multiple_choice', '["1(", "2     (", "3(", "4(", "4("]'::jsonb, 'A', 'medium', 'LUTH 2017 CHEMISTRY', 2017),
(v_chem_id, 'In aripple tank experiment,a vibrating plate is used to', 'multiple_choice', '["30Hz(", "6.OHz(", "12.0Hz(", "27.OHz(", "73.5Hz"]'::jsonb, 'A', 'medium', 'LUTH 2017 CHEMISTRY', 2017),
(v_chem_id, 'Which of the following have the longest wave lengths?(', 'multiple_choice', '["infra-red rays (", "gamma rays (", "x rays (", "ultraviolet rays\n(", "radio  waves"]'::jsonb, 'A', 'medium', 'LUTH 2017 CHEMISTRY', 2017),
(v_chem_id, '1f 3=2,what isx?(', 'multiple_choice', '["1(", "1.5(", "4.5(", "18(", "40.5"]'::jsonb, 'A', 'medium', 'LUTH 2017 CHEMISTRY', 2017),
(v_chem_id, 'E&pres 0.00562in standard form(', 'multiple_choice', '["5.62x10³(", "5.62x10² (", "5.62x10²(", "5.62x10²(", "5.62x10³"]'::jsonb, 'A', 'medium', 'LUTH 2017 CHEMISTRY', 2017),
(v_chem_id, 'If logx=2.3675 and logy=0.9750,find x+y,corect to three significant figures?(', 'multiple_choice', '["1.18(", "9.31(", "9.03 (", "9.44(", "9.46"]'::jsonb, 'A', 'medium', 'LUTH 2017 CHEMISTRY', 2017),
(v_chem_id, 'Whie doing his physics practral,Idowu recorded a readng as 1.12cm instead of 1.21 cm.Calculate his percentage error', 'multiple_choice', '["1.17%(", "6.38%(", "7.44%(", "8.05%(", "9.00%"]'::jsonb, 'A', 'medium', 'LUTH 2017 CHEMISTRY', 2017),
(v_chem_id, 'Find the 4th term of an', 'multiple_choice', '["P whose first term is 2 and the common difference is 0.5 (", "0.5(", "2.5(", "3.5(", "4("]'::jsonb, 'A', 'medium', 'LUTH 2017 CHEMISTRY', 2017),
(v_chem_id, 'An arc of length 22cm subtends an angle of?at the centre of the circle.What is the value of?if the radius of the circle is 15cm?(Taken=22/7)(', 'multiple_choice', '["70(", "84(", "96(", "156(", "168"]'::jsonb, 'A', 'medium', 'LUTH 2017 CHEMISTRY', 2017),
(v_chem_id, 'Find the sum of the first five terms of the GP 2.6.18.(', 'multiple_choice', '["484 (", "243(", "242(", "130   (", "121"]'::jsonb, 'A', 'medium', 'LUTH 2017 CHEMISTRY', 2017),
(v_chem_id, 'LetJ bethe set of postive integer If H=(x:J,x²<3and x#O) then.(', 'multiple_choice', '["H(1)(", "His  an  infinite  set  (", "SH(o,1,2)(", "H=0   (", "J<H"]'::jsonb, 'A', 'medium', 'LUTH 2017 CHEMISTRY', 2017),
(v_chem_id, 'In aclass of80 student had to study Economics ar Geography. or both Economics and Geography.If 64 students studies', 'multiple_choice', '["15(", "30(", "35  (", "45(", "50"]'::jsonb, 'A', 'medium', 'LUTH 2017 CHEMISTRY', 2017),
(v_chem_id, 'Factorize x²+4x-192(', 'multiple_choice', '["(x-4)(x+4", "(e+1)(", "(x-12)\n(U)(x-12)(", "(x+16)", "(x+16)"]'::jsonb, 'A', 'medium', 'LUTH 2017 CHEMISTRY', 2017),
(v_chem_id, 'Factorize 2e²-3e+1(', 'multiple_choice', '["(2e-1)(e-l)(", "(e+1)(2e\n+1}(", "(2e+3)(3-2)(", "(2e-3)(e-1)(", "(e2-3)(2e-1)"]'::jsonb, 'A', 'medium', 'LUTH 2017 CHEMISTRY', 2017),
(v_chem_id, 'Solve the equation 7y²=3y.(', 'multiple_choice', '["y=3    or7(", "y=0or7(", "y =0or9(", "y=0 or 10", "y=0 or 10"]'::jsonb, 'A', 'medium', 'LUTH 2017 CHEMISTRY', 2017),
(v_chem_id, 'The VR is independent of A Quaity', 'multiple_choice', '["Quaity", "pulley", "friction", "frequency", "frequency"]'::jsonb, 'A', 'medium', 'LUTH 2017 CHEMISTRY', 2017),
(v_chem_id, 'Asector of a circle of radius 7cm has an area of 44cm2. Calculate the angle of the sector,correct to the nearest degree.(', 'multiple_choice', '["6(", "26  (", "52(", "103(", "206"]'::jsonb, 'A', 'medium', 'LUTH 2017 CHEMISTRY', 2017),
(v_chem_id, 'If the shadow of a pole 7m high is 1/2 its length,what is the angle of elevation of the sun,correct to the nearest degree?(', 'multiple_choice', '["90(", "63(", "60   (", "26(", "26("]'::jsonb, 'A', 'medium', 'LUTH 2017 CHEMISTRY', 2017),
(v_chem_id, 'From the top of a building 10m high,the angle of', 'multiple_choice', '["3.6m(", "3.8m\n(", "6.0m(", "9.3m(", "26.1m"]'::jsonb, 'A', 'medium', 'LUTH 2017 CHEMISTRY', 2017);

  RAISE NOTICE 'Loaded micro-batch 8/23 with 20 questions (total so far: 160)';
END $$;
DO $$
DECLARE
  v_luth_id UUID;
  v_eng_id UUID;
  v_math_id UUID;
  v_phys_id UUID;
  v_chem_id UUID;
  v_bio_id UUID;
BEGIN
  SELECT id INTO v_luth_id FROM exam_bodies WHERE short_name = 'LUTH' LIMIT 1;
  SELECT id INTO v_eng_id FROM exam_subjects WHERE exam_body_id = v_luth_id AND name = 'English' LIMIT 1;
  SELECT id INTO v_math_id FROM exam_subjects WHERE exam_body_id = v_luth_id AND name = 'Mathematics' LIMIT 1;
  SELECT id INTO v_phys_id FROM exam_subjects WHERE exam_body_id = v_luth_id AND name = 'Physics' LIMIT 1;
  SELECT id INTO v_chem_id FROM exam_subjects WHERE exam_body_id = v_luth_id AND name = 'Chemistry' LIMIT 1;
  SELECT id INTO v_bio_id FROM exam_subjects WHERE exam_body_id = v_luth_id AND name = 'Biology' LIMIT 1;

  INSERT INTO exam_questions (subject_id, question_text, question_type, options, correct_answer, difficulty, topic, year) VALUES
(v_chem_id, 'The bearing of a point X from Yis 074.What is the bearing of Yfrom X?(', 'multiple_choice', '["106(", "148(", "164(", "254(", "286"]'::jsonb, 'A', 'medium', 'LUTH 2017 CHEMISTRY', 2017),
(v_chem_id, 'If two inductors of inductance 3H and 6H are arrange in series,the total inductance His', 'multiple_choice', '["18.0H", "9.0H", "2.0H", "5.0H", "5.0H"]'::jsonb, 'A', 'medium', 'LUTH 2017 CHEMISTRY', 2017),
(v_chem_id, 'In prokaryotic cell type is characterized by (', 'multiple_choice', '["complex\ncytoplasm in which different regions ire poorly defined (", "localization of different regions of the cell into tissues (", "collection of organelles and macromolecular complexes (", "simple cytoplasm with well defined regions", "simple cytoplasm with well defined regions"]'::jsonb, 'A', 'medium', 'LUTH 2017 CHEMISTRY', 2017),
(v_chem_id, 'The natural tendency of orgarism as they evove is to (', 'multiple_choice', '["decrease in size (", "increase in (", "develop\nspecialized  structures  (", "feed  indiscriminately", "feed  indiscriminately"]'::jsonb, 'A', 'medium', 'LUTH 2017 CHEMISTRY', 2017),
(v_chem_id, 'In snails,the hard calcareous shells are secreted by the (', 'multiple_choice', '["radius(", "tenidium(", "pneumostome         (", "mantle", "mantle"]'::jsonb, 'A', 'medium', 'LUTH 2017 CHEMISTRY', 2017),
(v_chem_id, 'The magnetic field is produce at what ange', 'multiple_choice', '["0°", "30°", "180°", "90°", "90°"]'::jsonb, 'A', 'medium', 'LUTH 2017 CHEMISTRY', 2017),
(v_chem_id, 'The caste of termites that lacks pigmentation is the (', 'multiple_choice', '["king (", "worker   (", "soldier   (", "queen", "queen"]'::jsonb, 'A', 'medium', 'LUTH 2017 CHEMISTRY', 2017),
(v_chem_id, 'The structures that prevent food particles from', 'multiple_choice', '["arches (", "filaments (", "rakers  (", "lamellae", "lamellae"]'::jsonb, 'A', 'medium', 'LUTH 2017 CHEMISTRY', 2017),
(v_chem_id, 'A distinguishing feature of mammals is the possession of (', 'multiple_choice', '["distinguishing feature of mammals is the possession of (", "skin  (", "scale  (", "nail  (", "hair"]'::jsonb, 'A', 'medium', 'LUTH 2017 CHEMISTRY', 2017),
(v_chem_id, 'Which of the following structures is capable of pradudng more tissues in the stem of a herbaceous flowering plant?', 'multiple_choice', '["epidermis    (", "pericycle    (", "xylem(", "cambium", "cambium"]'::jsonb, 'A', 'medium', 'LUTH 2017 CHEMISTRY', 2017),
(v_chem_id, 'The manufacture of carbchydrates by plants takes place only in(', 'multiple_choice', '["the  leaves  (", "the  green  stems  (", "chlorophyllous  parts (", "flowering    plants", "flowering    plants"]'::jsonb, 'A', 'medium', 'LUTH 2017 CHEMISTRY', 2017),
(v_chem_id, 'In a water culture experiment,a plant showed poor growth and yellowing of the leaves.These may be due to deficiency of(', 'multiple_choice', '["copper(", "iron(", "magnesium(", "calcium", "calcium"]'::jsonb, 'A', 'medium', 'LUTH 2017 CHEMISTRY', 2017),
(v_chem_id, 'In million''s test,when the reagent is added to a protein food item,a white precipitate is produced which turns (', 'multiple_choice', '["blue  on heating(", "yellow  on  heating  (", "green  on  heating(", "red  on heating", "red  on heating"]'::jsonb, 'A', 'medium', 'LUTH 2017 CHEMISTRY', 2017),
(v_chem_id, 'Regulation of blood sugar level takes place in the (', 'multiple_choice', '["pancrease(", "ileum   (", "liver   (", "kidney", "kidney"]'::jsonb, 'A', 'medium', 'LUTH 2017 CHEMISTRY', 2017),
(v_chem_id, 'Unicellular orgarism tranport essential nutrients directly to all parts of their bodies by the process of diffusion because they have (', 'multiple_choice', '["a large volume to surface area ratio (", "a large surface  area to volume ratio (", "their bodies immersed in the nutrients (", "their outer membrane made of cellulose", "their outer membrane made of cellulose"]'::jsonb, 'A', 'medium', 'LUTH 2017 CHEMISTRY', 2017),
(v_chem_id, 'Which of the following movements occur during exhalation? (', 'multiple_choice', '["the  diaphragm  and  intercostals  muscles  relax(", "the\nthoracic cavity increases in volume (", "the diaphragm and intercostals  muscles  contrast  (", "the  diaphragm  contrasts and the intercostals muscles relax", "the  diaphragm  contrasts and the intercostals muscles relax"]'::jsonb, 'A', 'medium', 'LUTH 2017 CHEMISTRY', 2017),
(v_chem_id, 'Inwhidh of the following groups of animals is the Malphigian tubule found?(', 'multiple_choice', '["lizards,snakes and.frogs (", "crickets,house     flies and grasshoppers(", "millipedes,,centipedes and scorpions (", "earthworms,roundworms and flatworms", "earthworms,roundworms and flatworms"]'::jsonb, 'A', 'medium', 'LUTH 2017 CHEMISTRY', 2017),
(v_chem_id, 'Which of the following is not a funcdion of the mammalian skeleton?(', 'multiple_choice', '["protection(", "respiration  (", "transportation\n(", "support", "support"]'::jsonb, 'A', 'medium', 'LUTH 2017 CHEMISTRY', 2017),
(v_chem_id, 'The most reliable estimate of growth is by', 'multiple_choice', '["length (", "volume\n(", "surfacearea(", "dryweight", "dryweight"]'::jsonb, 'A', 'medium', 'LUTH 2017 CHEMISTRY', 2017),
(v_chem_id, 'Which of the fallowing is nota physical change?(', 'multiple_choice', '["the\nbubbling of chlorine into water (", "the bubbling of chlorine into a jar containing hydrogen (", "the dissolution of sodium chloride in water 《", "the passing of steam over heated iron.", "the passing of steam over heated iron."]'::jsonb, 'A', 'medium', 'LUTH 2017 CHEMISTRY', 2017);

  RAISE NOTICE 'Loaded micro-batch 9/23 with 20 questions (total so far: 180)';
END $$;
DO $$
DECLARE
  v_luth_id UUID;
  v_eng_id UUID;
  v_math_id UUID;
  v_phys_id UUID;
  v_chem_id UUID;
  v_bio_id UUID;
BEGIN
  SELECT id INTO v_luth_id FROM exam_bodies WHERE short_name = 'LUTH' LIMIT 1;
  SELECT id INTO v_eng_id FROM exam_subjects WHERE exam_body_id = v_luth_id AND name = 'English' LIMIT 1;
  SELECT id INTO v_math_id FROM exam_subjects WHERE exam_body_id = v_luth_id AND name = 'Mathematics' LIMIT 1;
  SELECT id INTO v_phys_id FROM exam_subjects WHERE exam_body_id = v_luth_id AND name = 'Physics' LIMIT 1;
  SELECT id INTO v_chem_id FROM exam_subjects WHERE exam_body_id = v_luth_id AND name = 'Chemistry' LIMIT 1;
  SELECT id INTO v_bio_id FROM exam_subjects WHERE exam_body_id = v_luth_id AND name = 'Biology' LIMIT 1;

  INSERT INTO exam_questions (subject_id, question_text, question_type, options, correct_answer, difficulty, topic, year) VALUES
(v_chem_id, 'In the reaction SnOz+2C---------Sn+2CO,the mass of coke containing 80%carbon required to reduce 0.302kg of pure tin oxide is (', 'multiple_choice', '["40kg(", "0.20kg(", "0.06kg(", "0.04kg.", "0.04kg."]'::jsonb, 'A', 'medium', 'LUTH 2017 CHEMISTRY', 2017),
(v_chem_id, 'A gas occupies a container of volume 146cm3 at 180°c and 0.971 atom its volume in cm3 at STP (', 'multiple_choice', '["gas occupies a container of volume  146cm3  at  180°c and 0.971 atom its volume in cm3 at STP (", "133 (", "146 (", "266 (", "292"]'::jsonb, 'A', 'medium', 'LUTH 2017 CHEMISTRY', 2017),
(v_chem_id, 'The volume occupied by 1.58g of a gas at STP is 500cm² . What is the relative molecules mass of the gas?(', 'multiple_choice', '["28\n(", "32(", "44(", "71(G.M.V.at S.T.P=22.40dm³)", "71(G.M.V.at S.T.P=22.40dm³)"]'::jsonb, 'A', 'medium', 'LUTH 2017 CHEMISTRY', 2017),
(v_chem_id, 'The shape of d-crbital is', 'multiple_choice', '["Spherical", "orthogonal", "polygonal", "dumbbell", "dumbbell"]'::jsonb, 'A', 'medium', 'LUTH 2017 CHEMISTRY', 2017),
(v_chem_id, 'A basic ulate of the kinetic theory of gases is the molecules of a gas move in straight lines between collisions.This', 'multiple_choice', '["basic ulate of the kinetic theory of gases is the molecules of a gas move in straight lines between collisions.This\nimplies that (", "collisions are perfectly elastic (", "forces of  repulsion exist (", "forces of repulsion and attraction are in equilibrium(", "collisions are  inelastic"]'::jsonb, 'A', 'medium', 'LUTH 2017 CHEMISTRY', 2017),
(v_chem_id, 'Which of the following terms indicates the number of', 'multiple_choice', '["oxidation\nnumber (", "valence (", "atomic number (", "electronegativity", "electronegativity"]'::jsonb, 'A', 'medium', 'LUTH 2017 CHEMISTRY', 2017),
(v_chem_id, 'X(g)X(g)The type of energy involved in the above', 'multiple_choice', '["ionization energy (", "sublimation\nenergy(", "lattice energy {", "electron affinity", "electron affinity"]'::jsonb, 'A', 'medium', 'LUTH 2017 CHEMISTRY', 2017),
(v_chem_id, 'Chlarine,conssting of two isotopes of mass number 35 and 37,has an atomic mass of 35.5.The relative abundance of the isotopes of mass number 37is(', 'multiple_choice', '["20(", "25(", "50(", "75", "75"]'::jsonb, 'A', 'medium', 'LUTH 2017 CHEMISTRY', 2017),
(v_chem_id, 'A blue solid T.,which weighed 5.0g was placed on a table.', 'multiple_choice', '["is deliquescent\n(", "is hygroscopic (", "has some molecules of water of\n\ncrystallization (", "is efflorescent", "is efflorescent"]'::jsonb, 'A', 'medium', 'LUTH 2017 CHEMISTRY', 2017),
(v_chem_id, 'The efluent of an industrial plant used on electrolysis of', 'multiple_choice', '["hydrogen (", "mercury (", "chloride    (", "hydrogen   chloride", "hydrogen   chloride"]'::jsonb, 'A', 'medium', 'LUTH 2017 CHEMISTRY', 2017),
(v_chem_id, 'Smoke cansists of (', 'multiple_choice', '["solid partick dispersed in liquid (", "solid or liquid particles dispersed in gas (", "gas or liquid\nparticles dispersed in liquid (", "liquid particles dispersed in liquid.", "liquid particles dispersed in liquid."]'::jsonb, 'A', 'medium', 'LUTH 2017 CHEMISTRY', 2017),
(v_chem_id, 'Na₂C₂O₄+CaCO₂CaCO₂O₄+2NaCl.Given a solution of 1.9g of sodium oxalate in 50g of water at room temperature,', 'multiple_choice', '["1.40x10²dm(", "1.40x\n10²dm³(", "1.40x10²dm³(", "1.40×10²cm³", "1.40×10²cm³"]'::jsonb, 'A', 'medium', 'LUTH 2017 CHEMISTRY', 2017),
(v_chem_id, '2.0g of a monobasic acid was made up to 250cm3 with distilled water 25.00cm3 of this solution required 20.00cm3of 1 M', 'multiple_choice', '["200g(", "150g(", "100g(", "50g", "50g"]'::jsonb, 'A', 'medium', 'LUTH 2017 CHEMISTRY', 2017),
(v_chem_id, 'What is the concentration of H ions in moles per dm3 of a solurion ofpH4.398?(', 'multiple_choice', '["4.0×10²(", "0.4×10²(", "4.0×10³\n(", "0.4x   10", "0.4x   10"]'::jsonb, 'A', 'medium', 'LUTH 2017 CHEMISTRY', 2017),
(v_chem_id, 'What volume of 11.0M hydrochloric acid must be distilled to obtain 1dm3 of 0.05M acid?(', 'multiple_choice', '["4.54cm3 (", "5.65cm3(", "6.76cm3(", "7.87cm3", "7.87cm3"]'::jsonb, 'A', 'medium', 'LUTH 2017 CHEMISTRY', 2017),
(v_chem_id, 'The young engineer is good at terminating other people''s projects but has not been capable of ----any of his own. (', 'multiple_choice', '["integrating(", "finishing(", "completing(", "initiating(", "organizing"]'::jsonb, 'A', 'medium', 'LUTH 2017 CHEMISTRY', 2017),
(v_chem_id, 'The manager who is expected to be given respect was treated with-------(', 'multiple_choice', '["dignity (8)scorn (", "shame (", "cruelty\n(", "disioyalty", "disioyalty"]'::jsonb, 'A', 'medium', 'LUTH 2017 CHEMISTRY', 2017),
(v_chem_id, 'Those who had invtatian cards were admitted to the party while those who had none were-------(', 'multiple_choice', '["barred (", "repelled      (", "expelled  (", "compelled  (", "restricted"]'::jsonb, 'A', 'medium', 'LUTH 2017 CHEMISTRY', 2017),
(v_chem_id, 'Nobody expects him to show ------for his children but he certainly bestows too much affection on them (', 'multiple_choice', '["love (", "concern(", "intimacy      (", "devotion(", "hatred"]'::jsonb, 'A', 'medium', 'LUTH 2017 CHEMISTRY', 2017),
(v_chem_id, 'The challenger was crude and inexperienced in contrast to the champion who was---------(', 'multiple_choice', '["great (", "exposed    (", "celebrated (", "refined (", "strong\n\nFrom the words lettered"]'::jsonb, 'A', 'medium', 'LUTH 2017 CHEMISTRY', 2017);

  RAISE NOTICE 'Loaded micro-batch 10/23 with 20 questions (total so far: 200)';
END $$;
DO $$
DECLARE
  v_luth_id UUID;
  v_eng_id UUID;
  v_math_id UUID;
  v_phys_id UUID;
  v_chem_id UUID;
  v_bio_id UUID;
BEGIN
  SELECT id INTO v_luth_id FROM exam_bodies WHERE short_name = 'LUTH' LIMIT 1;
  SELECT id INTO v_eng_id FROM exam_subjects WHERE exam_body_id = v_luth_id AND name = 'English' LIMIT 1;
  SELECT id INTO v_math_id FROM exam_subjects WHERE exam_body_id = v_luth_id AND name = 'Mathematics' LIMIT 1;
  SELECT id INTO v_phys_id FROM exam_subjects WHERE exam_body_id = v_luth_id AND name = 'Physics' LIMIT 1;
  SELECT id INTO v_chem_id FROM exam_subjects WHERE exam_body_id = v_luth_id AND name = 'Chemistry' LIMIT 1;
  SELECT id INTO v_bio_id FROM exam_subjects WHERE exam_body_id = v_luth_id AND name = 'Biology' LIMIT 1;

  INSERT INTO exam_questions (subject_id, question_text, question_type, options, correct_answer, difficulty, topic, year) VALUES
(v_chem_id, 'The fisherman threw a stone into the river and this caused a ---------(', 'multiple_choice', '["sprinkle(", "sparkle   (", "splash   (", "spring(", "storm"]'::jsonb, 'A', 'medium', 'LUTH 2017 CHEMISTRY', 2017),
(v_chem_id, 'The play was so interesting that the --------clapped for quite a long time at the end.(', 'multiple_choice', '["spectators(", "Search\n\n\n\n\n(", "congregation(", "people(", "audience"]'::jsonb, 'A', 'medium', 'LUTH 2017 CHEMISTRY', 2017),
(v_chem_id, 'The building----------because of weak structural foundation.', 'multiple_choice', '["tumbled (", "succumbed (", "somersaulted (", "collapsed (", "caved"]'::jsonb, 'A', 'medium', 'LUTH 2017 CHEMISTRY', 2017),
(v_chem_id, 'The magezine was --------by the govermment for an', 'multiple_choice', '["prescribed(", "proscribed\n(", "suspended《", "condemned (", "persecuted"]'::jsonb, 'A', 'medium', 'LUTH 2017 CHEMISTRY', 2017),
(v_chem_id, 'Many people reacted to the brutal murder of the popular journalist with strong ------(', 'multiple_choice', '["Indignation(", "demonstrate (", "mobilization  (", "below each of\nthe following sentences,choose the word or group of words   that is nearest in meaning to the underlined word or group of words as used in the sentence.", "below each of\nthe following sentences,choose the word or group of words   that is nearest in meaning to the underlined word or group of words as used in the sentence."]'::jsonb, 'A', 'medium', 'LUTH 2017 CHEMISTRY', 2017),
(v_chem_id, 'It takes a great deal of stamina to run the marathon race. (', 'multiple_choice', '["courage(", "determine  (", "energy  (", "intelligence  (", "cleveness"]'::jsonb, 'A', 'medium', 'LUTH 2017 CHEMISTRY', 2017),
(v_chem_id, 'But for the principal actor the play would have been dull. (', 'multiple_choice', '["Important (", "head (", "master (", "famous (", "main"]'::jsonb, 'A', 'medium', 'LUTH 2017 CHEMISTRY', 2017),
(v_chem_id, 'John spent hours looking……his dictionary he couldn''t find it.', 'multiple_choice', '["at", "in", "for", "to", "to"]'::jsonb, 'A', 'medium', 'LUTH 2017 CHEMISTRY', 2017),
(v_chem_id, 'He was reluctant to grant my request (', 'multiple_choice', '["disposed\n(", "delight  (", "reticent  {", "unwilling(", "agreeable"]'::jsonb, 'A', 'medium', 'LUTH 2017 CHEMISTRY', 2017),
(v_chem_id, 'The detective was perplexed when the clues in the', 'multiple_choice', '["surprised(", "confused (", "excited (", "discouraged (", "disappointed"]'::jsonb, 'A', 'medium', 'LUTH 2017 CHEMISTRY', 2017),
(v_chem_id, 'My financial situation is so precarious that very scon I may be insolvent(', 'multiple_choice', '["borrowing(", "steeling(", "soluble\n(", "dependent (", "bankrupt"]'::jsonb, 'A', 'medium', 'LUTH 2017 CHEMISTRY', 2017),
(v_chem_id, 'The chairman is of the opinion that accepting the', 'multiple_choice', '["harmful(", "relevant     (", "irrelevant\n(", "indispensable(", "helpful"]'::jsonb, 'A', 'medium', 'LUTH 2017 CHEMISTRY', 2017),
(v_chem_id, 'The famous politician was noted for his pragmatic appraach to national interest (', 'multiple_choice', '["idealistic (", "romantic (", "compromising(0)practical    (", "inconsistent", "inconsistent"]'::jsonb, 'A', 'medium', 'LUTH 2017 CHEMISTRY', 2017),
(v_chem_id, 'Kunle is very pessimistic about our chance of success (', 'multiple_choice', '["sad (", "despondent  (", "unconvinced  (", "worried  (", "concerned\n\n("]'::jsonb, 'A', 'medium', 'LUTH 2017 CHEMISTRY', 2017),
(v_eng_id, 'Shadows and eclipses resultfrom the [A]refraction of light [B]rectilinear propagation of light [C]diffraction of light [D]reflection of light.', 'multiple_choice', '["refraction of light", "rectilinear   propagation   of   light", "diffraction   of   light", "reflection  of  light.", "reflection  of  light."]'::jsonb, 'A', 'medium', 'LUTH 2018 ENGLISH', 2018),
(v_eng_id, 'An object,whidh is 3cm high is placed vertically 10cm in front of a concave mirror lf this object produces an image 40cm from the mirror,the height of theimage is[A]', 'multiple_choice', '["0.75cm", "4.00cm", "8.00cm", "12.00cm", "12.00cm"]'::jsonb, 'A', 'medium', 'LUTH 2018 ENGLISH', 2018),
(v_eng_id, 'A boy lboks at the image of an object in a plane mirror He observes two images,a main bright one and the other faint. The observed images result from [A]reflection only [B]', 'multiple_choice', '["reflection only", "refraction only", "diffraction and interference", "reflection\n\nand refraction.", "reflection\n\nand refraction."]'::jsonb, 'A', 'medium', 'LUTH 2018 ENGLISH', 2018),
(v_eng_id, 'What must be the distanœ between an object and a', 'multiple_choice', '["20cm", "15cm", "10cm", "5cm.", "5cm."]'::jsonb, 'A', 'medium', 'LUTH 2018 ENGLISH', 2018),
(v_eng_id, 'For a shortsighted persan,light ray from apoint on a very distant object is focused.[A]in front of the retina [B]on the retina by a converging lens [C]behind the retina by a diverging lens [D]in front of the retina at a distant of 2F from the lens', 'multiple_choice', '["in front  of the  retina", "on   the retina by a converging lens", "behind the retina by a   diverging lens", "in front of the retina at a distant of 2F   from the lens", "in front of the retina at a distant of 2F   from the lens"]'::jsonb, 'A', 'medium', 'LUTH 2018 ENGLISH', 2018),
(v_eng_id, 'When light is incident on an object,which is magenta in', 'multiple_choice', '["red and blue", "green only", "red and green", "red only.", "red only."]'::jsonb, 'A', 'medium', 'LUTH 2018 ENGLISH', 2018);

  RAISE NOTICE 'Loaded micro-batch 11/23 with 20 questions (total so far: 220)';
END $$;
