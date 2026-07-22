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
(v_eng_id, 'In a resonance tube experiment,the effective length of the air column for the first resonance is 20cm when set into vibration by a tuning fork of frequency 480Hz.', 'multiple_choice', '["96m/s", "255m/s", "340m/s", "384m/s,", "384m/s,"]'::jsonb, 'A', 'medium', 'LUTH 2018 ENGLISH', 2018),
(v_eng_id, 'A govemment spokesman anncunced that efforts … … …', 'multiple_choice', '["to obtain", "in obtaining", "for obtaining", "of obtaining.", "of obtaining."]'::jsonb, 'A', 'medium', 'LUTH 2018 ENGLISH', 2018),
(v_eng_id, 'I know youthink lam talking nonsene,Shehu but … … …', 'multiple_choice', '["at one time", "on time", "in time", "at times.", "at times."]'::jsonb, 'A', 'medium', 'LUTH 2018 ENGLISH', 2018),
(v_eng_id, 'The inpector of Education who made several trips on the', 'multiple_choice', '["brought down", "put down", "worn down", "worn off.", "worn off."]'::jsonb, 'A', 'medium', 'LUTH 2018 ENGLISH', 2018),
(v_eng_id, 'The vice prindpal asked the students to always ……… their', 'multiple_choice', '["look out", "search out", "look up", "bring up.", "bring up."]'::jsonb, 'A', 'medium', 'LUTH 2018 ENGLISH', 2018),
(v_eng_id, 'Iknow that your friend vill not accept the proposa.. … … … . …', 'multiple_choice', '["and you neither", "and neither you", "neither do you", "neither will you.", "neither will you."]'::jsonb, 'A', 'medium', 'LUTH 2018 ENGLISH', 2018),
(v_eng_id, 'Mark is a very handsame fellow who informs me thathe has ……for pretty girls [A]a heart[B]a lip [C]an eye [D]', 'multiple_choice', '["a heart", "a lip", "an eye", "a check.", "a check."]'::jsonb, 'A', 'medium', 'LUTH 2018 ENGLISH', 2018),
(v_eng_id, 'WaleAgun,in creating his characters,draws', 'multiple_choice', '["by", "in", "on", "of.", "of."]'::jsonb, 'A', 'medium', 'LUTH 2018 ENGLISH', 2018),
(v_eng_id, 'When I have an appointment with someone,Ihate ………', 'multiple_choice', '["to be keeping", "for being kept", "being kept", "in being kept.", "in being kept."]'::jsonb, 'A', 'medium', 'LUTH 2018 ENGLISH', 2018),
(v_eng_id, 'It''s no good ………about the resuit until you have sat for', 'multiple_choice', '["to  worry", "for worrying", "worrying", "to have worried.", "to have worried."]'::jsonb, 'A', 'medium', 'LUTH 2018 ENGLISH', 2018),
(v_eng_id, 'If you don''t want to………your car to robbers,then', 'multiple_choice', '["loose", "loss", "lose", "lost. 21.The number 25 when converted from the tens and units  base to the binary base(base two)is oneofthefollowing.", "10011"]'::jsonb, 'A', 'medium', 'LUTH 2018 ENGLISH', 2018),
(v_eng_id, 'The positive root of t in the following equation 4t²+7t-1= 0.correct to 4 places of decimal,is [A]1.0622 [B]10.6225', 'multiple_choice', '["1.0622", "10.6225", "0.1328", "0.3218", "2.0132."]'::jsonb, 'A', 'medium', 'LUTH 2018 ENGLISH', 2018),
(v_eng_id, 'The first term of an Arithmetic Progression is 3 and the fifth term is 9.Find the number of the terms in the progression if the sum is 81.[Al 12[B]27[C]9[D]4[E]36.', 'multiple_choice', '["27", "9", "4", "36.", "36."]'::jsonb, 'A', 'medium', 'LUTH 2018 ENGLISH', 2018),
(v_eng_id, 'A baking recipe calls for 2.5 kg of sugar and 4.5 kg flour with this recipe some cakes were baked using 24.5 kg of a', 'multiple_choice', '["12.25g", "6.5kg", "8.75kg", "15.75kg", "8.25 kg."]'::jsonb, 'A', 'medium', 'LUTH 2018 ENGLISH', 2018),
(v_eng_id, 'The sum of the root of a quadratic is 5/2 and then product of', 'multiple_choice', '["2²+5+8=0", "2²-5+B=0", "2²-8+5=0", "2²+8-5=0", "2²-s+B=o."]'::jsonb, 'A', 'medium', 'LUTH 2018 ENGLISH', 2018),
(v_eng_id, 'Sowe the given equation(lbg al²-6log s+9=0[A]27[B]9', 'multiple_choice', '["27", "9", "³/z₇", "18", "81."]'::jsonb, 'A', 'medium', 'LUTH 2018 ENGLISH', 2018),
(v_eng_id, 'In which order are the fallowing salts sensitive to light?[A] Agl AgClAgBr [B]AgClAglAgBr [C]AgBr AgCl Agl [D]AgCl', 'multiple_choice', '["Agl AgClAgBr", "AgClAglAgBr", "AgBr AgCl Agl", "AgCl\nAgBr Agl.", "AgCl\nAgBr Agl."]'::jsonb, 'A', 'medium', 'LUTH 2018 ENGLISH', 2018),
(v_eng_id, 'The pOH of a solution of 0.25 mol dm3 of hydrochloric acid is', 'multiple_choice', '["12.40", "13.40", "14.40", "14.60.", "14.60."]'::jsonb, 'A', 'medium', 'LUTH 2018 ENGLISH', 2018),
(v_eng_id, 'MnO²₄+8H aa|ZYMn²*taal+4H zOoY in the', 'multiple_choice', '["2e", "3e", "5e", "7e     34.Given that M is the mass of substance deposited in an\nelectrolysis and Q the quantity consumed,then Faraday''s law can be written as", "Z/Q"]'::jsonb, 'A', 'medium', 'LUTH 2018 ENGLISH', 2018),
(v_eng_id, '0.46g of ethanol when burned raised the temperature of 50g of water by 14.3K.Calculate the heat of combustion of ethanol.[A]+33000KJmol¹[B]+300KJmof²[C]', 'multiple_choice', '["+33000KJmol¹", "+300KJmof²", "300KJ    mol¹", "300KJmol¹c=12.0=16.H=1,Specific heat capacity of water=4.2JgK", "300KJmol¹c=12.0=16.H=1,Specific heat capacity of water=4.2JgK"]'::jsonb, 'A', 'medium', 'LUTH 2018 ENGLISH', 2018);

  RAISE NOTICE 'Loaded micro-batch 12/23 with 20 questions (total so far: 240)';
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
(v_eng_id, 'Powdered marble readts faster with hydrochloric acid solution than the granular form because the powdered form has [A]more molecules [B]more atoms [C]larger surface area [D]relatively large mass.', 'multiple_choice', '["more molecules", "more atoms", "larger surface area", "relatively large mass.", "relatively large mass."]'::jsonb, 'A', 'medium', 'LUTH 2018 ENGLISH', 2018),
(v_eng_id, 'For areaction in equlibrium,the species irvolved in the equilibrium constant expression are [A]gaseous and', 'multiple_choice', '["gaseous and\nsolid species", "liquid and solid species", "solid and dissolved species", "gaseous and dissolved species.", "gaseous and dissolved species."]'::jsonb, 'A', 'medium', 'LUTH 2018 ENGLISH', 2018),
(v_eng_id, 'A phenomenan where an element exits in different foms in the same physical state is known as [A]isomerism [B]', 'multiple_choice', '["isomerism", "amorphism", "allotropy", "isotropy.", "isotropy."]'::jsonb, 'A', 'medium', 'LUTH 2018 ENGLISH', 2018),
(v_eng_id, 'The substance often used for vulcanization of rubber is [A]chlorine [B]hydrogen peroxide [C]sulphur [D]', 'multiple_choice', '["chlorine", "hydrogen peroxide", "sulphur", "tetraoxosulphate (Vl)acid.", "tetraoxosulphate (Vl)acid."]'::jsonb, 'A', 'medium', 'LUTH 2018 ENGLISH', 2018),
(v_eng_id, 'Agas that is not associated with globa warming is [A]CO₂ [B]SO₂[C]CH₄[D]H₂ .', 'multiple_choice', '["CO₂", "SO₂", "CH₄", "H₂ .", "H₂ ."]'::jsonb, 'A', 'medium', 'LUTH 2018 ENGLISH', 2018),
(v_eng_id, 'Which of the following structures is capable of producing more tissues in the stem of a herbaceous flowering plant?', 'multiple_choice', '["Epidermis", "pericycle", "xylem", "cambium.", "cambium."]'::jsonb, 'A', 'medium', 'LUTH 2018 ENGLISH', 2018),
(v_eng_id, 'The manufacture of carbohydrates by plants takes place oniy in[A]the leaves [B]the green stems [C]chlorophyll us parts [D]Floweringplants.', 'multiple_choice', '["the leaves", "the green stems", "chlorophyll us parts", "Floweringplants.", "Floweringplants."]'::jsonb, 'A', 'medium', 'LUTH 2018 ENGLISH', 2018),
(v_eng_id, 'In water culture experiment,a plant showed poor growth', 'multiple_choice', '["copper", "iron", "magnesium", "calcium.", "calcium."]'::jsonb, 'A', 'medium', 'LUTH 2018 ENGLISH', 2018),
(v_eng_id, 'In millfon''s test,when the reagent is added to a protein food item,a white precipitate is produced which turns [A]blue on heating [B]yellow oh heating [C]green on heating [D]red on heating.', 'multiple_choice', '["blue  on heating", "yellow  oh  heating", "green  on  heating", "red on  heating.", "red on  heating."]'::jsonb, 'A', 'medium', 'LUTH 2018 ENGLISH', 2018),
(v_eng_id, 'Reguhtion of blood sugar level takes place in the', 'multiple_choice', '["pancreas", "ileum", "liver", "kidney.", "kidney."]'::jsonb, 'A', 'medium', 'LUTH 2018 ENGLISH', 2018),
(v_eng_id, 'Uniellular organisms transport essential nutrients directly to all parts of their bodies by the process of diffusion', 'multiple_choice', '["a large volume to surface area ratio", "a large surface area to volume ratio", "their bodies\nimmersed  in the  nutrients", "their  outer  membrane  made of cellulose.", "their  outer  membrane  made of cellulose."]'::jsonb, 'A', 'medium', 'LUTH 2018 ENGLISH', 2018),
(v_eng_id, 'The heart of the adult frog consists of [A]two aurides and two ventricles [B]one auricle and one ventricle [C]two ventricles and one auricle [D]one ventricle and two auricles.', 'multiple_choice', '["two aurides and two ventricles", "one auricle and one ventricle", "two ventricles    and one auricle", "one ventricle and two auricles.", "one ventricle and two auricles."]'::jsonb, 'A', 'medium', 'LUTH 2018 ENGLISH', 2018),
(v_eng_id, 'In adult mammalan blood,the cells,which lack nudei,', 'multiple_choice', '["erythrocytes", "lymphocytes", "leucocytes", "phagocytes.", "phagocytes."]'::jsonb, 'A', 'medium', 'LUTH 2018 ENGLISH', 2018),
(v_eng_id, 'Which of the following movements occur during exhalation? [A]the diaphragm and intercostals muscles relax[B]the', 'multiple_choice', '["the  diaphragm  and  intercostals  muscles  relax", "the\nthoracic cavity increases in volume", "the diaphragm and intercostals  muscles contrast", "the diaphragm contrast   and the intercostals muscles relax.", "the diaphragm contrast   and the intercostals muscles relax."]'::jsonb, 'A', 'medium', 'LUTH 2018 ENGLISH', 2018),
(v_eng_id, 'Inwhich of the following groups of arimals is the Malphigian tubule found?[A]lizards,snakes and frogs[B]crickets,', 'multiple_choice', '["lizards,snakes and frogs", "crickets,\nhouseflies and grasshoppers", "millipedes,centipedes and\nscorpions", "earthworms,roundworms,and  flatworms.\n\n\nSOLUTION TO LUTH SCHOOL OF NURSING 2018 EXAM\n\nLUTH SCHOOL OF NURSING PAST QUESTIONS AND ANSWERS", "earthworms,roundworms,and  flatworms.\n\n\nSOLUTION TO LUTH SCHOOL OF NURSING 2018 EXAM\n\nLUTH SCHOOL OF NURSING PAST QUESTIONS AND ANSWERS"]'::jsonb, 'A', 'medium', 'LUTH 2018 ENGLISH', 2018),
(v_bio_id, 'Which of the following organelles  is  used  far  locomotion in   paramecium?A.pseudopodium   B.irichocyst   C.cilium  D.pellicde  E.contractile  vacuole', 'multiple_choice', '["pseudopodium", "irichocyst", "cilium", "pellicde", "contractile  vacuole"]'::jsonb, 'A', 'medium', 'LUTH 2019 BIOLOGY', 2019),
(v_bio_id, 'The cell membranes consists of A.carbohydrates and lipids B.vitamins and  proteins C.lipids and  proteins  D.water and sugar E.starch and cellulose', 'multiple_choice', '["carbohydrates and lipids", "vitamins and  proteins", "lipids and  proteins", "water and sugar", "starch and cellulose"]'::jsonb, 'A', 'medium', 'LUTH 2019 BIOLOGY', 2019),
(v_bio_id, 'Which of the folowing is not likely to be found in the cel    of  aripe  tomato  fruit?A.plastids  B.chlorophyll  C.cellulose cell wall  D.mitochondrion  E.mineral  salts', 'multiple_choice', '["plastids", "chlorophyll", "cellulose cell wall", "mitochondrion", "mineral  salts"]'::jsonb, 'A', 'medium', 'LUTH 2019 BIOLOGY', 2019),
(v_bio_id, 'The movement of diaphragm is a characteristics of gaseous exchange in A.insect B.Fish C.toad D.mammal E.plants', 'multiple_choice', '["insect", "Fish", "toad", "mammal", "plants"]'::jsonb, 'A', 'medium', 'LUTH 2019 BIOLOGY', 2019),
(v_bio_id, 'The  medum  in  which  dissolved  nutrient  are  transparted  in the body of vertebrates is called A.latex B.urine C.cell sap', 'multiple_choice', '["latex", "urine", "cell sap", "blood", "haemoglobin"]'::jsonb, 'A', 'medium', 'LUTH 2019 BIOLOGY', 2019);

  RAISE NOTICE 'Loaded micro-batch 13/23 with 20 questions (total so far: 260)';
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
(v_bio_id, 'Which  of the  following  structures  of  the  leaf  cantains  air?A. guard cell  B.palisade  layer  C.intercellular  space  D.vascular bundle  E.upper  epidermis', 'multiple_choice', '["guard cell", "palisade  layer", "intercellular  space", "vascular bundle", "upper  epidermis"]'::jsonb, 'A', 'medium', 'LUTH 2019 BIOLOGY', 2019),
(v_chem_id, 'A mixture cantains 20cm³of hydrogen,35cm³of oxygen,', 'multiple_choice', '["mixture  cantains  20cm³of  hydrogen,35cm³of  oxygen,", "speed\n15cm²of carbon dioxide and 10cm²of nitrogen at S.T.P,                        13.Note that only senior members of staff have the  ………\nwhich of the following gives the mole fraction of hydrogen                              of using the toilet upstairs", "permission", "occasion", "in this mixture?"]'::jsonb, 'A', 'medium', 'LUTH 2019 CHEMISTRY', 2019),
(v_chem_id, '0.07g of a hydride ofcarbon occupies 56 at S.T.P when                            14.The  chief priest will………the  main  into the cut today.', 'multiple_choice', '["indoctrinate", "usher", "convert", "initiate", "15.Obi is noted for his …………attitude to his seniors at school."]'::jsonb, 'A', 'medium', 'LUTH 2019 CHEMISTRY', 2019),
(v_chem_id, 'Which  of the following  is  a  neutralization  reaction?                                 20.Insects  can   become   ………to  inseticides  A.immurized', 'multiple_choice', '["immurized", "nitric acid to hydrochloric acid S.nitric acid to", "resistant", "Reticent", "immobilized"]'::jsonb, 'A', 'medium', 'LUTH 2019 CHEMISTRY', 2019),
(v_chem_id, 'The gir that my brother introduced to us last week is pretty', 'multiple_choice', '["and", "but also", "as well as", "increased to 1000mm of Hg without changing the                                                  respectable\ntemperature.", "133.3cm³8.85cm³"]'::jsonb, 'A', 'medium', 'LUTH 2019 CHEMISTRY', 2019),
(v_chem_id, 'A real image of an objed formed by a converging lens of focal length 15cm is 3times the size of the object.What is the distance of the objed from the lens?', 'multiple_choice', '["real image of an objed formed by a converging lens of focal length  15cm is 3times the size of the object.What  is  the  distance  of  the  objed  from  the   lens?", "30cm 8.25cm", "20cm", "15cm", "10cm"]'::jsonb, 'A', 'medium', 'LUTH 2019 CHEMISTRY', 2019),
(v_chem_id, '67m', 'multiple_choice', '["74.25m", "297.00m", "8\n32.The radius of a circle is given as 5cm subject to an error   of 0.1cm.What is the percentage error in the area of the circle?", "1/25", "25\n33.What  is  the  value  of  x  satisfying  the  equation  4²/4²*=2"]'::jsonb, 'A', 'medium', 'LUTH 2019 CHEMISTRY', 2019),
(v_chem_id, 'Ice foms on a refrigerator ice box at the rate of 4.06g per minute after 1 minute.If initially there were 2g of ice,find the mass of ice formed in 5 minutes', 'multiple_choice', '["19.5", "17.0", "14.5", "12.5", "12.5"]'::jsonb, 'A', 'medium', 'LUTH 2019 CHEMISTRY', 2019),
(v_chem_id, 'Two perfect dice were thrown together.Determine the probability of obtaining a total score of 8.', 'multiple_choice', '["1/12", "5/36", "1/6", "7/36", "7/36"]'::jsonb, 'A', 'medium', 'LUTH 2019 CHEMISTRY', 2019),
(v_chem_id, 'The probability of anevent Pis}%while that of another event Qis 1/6 If the probability of both P and Q is 1/12, what is the probability of either P or Q?', 'multiple_choice', '["1/96", "1/8", "5/6", "11/12", "11/12"]'::jsonb, 'A', 'medium', 'LUTH 2019 CHEMISTRY', 2019),
(v_chem_id, 'Which of the following organelles is used far locomotion in paramecium?', 'multiple_choice', '["pseudopodium", "irichocyst", "cilium", "pellicde", "contractile  vacuole"]'::jsonb, 'A', 'medium', 'LUTH 2019 CHEMISTRY', 2019),
(v_chem_id, 'Which of the folowing is not true of the nucleus of a livuing cell?It contains', 'multiple_choice', '["nudleus", "nucleoplasm", "chromatids", "ribosomes", "ribosomes"]'::jsonb, 'A', 'medium', 'LUTH 2019 CHEMISTRY', 2019),
(v_chem_id, 'The cell membranes consists of', 'multiple_choice', '["carbohydrates and lipids", "vitamins and  proteins", "lipids and  proteins", "water and sugar", "starch and cellulose"]'::jsonb, 'A', 'medium', 'LUTH 2019 CHEMISTRY', 2019),
(v_chem_id, 'Which of the folowing is not likely to be found in the cel of aripe tomato fruit?', 'multiple_choice', '["plastids", "chlorophyll", "cellulose cell wall", "mitochondrion", "mineral  salts"]'::jsonb, 'A', 'medium', 'LUTH 2019 CHEMISTRY', 2019),
(v_chem_id, 'Osmosis can be defined as diffusion of…………', 'multiple_choice', '["atoms and\nmolecules through a membrane to an area of higher\nconcentration", "water molecules for a dilute solution to a concentrated solution across a permeable membrane", "water molecules from area of high concentration to an area of low concentration", "water molecules from a dilute\nsolution to a concentrated solution through a semi-  permeable  membrane", "perspiration  and  excretion"]'::jsonb, 'A', 'medium', 'LUTH 2019 CHEMISTRY', 2019),
(v_chem_id, 'The movement of diaphragm is a characteristics of gaseous exchange in', 'multiple_choice', '["insect", "Fish", "toad", "mammal", "plants"]'::jsonb, 'A', 'medium', 'LUTH 2019 CHEMISTRY', 2019),
(v_chem_id, 'The medum in which dissolved nutrient are transparted in the body of vertebrates is called', 'multiple_choice', '["latex", "urine", "cell sap", "blood", "haemoglobin"]'::jsonb, 'A', 'medium', 'LUTH 2019 CHEMISTRY', 2019),
(v_chem_id, 'Which of the following structures of the leaf cantains air?', 'multiple_choice', '["guard cell", "palisade  layer", "intercellular  space", "vascular bundle", "upper  epidermis"]'::jsonb, 'A', 'medium', 'LUTH 2019 CHEMISTRY', 2019),
(v_chem_id, 'Which of the folowing organs is spedially adapted for', 'multiple_choice', '["lungs", "trachea", "gills", "tracheoles", "tracheoles"]'::jsonb, 'A', 'medium', 'LUTH 2019 CHEMISTRY', 2019),
(v_phys_id, 'In the preparation of carbon monoxide by heating                                   21.Which  of  the  folowing  is  a  scalar  quantity?A.momentum', 'multiple_choice', '["momentum", "acceleration", "displacement", "distance", "force"]'::jsonb, 'A', 'medium', 'LUTH 2019 PHYSICS', 2019);

  RAISE NOTICE 'Loaded micro-batch 14/23 with 20 questions (total so far: 280)';
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
(v_chem_id, 'Pure solvents are obtained by', 'multiple_choice', '["distillation", "condensation", "extraction", "evaporation", "dissolution"]'::jsonb, 'A', 'medium', 'LUTH 2020 CHEMISTRY', 2020),
(v_chem_id, 'Environmental pollution is worsened by the release from the automobile exhaust of', 'multiple_choice', '["water vapour", "steam", "smoke", "heavy metals", "steam and smoke"]'::jsonb, 'A', 'medium', 'LUTH 2020 CHEMISTRY', 2020),
(v_chem_id, 'Sieving is a technique used to separate mixtures containing solid particles of', 'multiple_choice', '["small sizes", "large sizes", "different sizes", "the same size", "one size"]'::jsonb, 'A', 'medium', 'LUTH 2020 CHEMISTRY', 2020),
(v_chem_id, 'Nitrogen obtained from the liquefaction of air has a higher density than that obtained from nitrogen containing compounds because the former contains', 'multiple_choice', '["water vapour", "oxygen", "carbon (IV) oxide", "rare gases", "nitrogen"]'::jsonb, 'A', 'medium', 'LUTH 2020 CHEMISTRY', 2020),
(v_chem_id, 'Hydrogen is used in oxy-hydrogen flames for melting metals because it', 'multiple_choice', '["involves a lot of heat when burnt", "combines explosively with oxygen", "is a very light gas", "is a rocket fuel", "combines with air"]'::jsonb, 'A', 'medium', 'LUTH 2020 CHEMISTRY', 2020),
(v_chem_id, 'Polyvinyl chloride is used to produce A.bread B.pencils C.ink D.pipes  E.pots', 'multiple_choice', '["bread", "pencils", "ink", "pipes", "pots"]'::jsonb, 'A', 'medium', 'LUTH 2020 CHEMISTRY', 2020),
(v_chem_id, 'The addition of water to calcium oxide leads to', 'multiple_choice', '["a physical change", "a chemical change", "the formation of a mixture", "an endothermic change", "no change"]'::jsonb, 'A', 'medium', 'LUTH 2020 CHEMISTRY', 2020),
(v_chem_id, 'The metal that will react with water anly in the form of    steam to liberate hydrogen gas is A.calcium B.aluminum C.iron  D.zinc  E.platinum', 'multiple_choice', '["calcium", "aluminum", "iron", "zinc", "platinum"]'::jsonb, 'A', 'medium', 'LUTH 2020 CHEMISTRY', 2020),
(v_chem_id, '35cm³ of hydrogen was sparked with 12cm³ of oxygen at 110°c and 760mmHg to produce steam. What percentage of the total volume of gas left after the reaction is hydrogen?', 'multiple_choice', '["11%", "31%", "35%", "69%", "80%"]'::jsonb, 'A', 'medium', 'LUTH 2020 CHEMISTRY', 2020),
(v_chem_id, 'In the extraction of iron in the blast furnace, limestone is used to', 'multiple_choice', '["release CO2 for the reaction", "reduce the iron ore", "increase the strength of the iron", "remove impurities", "provide oxygen"]'::jsonb, 'A', 'medium', 'LUTH 2020 CHEMISTRY', 2020),
(v_chem_id, 'Longitudinal  waves  do  not  exhibit  A.refractian  B.reflection C.diffraction   D.polarization   E.disagrigation', 'multiple_choice', '["refractian", "reflection", "diffraction", "polarization", "disagrigation"]'::jsonb, 'A', 'medium', 'LUTH 2020 CHEMISTRY', 2020),
(v_chem_id, 'The distance between the fixed points of a centigrade', 'multiple_choice', '["22.5℃", "29.0℃", "90.0℃", "100.0℃", "110.0℃"]'::jsonb, 'A', 'medium', 'LUTH 2020 CHEMISTRY', 2020),
(v_chem_id, 'The amcunt of heat needed to rase the temperature of   10kg of copper by 1K is it''s A.specific heat capacity B.heat   capacity C.latent heat D.intermal heat E.specific latent heat', 'multiple_choice', '["specific heat capacity", "heat   capacity", "latent heat", "intermal heat", "specific latent heat"]'::jsonb, 'A', 'medium', 'LUTH 2020 CHEMISTRY', 2020),
(v_chem_id, 'Hydra removes undigested food by A.passing it through the anus B.passing it through the mouth C.means of a', 'multiple_choice', '["passing it through the anus", "passing it through the mouth", "means of a", "egesting it through the body surface", "passing it through the nose"]'::jsonb, 'A', 'medium', 'LUTH 2020 CHEMISTRY', 2020),
(v_chem_id, 'The bloodvessel which carries blood from the alimentary canal to the lever is A.hepatic artery B.hepatic vein C.      hepatic portal vein D.mesenteric E.hepatic mesenterism', 'multiple_choice', '["hepatic artery", "hepatic vein", "hepatic portal vein", "mesenteric", "hepatic mesenterism"]'::jsonb, 'A', 'medium', 'LUTH 2020 CHEMISTRY', 2020),
(v_chem_id, 'Soil with the finest particle is called A.silt B.clay C.sand D.gravel   E.latrite', 'multiple_choice', '["silt", "clay", "sand", "gravel", "latrite"]'::jsonb, 'A', 'medium', 'LUTH 2020 CHEMISTRY', 2020),
(v_chem_id, 'Interveinalchlorosis is normally associated with the', 'multiple_choice', '["magnesium", "potassium", "iron", "calcium", "iodine"]'::jsonb, 'A', 'medium', 'LUTH 2020 CHEMISTRY', 2020),
(v_chem_id, 'In  animas,meiosis  comes  A.after  fertilization   B.after  every mitotic division C.before fertilization D.before every mitotic division  E.during  fertilization', 'multiple_choice', '["after  fertilization", "after  every mitotic division", "before fertilization", "before every mitotic division", "during  fertilization"]'::jsonb, 'A', 'medium', 'LUTH 2020 CHEMISTRY', 2020),
(v_chem_id, 'Which of the following is transmitted through mosquito bite A.filariasis B.typhus C.plague D.schistomaisis E.leprosy', 'multiple_choice', '["filariasis", "typhus", "plague", "schistomaisis", "leprosy"]'::jsonb, 'A', 'medium', 'LUTH 2020 CHEMISTRY', 2020),
(v_eng_id, 'I have the……… of meeting him', 'multiple_choice', '["privikege", "privilege", "previledge", "priviledge", "privileges"]'::jsonb, 'A', 'medium', 'LUTH 2020 ENGLISH', 2020);

  RAISE NOTICE 'Loaded micro-batch 15/23 with 20 questions (total so far: 300)';
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
(v_eng_id, 'My price for the shoes is fifty naira I cannot …… anything less than that.', 'multiple_choice', '["bear with", "settle for", "agree with", "tolerate", "settle with"]'::jsonb, 'A', 'medium', 'LUTH 2020 ENGLISH', 2020),
(v_eng_id, 'The eldest son took a foolish decision which made him …… his claim to the traditional title', 'multiple_choice', '["neglect", "yield", "disclaim", "forfeit", "neglected"]'::jsonb, 'A', 'medium', 'LUTH 2020 ENGLISH', 2020),
(v_eng_id, 'The president''s speech……….at 7pm yesterday.', 'multiple_choice', '["is broadcast", "has been broadcast", "were broadcast", "was broadcast", "have been broadcast"]'::jsonb, 'A', 'medium', 'LUTH 2020 ENGLISH', 2020),
(v_eng_id, 'The students were-advised to look ………difficult words in the  dictionary.', 'multiple_choice', '["in", "on", "out", "into", "Up"]'::jsonb, 'A', 'medium', 'LUTH 2020 ENGLISH', 2020),
(v_eng_id, 'The building………because of weak structural foundation.', 'multiple_choice', '["tumbled", "succumbed", "somersaulted", "collapsed", "fell"]'::jsonb, 'A', 'medium', 'LUTH 2020 ENGLISH', 2020),
(v_eng_id, 'Since the writer did not indicate his name, the editor decided not to publish such…………article', 'multiple_choice', '["a discourteous", "an anonymous", "a cowardly", "a libellous", "unfriendly"]'::jsonb, 'A', 'medium', 'LUTH 2020 ENGLISH', 2020),
(v_eng_id, 'He was charged with complicity…………….the abortive coup.', 'multiple_choice', '["in", "for", "about", "on", "with"]'::jsonb, 'A', 'medium', 'LUTH 2020 ENGLISH', 2020),
(v_eng_id, 'Of what he said made no sense.', 'multiple_choice', '["much", "majority", "plenty", "many", "most"]'::jsonb, 'A', 'medium', 'LUTH 2020 ENGLISH', 2020),
(v_eng_id, 'things she had in the room were thrown out.A.so', 'multiple_choice', '["so", "the few", "all few", "very few", "a few"]'::jsonb, 'A', 'medium', 'LUTH 2020 ENGLISH', 2020),
(v_eng_id, 'Pure  solvents  are  obtained  by  A.distillation  B.condensation C.extraction  D.evaporation  E.dissolution', 'multiple_choice', '["distillation", "condensation", "extraction", "evaporation", "dissolution"]'::jsonb, 'A', 'medium', 'LUTH 2020 ENGLISH', 2020),
(v_eng_id, 'Environmental polution is warsened by the release fram the automobile exhaust o A.water vapour B.steam C.     smoke D.heavy metals E.steam and smoke', 'multiple_choice', '["water vapour", "steam", "smoke", "heavy metals", "steam and smoke"]'::jsonb, 'A', 'medium', 'LUTH 2020 ENGLISH', 2020),
(v_eng_id, 'Sieving is a technique used to separate mixtures containing  solid particles of A.small sizes B.large sizes C.different sizes D.the same size E.one size', 'multiple_choice', '["small sizes", "large sizes", "different sizes", "the same size", "one size"]'::jsonb, 'A', 'medium', 'LUTH 2020 ENGLISH', 2020),
(v_eng_id, 'Hydrogen is used in oxy-hydrogen flames for melting', 'multiple_choice', '["involves a lot of heat when burnt", "combines explosively with oxygen", "is a very light gas", "is a rocket fuel", "it combines with air"]'::jsonb, 'A', 'medium', 'LUTH 2020 ENGLISH', 2020),
(v_bio_id, 'Which of the following hormones is produced during fright or when agitated?', 'multiple_choice', '["Insulin", "adrenalin", "thyroxine", "pituitrin", "glucagon"]'::jsonb, 'A', 'medium', 'LUTH 2021 BIOLOGY', 2021),
(v_bio_id, 'Which of the following animals is cold blooded?', 'multiple_choice', '["cat", "lizard", "whale", "Bird", "dog"]'::jsonb, 'A', 'medium', 'LUTH 2021 BIOLOGY', 2021),
(v_bio_id, 'Spirogyra reproduces vegetatively by', 'multiple_choice', '["spore production", "fragmentation", "multiple fission", "binary fission", "division"]'::jsonb, 'A', 'medium', 'LUTH 2021 BIOLOGY', 2021),
(v_bio_id, 'All the following are digestive enzymes except', 'multiple_choice', '["bile", "lipase", "maltase", "pepsin", "ptyalin"]'::jsonb, 'A', 'medium', 'LUTH 2021 BIOLOGY', 2021),
(v_bio_id, 'If a 26 year old man married a one eyed woman and they had four children, how many of them would be blind like their father?', 'multiple_choice', '["all", "3", "2", "1", "none"]'::jsonb, 'A', 'medium', 'LUTH 2021 BIOLOGY', 2021),
(v_bio_id, 'A tapeworm has no alimentary canal because', 'multiple_choice', '["it is an antitrophe", "it does not feed", "it has no enzymes", "its body absorbs digested food", "it is long"]'::jsonb, 'A', 'medium', 'LUTH 2021 BIOLOGY', 2021),
(v_bio_id, 'Where is energy produced in the cell?', 'multiple_choice', '["nucleus", "nucleolus", "Lysosomes", "mitochondria", "ribosome"]'::jsonb, 'A', 'medium', 'LUTH 2021 BIOLOGY', 2021);

  RAISE NOTICE 'Loaded micro-batch 16/23 with 20 questions (total so far: 320)';
END $$;
