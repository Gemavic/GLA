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
(v_bio_id, 'Which of the following structure is not found in a female agama lizard?', 'multiple_choice', '["pre-anal pads", "eardrums", "nuchal crest", "gular fold", "chloroplast"]'::jsonb, 'A', 'medium', 'LUTH 2021 BIOLOGY', 2021),
(v_bio_id, 'Which of the following disease is NOT caused by a virus?', 'multiple_choice', '["rinderpest", "maize rust", "Newcastle disease", "swine fever", "nasal scale"]'::jsonb, 'A', 'medium', 'LUTH 2021 BIOLOGY', 2021),
(v_chem_id, 'The alloy used for metal work and plumbing contains', 'multiple_choice', '["lead and tin", "iron and carbon", "copper and tin", "aluminium and copper", "aluminum and iron"]'::jsonb, 'A', 'medium', 'LUTH 2021 CHEMISTRY', 2021),
(v_chem_id, 'The components of universal indicator solution can best be separated by', 'multiple_choice', '["chromatography", "filtration", "evaporation", "fractional distillation", "transpiration"]'::jsonb, 'A', 'medium', 'LUTH 2021 CHEMISTRY', 2021),
(v_chem_id, 'The oxidation numbers of phosphorous in PO4²⁻ is', 'multiple_choice', '["+1", "+2", "+3", "+5", "+7"]'::jsonb, 'A', 'medium', 'LUTH 2021 CHEMISTRY', 2021),
(v_chem_id, 'Water can be obtained as the only product during', 'multiple_choice', '["combustion of hydrocarbons", "neutralization of an acid by a base", "combustion of hydrogen", "electrolysis of brine", "boiling water"]'::jsonb, 'A', 'medium', 'LUTH 2021 CHEMISTRY', 2021),
(v_chem_id, 'The oxidation of ammonia in excess air produces', 'multiple_choice', '["N2O2", "N2O", "NO2", "N2O4", "NO"]'::jsonb, 'A', 'medium', 'LUTH 2021 CHEMISTRY', 2021),
(v_chem_id, 'The gasification of coke is used for the manufacture of', 'multiple_choice', '["producer gas", "natural gas", "synthetic gas", "industrial gas", "artificial gas"]'::jsonb, 'A', 'medium', 'LUTH 2021 CHEMISTRY', 2021),
(v_chem_id, 'The solubility curve shows the variation of solute concentration with', 'multiple_choice', '["volume", "temperature", "vapour", "pressure", "weight"]'::jsonb, 'A', 'medium', 'LUTH 2021 CHEMISTRY', 2021),
(v_chem_id, 'The density of a certain gas is 1.98g/dm³ at STP. What is the molecular mass of the gas? (molar volume of gas at STP = 22.4dm³)', 'multiple_choice', '["44.0g", "54.0g", "26.0g", "31.0g", "39.0g"]'::jsonb, 'A', 'medium', 'LUTH 2021 CHEMISTRY', 2021),
(v_eng_id, 'The alloy used for metd work and plumbing contains.', 'multiple_choice', '["lead and tin", "iron and carbon", "copper and tin", "aluminium and copper", "aluminum and iron"]'::jsonb, 'A', 'medium', 'LUTH 2021 ENGLISH', 2021),
(v_eng_id, 'The components of universal indicator solution can best be separated by', 'multiple_choice', '["chromatography", "filtration", "evaporation", "fractional  distillation", "transpiration."]'::jsonb, 'A', 'medium', 'LUTH 2021 ENGLISH', 2021),
(v_eng_id, 'The osdation numbers of phosphorous in PO 4²is', 'multiple_choice', '["+1", "+2", "+3", "+5", "+7"]'::jsonb, 'A', 'medium', 'LUTH 2021 ENGLISH', 2021),
(v_eng_id, 'Water can be obtained as the only product during', 'multiple_choice', '["combustion of hydrocarbons", "neutralization of an acid by a base", "combustion of hydrogen", "electrolysis of brine", "boiling water"]'::jsonb, 'A', 'medium', 'LUTH 2021 ENGLISH', 2021),
(v_eng_id, 'The oxidation of ammonia in excess air produces', 'multiple_choice', '["NzO₂", "N₂O", "NO₂", "N₂O₄", "NO"]'::jsonb, 'A', 'medium', 'LUTH 2021 ENGLISH', 2021),
(v_eng_id, 'The gasification of coke is used for the manufacture of', 'multiple_choice', '["producer gas", "natural gas", "synthetic gas", "industrial gas", "artifidal  gas."]'::jsonb, 'A', 'medium', 'LUTH 2021 ENGLISH', 2021),
(v_eng_id, 'The solubility curve shows the variation of solute', 'multiple_choice', '["volume", "temperature", "vapour", "pressure", "weight"]'::jsonb, 'A', 'medium', 'LUTH 2021 ENGLISH', 2021),
(v_eng_id, 'The density of a certain gas is1.98g₁dm²at s.t;p what is the molecular mass of the gas?(molar volume of gas at s.t.p.= 22.4dm)', 'multiple_choice', '["44.0g", "54.0g", "26.0g", "31.0g", "39.0g"]'::jsonb, 'A', 'medium', 'LUTH 2021 ENGLISH', 2021),
(v_eng_id, 'The interior angles of a pentagon are (2x+5)°,(x+20)°,x°, (3x-20)°and(x+15)°.find the value of x.', 'multiple_choice', '["80°", "70", "65°", "40°", "30°"]'::jsonb, 'A', 'medium', 'LUTH 2021 ENGLISH', 2021),
(v_eng_id, 'A baker used 40%of a 50kg bag offbur.If 1/8 of the 40.Plants which can survive in places where the water supply', 'multiple_choice', '["baker used 40%of a 50kg bag offbur.If 1/8 of the                              40.Plants which can survive in places where the water supply\namount used was for cake,how many kilograms of flour                                  is limited are", "mesophytes", "xerophytes", "was   used    for   cake?", "2%"]'::jsonb, 'A', 'medium', 'LUTH 2021 ENGLISH', 2021);

  RAISE NOTICE 'Loaded micro-batch 17/23 with 20 questions (total so far: 340)';
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
(v_eng_id, 'Find the average of the first four prime numbers 41.Which of the following types of waves cannot travel through a', 'multiple_choice', '["20", "19", "17", "15", "13                                                     vacuum?"]'::jsonb, 'A', 'medium', 'LUTH 2021 ENGLISH', 2021),
(v_eng_id, 'Find the mean deviation of 6,7,8,9,10.', 'multiple_choice', '["1.2", "1.5", "x-radiation", "radio  waves\n2", "10                                                      42.The temperature  at which the water vapour  in the  air"]'::jsonb, 'A', 'medium', 'LUTH 2021 ENGLISH', 2021),
(v_eng_id, 'The vanance of a given distributian is 25,what is saturates the air and begins to condence is known as', 'multiple_choice', '["the standard deviation?", "125", "75", "75 Ib.5", "3                                            boiling  point"]'::jsonb, 'A', 'medium', 'LUTH 2021 ENGLISH', 2021),
(v_eng_id, 'Express 7/19 as a percentage,correct to ldecimal place.', 'multiple_choice', '["critical   temperature\n2.7%", "3.7%", "27.1%", "36.8%", "42.2%                                                     43.The motion of the moving skin of a talking drum can"]'::jsonb, 'A', 'medium', 'LUTH 2021 ENGLISH', 2021),
(v_eng_id, 'Given that Log₄x=-3,find x.', 'multiple_choice', '["1/81", "1/640.64", "881                                  rightly be described as", "translational", "random"]'::jsonb, 'A', 'medium', 'LUTH 2021 ENGLISH', 2021),
(v_eng_id, 'A chord of a cirde radius 26cm s 10cm from the center of 44.What is the relative permittvity of a capacitor if its', 'multiple_choice', '["16cm-                                          capacitance with a medium as dielectric is I 6farads,and its", "27.86cm 0.32cm", "40cm", "48cm                                                                  capacitance with vacuum as dielectricis 2farads?", "-1"]'::jsonb, 'A', 'medium', 'LUTH 2021 ENGLISH', 2021),
(v_eng_id, 'Which of the following hormones is produced durirg', 'multiple_choice', '["8\nfright or when agitated.", "Insulin", "adrenalin", "45.The activity of a radioactive substance depends on", "thyroxine"]'::jsonb, 'A', 'medium', 'LUTH 2021 ENGLISH', 2021),
(v_eng_id, 'Which of the following animals is cad bloaded?', 'multiple_choice', '["cat                                     purity and temperature", "purity and age", "none of", "lizard", "whale"]'::jsonb, 'A', 'medium', 'LUTH 2021 ENGLISH', 2021),
(v_eng_id, 'Spirogyra reproduces vegetatively by', 'multiple_choice', '["spore production", "46.The  principle  of the transmissibiity of pressure in fluids at\nfragmentation", "multiple fission", "binary fission", "division                                rest in all directions is known as"]'::jsonb, 'A', 'medium', 'LUTH 2021 ENGLISH', 2021),
(v_eng_id, 'All the following are digestive enzymes except', 'multiple_choice', '["bie                                      Floatation principle", "Newton''s law", "Pascal''s law", "lipase", "maltase"]'::jsonb, 'A', 'medium', 'LUTH 2021 ENGLISH', 2021),
(v_eng_id, 'If a 26year old man married a one eyed woman and they 47.Change of state is accampanied by change of', 'multiple_choice', '["temperature\nhad four children,how many of them would be blind like", "volume", "heat  ontent", "temperature  and  volume", "their father?"]'::jsonb, 'A', 'medium', 'LUTH 2021 ENGLISH', 2021),
(v_eng_id, 'A tapevorm has no alimentary canal because', 'multiple_choice', '["tapevorm has no alimentary canal because", "itis an                         48.The lack of power of accommodation which is mainly due\nantotropic", "it does not feed", "it has no enzymes", "its                                 to the hardening of the eye is called"]'::jsonb, 'A', 'medium', 'LUTH 2021 ENGLISH', 2021),
(v_eng_id, 'Where is energy produced in the cell?', 'multiple_choice', '["nucleus                                    49.The hatch door of a submarine has an area of 0.5m².the", "nucleolus", "Lysosomes", "mitochondria                                                       specific gravity of sea water is 1.03.(assume that g =10/s,and", "mitochondria                                                       specific gravity of sea water is 1.03.(assume that g =10/s,and"]'::jsonb, 'A', 'medium', 'LUTH 2021 ENGLISH', 2021),
(v_eng_id, 'WWhichof the fallowing structure is rot found in a femde neglect the atmospheric pressure).The force exerted by sea', 'multiple_choice', '["pre-anal pads", "eardrums", "nuchal crest                             water on the hatch door at a depth of 200m is", "1.03", "gular  fold"]'::jsonb, 'A', 'medium', 'LUTH 2021 ENGLISH', 2021),
(v_eng_id, 'Which of the following disease is NOT caused by a virus', 'multiple_choice', '["1.03x10°N/m²\nrinderpest", "maize rust", "Newcastle disease", "swine fever                        50.The point beyond which a stretching spring does not retum to", "nasal scale                                                                                                    its original length is called"]'::jsonb, 'A', 'medium', 'LUTH 2021 ENGLISH', 2021),
(v_eng_id, 'The lack of power of accommodation which is mainly due to the hardening of the eye is called', 'multiple_choice', '["myopia", "hypermetropia", "presbyopia", "eye ring", "astigmatism"]'::jsonb, 'A', 'medium', 'LUTH 2021 ENGLISH', 2021),
(v_eng_id, 'The hatch door of a submarine has an area of 0.5m².the', 'multiple_choice', '["1.03  X10⁵N", "1.03×10³N", "1.06×10⁵N", "2.06x106N", "1.03x10°N/m²"]'::jsonb, 'A', 'medium', 'LUTH 2021 ENGLISH', 2021),
(v_eng_id, 'The point beyond which a stretching spring does not retum to its original length iscalled', 'multiple_choice', '["breaking point", "elastic limit", "spring constant", "elastic point", "privikege"]'::jsonb, 'A', 'medium', 'LUTH 2021 ENGLISH', 2021),
(v_math_id, 'Simplify: log8 + log2 - log12', 'multiple_choice', '["-4", "1", "0", "8", "10"]'::jsonb, 'A', 'medium', 'LUTH 2021 MATHEMATICS', 2021),
(v_math_id, 'The interior angles of a pentagon are (2x+5)°, (x+20)°, x°, (3x-20)° and (x+15)°. Find the value of x.', 'multiple_choice', '["80°", "70°", "65°", "40°", "30°"]'::jsonb, 'A', 'medium', 'LUTH 2021 MATHEMATICS', 2021);

  RAISE NOTICE 'Loaded micro-batch 18/23 with 20 questions (total so far: 360)';
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
(v_math_id, 'A train travels 60km in M minutes. If its average speed is 400km per hour, find the value of M.', 'multiple_choice', '["15", "12", "10", "9", "7"]'::jsonb, 'A', 'medium', 'LUTH 2021 MATHEMATICS', 2021),
(v_math_id, 'A baker used 40% of a 50kg bag of flour. If 1/8 of the amount used was for cake, how many kilograms of flour was used for cake?', 'multiple_choice', '["2%", "6", "5%", "17%", "19.3%"]'::jsonb, 'A', 'medium', 'LUTH 2021 MATHEMATICS', 2021),
(v_math_id, 'Find the average of the first four prime numbers greater than 10.', 'multiple_choice', '["20", "19", "17", "15", "13"]'::jsonb, 'A', 'medium', 'LUTH 2021 MATHEMATICS', 2021),
(v_math_id, 'Find the mean deviation of 6, 7, 8, 9, 10.', 'multiple_choice', '["1.2", "1.5", "2", "8", "10"]'::jsonb, 'A', 'medium', 'LUTH 2021 MATHEMATICS', 2021),
(v_math_id, 'The variance of a given distribution is 25. What is the standard deviation?', 'multiple_choice', '["125", "75", "50", "5", "3"]'::jsonb, 'A', 'medium', 'LUTH 2021 MATHEMATICS', 2021),
(v_math_id, 'Express 7/19 as a percentage, correct to 1 decimal place.', 'multiple_choice', '["2.7%", "3.7%", "27.1%", "36.8%", "42.2%"]'::jsonb, 'A', 'medium', 'LUTH 2021 MATHEMATICS', 2021),
(v_math_id, 'Given that Log4(x) = -3, find x.', 'multiple_choice', '["1/81", "1/64", "0.64", "88", "102"]'::jsonb, 'A', 'medium', 'LUTH 2021 MATHEMATICS', 2021),
(v_math_id, 'A chord of a circle radius 26cm is 10cm from the center of circle. Calculate the length of the chord.', 'multiple_choice', '["16cm", "27.86cm", "32cm", "40cm", "48cm"]'::jsonb, 'A', 'medium', 'LUTH 2021 MATHEMATICS', 2021),
(v_phys_id, 'Plants which can survive in places where the water supply is limited are', 'multiple_choice', '["Bryophytes", "mesophytes", "xerophytes", "hygrophytes", "pteridophytes"]'::jsonb, 'A', 'medium', 'LUTH 2021 PHYSICS', 2021),
(v_phys_id, 'Which of the following types of waves cannot travel through a vacuum?', 'multiple_choice', '["sound waves", "light waves", "infra-red waves", "x-radiation", "radio waves"]'::jsonb, 'A', 'medium', 'LUTH 2021 PHYSICS', 2021),
(v_phys_id, 'The temperature at which the water vapour in the air saturates the air and begins to condense is known as', 'multiple_choice', '["boiling point", "melting point", "triple point", "dew point", "critical temperature"]'::jsonb, 'A', 'medium', 'LUTH 2021 PHYSICS', 2021),
(v_phys_id, 'The motion of the moving skin of a talking drum can rightly be described as', 'multiple_choice', '["translational", "random", "rotational", "oscillatory", "transitory"]'::jsonb, 'A', 'medium', 'LUTH 2021 PHYSICS', 2021),
(v_phys_id, 'What is the relative permittivity of a capacitor if its capacitance with a medium as dielectric is 16 farads, and its capacitance with vacuum as dielectric is 2 farads?', 'multiple_choice', '["-1", "-2", "2", "6", "8"]'::jsonb, 'A', 'medium', 'LUTH 2021 PHYSICS', 2021),
(v_phys_id, 'The activity of a radioactive substance depends on', 'multiple_choice', '["temperature and purity", "temperature and age", "age, purity and temperature", "purity and age", "none of the above"]'::jsonb, 'A', 'medium', 'LUTH 2021 PHYSICS', 2021),
(v_phys_id, 'The principle of the transmissibility of pressure in fluids at rest in all directions is known as', 'multiple_choice', '["Archimedes principle", "Floatation principle", "Newton''s law", "Pascal''s law", "Boyle''s law"]'::jsonb, 'A', 'medium', 'LUTH 2021 PHYSICS', 2021),
(v_phys_id, 'Change of state is accompanied by change of', 'multiple_choice', '["temperature", "volume", "heat content", "temperature and volume", "volume and heat content"]'::jsonb, 'A', 'medium', 'LUTH 2021 PHYSICS', 2021),
(v_phys_id, 'The lack of power of accommodation which is mainly due to the hardening of the eye is called', 'multiple_choice', '["myopia", "hypermetropia", "presbyopia", "eye ring", "astigmatism"]'::jsonb, 'A', 'medium', 'LUTH 2021 PHYSICS', 2021),
(v_phys_id, 'The hatch door of a submarine has an area of 0.5m². The specific gravity of sea water is 1.03. Assuming g = 10m/s² and neglecting the atmospheric pressure. The force exerted by sea water on the hatch door at a depth of 200m is', 'multiple_choice', '["1.03×10⁵N", "1.03×10³N", "1.06×10⁵N", "2.06×10⁶N", "1.03×10⁰N/m²"]'::jsonb, 'A', 'medium', 'LUTH 2021 PHYSICS', 2021),
(v_phys_id, 'The point beyond which a stretching spring does not return to its original length is called', 'multiple_choice', '["breaking point", "elastic limit", "spring constant", "elastic point", "release point"]'::jsonb, 'A', 'medium', 'LUTH 2021 PHYSICS', 2021),
(v_bio_id, 'A plant which grows on another plant without apparent harm to the host plant is called', 'multiple_choice', '["a parasite", "an epiphyte", "a saprophyte", "a predator", "a hermaphrodite"]'::jsonb, 'A', 'medium', 'LUTH 2022 BIOLOGY', 2022);

  RAISE NOTICE 'Loaded micro-batch 19/23 with 20 questions (total so far: 380)';
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
(v_bio_id, 'Which of these types of skeleton is most appropriate to the cockroach?', 'multiple_choice', '["hydrostatic skeleton", "exoskeleton", "endoskeleton", "cartilaginous skeleton", "bony skeleton"]'::jsonb, 'A', 'medium', 'LUTH 2022 BIOLOGY', 2022),
(v_bio_id, 'Which of these is not true of the insect? The possession of', 'multiple_choice', '["two pairs of antennae", "jointed appendages", "exoskeleton", "three pairs of legs", "segmented body"]'::jsonb, 'A', 'medium', 'LUTH 2022 BIOLOGY', 2022),
(v_bio_id, 'All living things', 'multiple_choice', '["photosynthesis", "respire", "move", "transpire", "feed"]'::jsonb, 'A', 'medium', 'LUTH 2022 BIOLOGY', 2022),
(v_bio_id, 'A secchi disc is used in the determination of', 'multiple_choice', '["rainfall", "tides", "waves", "turbidity", "current velocity"]'::jsonb, 'A', 'medium', 'LUTH 2022 BIOLOGY', 2022),
(v_bio_id, 'Which of the following is not an excretory product?', 'multiple_choice', '["urine", "sweat", "feces", "salts", "carbon dioxide"]'::jsonb, 'A', 'medium', 'LUTH 2022 BIOLOGY', 2022),
(v_bio_id, 'Which of the following organs produce bile?', 'multiple_choice', '["gallbladder", "pancreas", "spleen", "liver", "stomach"]'::jsonb, 'A', 'medium', 'LUTH 2022 BIOLOGY', 2022),
(v_bio_id, 'Which of the following food substances is digested in the stomach?', 'multiple_choice', '["carbohydrates", "fats and oil", "fats and proteins", "proteins", "carbohydrates and fats"]'::jsonb, 'A', 'medium', 'LUTH 2022 BIOLOGY', 2022),
(v_bio_id, 'For pollination and fruit formation, the essential part(s) of the flower should be the', 'multiple_choice', '["corolla", "ovary", "pistil (gynoecium)", "ovules", "receptacle"]'::jsonb, 'A', 'medium', 'LUTH 2022 BIOLOGY', 2022),
(v_bio_id, 'Which part of the human brain is concerned with reflexes controlling the rate of heartbeat and breathing?', 'multiple_choice', '["medulla", "cerebrum", "cerebellum", "pineal body", "olfactory lobe"]'::jsonb, 'A', 'medium', 'LUTH 2022 BIOLOGY', 2022),
(v_chem_id, 'When the vapour of a substance is in equilibrium with its own liquid, it is said to be', 'multiple_choice', '["gaseous", "unsaturated", "saturated", "diffused", "liquefied"]'::jsonb, 'A', 'medium', 'LUTH 2022 CHEMISTRY', 2022),
(v_chem_id, '120cm³ of hydrogen were sparked with 60cm³ of oxygen at 110°c. What was the volume of steam produced? The equation for the reaction is: 2H2(g)+O2(g)→2H2O(g)', 'multiple_choice', '["30cm³", "60cm³", "90cm³", "120cm³", "150cm³"]'::jsonb, 'A', 'medium', 'LUTH 2022 CHEMISTRY', 2022),
(v_chem_id, 'Catalytic hydrogenation of oils results in the production of', 'multiple_choice', '["soaps", "detergents", "alkanes", "margarine", "Butter"]'::jsonb, 'A', 'medium', 'LUTH 2022 CHEMISTRY', 2022),
(v_chem_id, 'Which of the following compounds will undergo additional reaction?', 'multiple_choice', '["ethyne", "butane", "pentane", "ethanol", "tetrachloromethane"]'::jsonb, 'A', 'medium', 'LUTH 2022 CHEMISTRY', 2022),
(v_chem_id, 'The products of the electrolysis of dilute sodium chloride solution with platinum electrodes are', 'multiple_choice', '["hydrogen and oxygen", "oxygen and chlorine", "chlorine and water", "sodium amalgam and chlorine", "sodium hydroxide and water"]'::jsonb, 'A', 'medium', 'LUTH 2022 CHEMISTRY', 2022),
(v_chem_id, 'When starch undergoes complete enzyme-catalysed hydrolysis, the resulting product is', 'multiple_choice', '["glucose", "maltose", "sucrose", "fructose", "cellulose"]'::jsonb, 'A', 'medium', 'LUTH 2022 CHEMISTRY', 2022),
(v_chem_id, 'Compounds that have the same molecular formula but different structures are said to be', 'multiple_choice', '["allotropic", "polymorphic", "polymeric", "isomeric", "isotropic"]'::jsonb, 'A', 'medium', 'LUTH 2022 CHEMISTRY', 2022),
(v_chem_id, 'The maximum number of electrons that can be accommodated in the shell having the principal quantum number 3 is', 'multiple_choice', '["3", "9", "10", "18", "32"]'::jsonb, 'A', 'medium', 'LUTH 2022 CHEMISTRY', 2022),
(v_chem_id, 'The following acids are non-basic except', 'multiple_choice', '["methanoic acid", "dioxinotrate acid", "ethanedoic", "oxochlorate acid", "hydrobromic acid"]'::jsonb, 'A', 'medium', 'LUTH 2022 CHEMISTRY', 2022),
(v_chem_id, 'What is the quantity of electricity produced when a current of 0.5A is passed for 5 hours 45 mins? (F=96500C)', 'multiple_choice', '["0.11F", "0.12F", "0.22F", "1.1F", "2.2F"]'::jsonb, 'A', 'medium', 'LUTH 2022 CHEMISTRY', 2022),
(v_chem_id, 'Which of the following pH values is likely to be that of slightly alkaline system?', 'multiple_choice', '["2", "5", "7", "8", "13"]'::jsonb, 'A', 'medium', 'LUTH 2022 CHEMISTRY', 2022);

  RAISE NOTICE 'Loaded micro-batch 20/23 with 20 questions (total so far: 400)';
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
(v_eng_id, 'Without ………….words he accused him directly of treachery.', 'multiple_choice', '["amending", "modifying", "mixing", "mincing", "minimizing"]'::jsonb, 'A', 'medium', 'LUTH 2022 ENGLISH', 2022),
(v_eng_id, 'They tried to cash in the people ignorance', 'multiple_choice', '["under", "on", "against", "with", "at"]'::jsonb, 'A', 'medium', 'LUTH 2022 ENGLISH', 2022),
(v_eng_id, 'Always remember to……………the lights before leaving the room', 'multiple_choice', '["put on", "put off", "switch off", "blow out", "remove"]'::jsonb, 'A', 'medium', 'LUTH 2022 ENGLISH', 2022),
(v_eng_id, 'I am disappointed the ways you conducted yourself at the party.', 'multiple_choice', '["by", "for", "due", "in", "at"]'::jsonb, 'A', 'medium', 'LUTH 2022 ENGLISH', 2022),
(v_eng_id, 'The proprietors should be blamed for such a deplorable condition in the nursery schools…………', 'multiple_choice', '["isn''t it", "shouldn''t they", "should they", "isit", "wouldn''t they"]'::jsonb, 'A', 'medium', 'LUTH 2022 ENGLISH', 2022),
(v_eng_id, 'Do you mind………another  minute  or  two?', 'multiple_choice', '["to wait", "wait", "waiting", "being waited", "waits"]'::jsonb, 'A', 'medium', 'LUTH 2022 ENGLISH', 2022),
(v_eng_id, 'It had been raining before the match started…………', 'multiple_choice', '["isn''tit", "hasn''t it", "hadn''t it", "wasn''t it", "haven''t it"]'::jsonb, 'A', 'medium', 'LUTH 2022 ENGLISH', 2022),
(v_eng_id, 'Mary goes to school……bus', 'multiple_choice', '["in", "on", "with", "of", "by"]'::jsonb, 'A', 'medium', 'LUTH 2022 ENGLISH', 2022),
(v_eng_id, 'The plane overshot the…………in a minor accident', 'multiple_choice', '["read", "hanger", "runway", "tarmac", "railway"]'::jsonb, 'A', 'medium', 'LUTH 2022 ENGLISH', 2022),
(v_eng_id, 'Journalists always collect and publish………', 'multiple_choice', '["information", "informations", "an information", "much information", "every information"]'::jsonb, 'A', 'medium', 'LUTH 2022 ENGLISH', 2022),
(v_eng_id, 'Amicrometer is defined as one millioneth of a millimeter. Alength of 12,000 micrometer may be represented as?', 'multiple_choice', '["0.00012M", "0.0000012M", "0.000012M", "0.00000012M F.\n0.000000012M", "0.00000012M F.\n0.000000012M"]'::jsonb, 'A', 'medium', 'LUTH 2022 ENGLISH', 2022),
(v_eng_id, 'If the price of oranges was raised by %k per orange,the', 'multiple_choice', '["21/2k", "31/2k", "51/2k", "20k 2.25k", "20k 2.25k"]'::jsonb, 'A', 'medium', 'LUTH 2022 ENGLISH', 2022),
(v_eng_id, 'Find all real numbers x which satisfies the inequality 1/3(x+1) 1>1/5(x+4).', 'multiple_choice', '["x<11", "x<-1", "x>6", "11", "x>-6"]'::jsonb, 'A', 'medium', 'LUTH 2022 ENGLISH', 2022),
(v_eng_id, '7 pupils df average age 12 years leave a class of 25 pupils average age l4years.If 6 new pupils of average age 11 years join the dass, what is the average age of the pupils now in the class?', 'multiple_choice', '["13 years", "12 years 11/2 months", "13 years 5 months", "13 years 10 months", "13 years 71/2 months"]'::jsonb, 'A', 'medium', 'LUTH 2022 ENGLISH', 2022),
(v_eng_id, 'A student measures a piece of rope and found that it was 1 .26m long.If the actual length of the rope is1.25m,what was the percentage error in the measurement?', 'multiple_choice', '["student measures a piece of rope and found that it was 1     .26m long.If the actual length of the rope is1.25m,what was  the percentage error in the measurement?", "0.40%", "0.01%", "0.25%0.0.89%2.0.80%", "0.25%0.0.89%2.0.80%"]'::jsonb, 'A', 'medium', 'LUTH 2022 ENGLISH', 2022),
(v_eng_id, 'A plant which grows on another plant without apparent', 'multiple_choice', '["plant which grows on another plant without apparent\nharm to the host plant is called", "a parasite", "an epiphyte", "a saprophyte", "a predator"]'::jsonb, 'A', 'medium', 'LUTH 2022 ENGLISH', 2022),
(v_eng_id, 'Which of these types af skeleton is most appropriate to the cockroach?', 'multiple_choice', '["hydrostatic skeleton", "exoskeleton", "endoskeleton", "cartilaginous skeleton", "bony skeleton"]'::jsonb, 'A', 'medium', 'LUTH 2022 ENGLISH', 2022),
(v_eng_id, 'Which of these is not true of the insed?The possession of', 'multiple_choice', '["two pairs of antennae", "jointed appendages", "exoskeleton", "three pairs of legs", "segmented body"]'::jsonb, 'A', 'medium', 'LUTH 2022 ENGLISH', 2022),
(v_eng_id, 'All living things', 'multiple_choice', '["photosynthesis", "respire", "move", "transpire", "feed"]'::jsonb, 'A', 'medium', 'LUTH 2022 ENGLISH', 2022),
(v_eng_id, 'A secchi disc is used in the detemination of', 'multiple_choice', '["secchi disc is used in the detemination of", "rainfall", "tides", "waves", "turbidity"]'::jsonb, 'A', 'medium', 'LUTH 2022 ENGLISH', 2022);

  RAISE NOTICE 'Loaded micro-batch 21/23 with 20 questions (total so far: 420)';
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
(v_eng_id, 'Which of the following is not an excretory product?', 'multiple_choice', '["urine", "sweat", "feaces", "salts", "carbon dioxide"]'::jsonb, 'A', 'medium', 'LUTH 2022 ENGLISH', 2022),
(v_eng_id, 'Which of the following organs produce bile?A gallbladder', 'multiple_choice', '["gallbladder", "pancreas", "spleen", "liver", "stomach"]'::jsonb, 'A', 'medium', 'LUTH 2022 ENGLISH', 2022),
(v_eng_id, 'Which of the following food substances is digested in the', 'multiple_choice', '["carbohydrates", "fats and oil", "fats and proteins", "proteins", "carbohydrates and fats"]'::jsonb, 'A', 'medium', 'LUTH 2022 ENGLISH', 2022),
(v_eng_id, 'For polination and fruit formaton,the esential part(s)of the flower should be the', 'multiple_choice', '["corolla", "ovary", "pistil (gynoecium''s)", "ovules", "receptade"]'::jsonb, 'A', 'medium', 'LUTH 2022 ENGLISH', 2022),
(v_eng_id, 'Which part of the human brain is concemed with reflexes controlling the rate of heartbeat and breathing?', 'multiple_choice', '["medulla", "cerebrum", "cerebellum 0.pineal body", "olfactory lobe", "olfactory lobe"]'::jsonb, 'A', 'medium', 'LUTH 2022 ENGLISH', 2022),
(v_eng_id, 'Which of the follbwing is not a conequene of a force filed?', 'multiple_choice', '["weight", "surface tension", "gravitational pull", "magnetic force", "electric   force"]'::jsonb, 'A', 'medium', 'LUTH 2022 ENGLISH', 2022),
(v_eng_id, 'Which of the following is used to determine therelhtive density of the acid in a car battery?', 'multiple_choice', '["hypsometer", "hygrometer", "manometer", "hydrometer", "nanometer"]'::jsonb, 'A', 'medium', 'LUTH 2022 ENGLISH', 2022),
(v_eng_id, 'The motion of the prongs of sounding tuning fork is?A random', 'multiple_choice', '["random", "translational", "rotational", "vibration", "vibratory\nand rotational"]'::jsonb, 'A', 'medium', 'LUTH 2022 ENGLISH', 2022),
(v_eng_id, 'A simple microscape forms an image twice the size of an object If the focal length of the lens of microscope is 29cm,how far is the object from the lens?', 'multiple_choice', '["simple microscape forms an image twice the size of an object If the focal length of the lens of microscope is 29cm,how far is the  object from the lens?", "10m", "20m", "30m 0.40m", "60m"]'::jsonb, 'A', 'medium', 'LUTH 2022 ENGLISH', 2022),
(v_eng_id, 'An avocado fruit drops from the top of a tree 45m tall.How long does it take to reach the ground?', 'multiple_choice', '["3.Os", "4.5s", "6.Os", "8.6s", "9.Os"]'::jsonb, 'A', 'medium', 'LUTH 2022 ENGLISH', 2022),
(v_eng_id, 'A ball bearing is gently released from rest and allowed to fall through a viscous fluid.Which of the following statements', 'multiple_choice', '["ball bearing is gently released from rest and allowed to fall through a viscous fluid.Which of the following statements\nabout the motion is correct?", "its acceleration decreases\nbefore terminal velocity is attained", "when terminal velocity is attained the acceleration of the fluid becomes zero", "its\nvelocity increases before terminal velocity is attained", "there is no resultant force on the ball before it attains terminal\nvelocity"]'::jsonb, 'A', 'medium', 'LUTH 2022 ENGLISH', 2022),
(v_eng_id, 'When the vapour of a substarce is in equilbrium with its own liquid,it is said to be', 'multiple_choice', '["gaseous", "unsaturated", "saturated", "diffused", "liquefied"]'::jsonb, 'A', 'medium', 'LUTH 2022 ENGLISH', 2022),
(v_eng_id, 'A man standing between two parallel mirors in a barbers shop will see the following number of his own image', 'multiple_choice', '["man standing between two parallel mirors in a barbers shop will see the following number of his own image", "eight", "two", "four", "one  2.Infinite"]'::jsonb, 'A', 'medium', 'LUTH 2022 ENGLISH', 2022),
(v_eng_id, 'If the wave length of a wave traveling with a velodty of 360m/s is 60cm,the period of the wave is', 'multiple_choice', '["6s", "3.5s", "0.17s 0.0.61s", "3s", "3s"]'::jsonb, 'A', 'medium', 'LUTH 2022 ENGLISH', 2022),
(v_eng_id, '120cm²ofhydrogen were sparked with 60cm²of oxygen at', 'multiple_choice', '["30cm", "60cm", "90cm", "120cm", "150cm"]'::jsonb, 'A', 'medium', 'LUTH 2022 ENGLISH', 2022),
(v_eng_id, 'Which of the following compounds will undergo', 'multiple_choice', '["ethyne", "butane", "pentane", "ethanol", "tetrachioromethare"]'::jsonb, 'A', 'medium', 'LUTH 2022 ENGLISH', 2022),
(v_eng_id, 'The products of the electrolysis of dilute sodium chloride', 'multiple_choice', '["hydrogen and oxygen", "oxygen and chlorine", "chlorine and water 0.sodium amalgam and chlorine", "sodium hydroxide and water", "sodium hydroxide and water"]'::jsonb, 'A', 'medium', 'LUTH 2022 ENGLISH', 2022),
(v_eng_id, 'Compounds that have the same molecular formular but different', 'multiple_choice', '["allotropic", "polymorphic", "polymeric", "isomeric", "isotropic"]'::jsonb, 'A', 'medium', 'LUTH 2022 ENGLISH', 2022),
(v_eng_id, 'The following acids are non-basic except', 'multiple_choice', '["methanoic acid", "dioxinotrate iN acid", "ethanedoic", "oxochlorate l add", "hydrobromic acid"]'::jsonb, 'A', 'medium', 'LUTH 2022 ENGLISH', 2022),
(v_eng_id, 'What is the quantity of eletridity produced when a current of 0.5A is passed for 5 hours 45 mins?(F=96500', 'multiple_choice', '["is passed for 5 hours 45 mins?(F=96500", "0.11F", "0.12F", "0.22F", "1.IF"]'::jsonb, 'A', 'medium', 'LUTH 2022 ENGLISH', 2022);

  RAISE NOTICE 'Loaded micro-batch 22/23 with 20 questions (total so far: 440)';
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
(v_eng_id, 'Whichof the fallowing pH vaues is ikely to be that close slightly alkaline system?', 'multiple_choice', '["breakout", "breakup", "break in", "breakthrough", "would"]'::jsonb, 'A', 'medium', 'LUTH 2022 ENGLISH', 2022),
(v_math_id, 'A micrometer is defined as one millionth of a millimeter. A length of 12,000 micrometer may be represented as?', 'multiple_choice', '["0.00012M", "0.0000012M", "0.000012M", "0.00000012M", "0.000000012M"]'::jsonb, 'A', 'medium', 'LUTH 2022 MATHEMATICS', 2022),
(v_math_id, 'Factorize 3x³+4x²-13x+6 completely, given that x-1 is a factor.', 'multiple_choice', '["(x-1)(x-3)(x+2)", "(x-1)(x+3)(x-2)", "(x-1)(x+3)(3x-2)", "(x-1)(x+3)(3x-2)", "(x-1)(x-3)(x+2)"]'::jsonb, 'A', 'medium', 'LUTH 2022 MATHEMATICS', 2022),
(v_math_id, 'If the price of oranges was raised by %k per orange, the number of oranges a customer can buy for N2.40 will be less by 16. What is the price of an orange?', 'multiple_choice', '["2.5k", "3.5k", "5.5k", "20k", "25k"]'::jsonb, 'A', 'medium', 'LUTH 2022 MATHEMATICS', 2022),
(v_math_id, 'Find all real numbers x which satisfies the inequality 1/3(x+1)+1>1/5(x+4).', 'multiple_choice', '["x<11", "x<-1", "x>6", "x=11", "x>-6"]'::jsonb, 'A', 'medium', 'LUTH 2022 MATHEMATICS', 2022),
(v_math_id, '7 pupils of average age 12 years leave a class of 25 pupils average age 14 years. If 6 new pupils of average age 11 years join the class, what is the average age of the pupils now in the class?', 'multiple_choice', '["13 years", "12 years 6 months", "13 years 5 months", "13 years 10 months", "13 years 7.5 months"]'::jsonb, 'A', 'medium', 'LUTH 2022 MATHEMATICS', 2022),
(v_math_id, 'Given a regular hexagon, calculate each interior angle of the hexagon', 'multiple_choice', '["60°", "120°", "45°", "135°", "140°"]'::jsonb, 'A', 'medium', 'LUTH 2022 MATHEMATICS', 2022),
(v_math_id, 'Without using tables, solve the equation: 8x²=2/5.', 'multiple_choice', '["4", "6", "8", "10", "12"]'::jsonb, 'A', 'medium', 'LUTH 2022 MATHEMATICS', 2022),
(v_math_id, 'A student measures a piece of rope and found that it was 1.26m long. If the actual length of the rope is 1.25m, what was the percentage error in the measurement?', 'multiple_choice', '["0.40%", "0.01%", "0.25%", "0.89%", "0.80%"]'::jsonb, 'A', 'medium', 'LUTH 2022 MATHEMATICS', 2022),
(v_math_id, 'Express the product of 0.21 and 0.34 in standard form', 'multiple_choice', '["7.14×10³", "7.14×10¹", "7.14×10²", "7.14×10⁴", "7.14×10⁵"]'::jsonb, 'A', 'medium', 'LUTH 2022 MATHEMATICS', 2022),
(v_math_id, 'If 5, 8, 6 and 2 occur with frequencies 3, 2, 4 and 1 respectively, find the product of the modal and median number', 'multiple_choice', '["36", "48", "30", "40", "None of the above"]'::jsonb, 'A', 'medium', 'LUTH 2022 MATHEMATICS', 2022),
(v_phys_id, 'Which of the following is not a consequence of a force field?', 'multiple_choice', '["weight", "surface tension", "gravitational pull", "magnetic force", "electric force"]'::jsonb, 'A', 'medium', 'LUTH 2022 PHYSICS', 2022),
(v_phys_id, 'Which of the following is used to determine the relative density of the acid in a car battery?', 'multiple_choice', '["hypsometer", "hygrometer", "manometer", "hydrometer", "nanometer"]'::jsonb, 'A', 'medium', 'LUTH 2022 PHYSICS', 2022),
(v_phys_id, 'The motion of the prongs of sounding tuning fork is?', 'multiple_choice', '["random", "translational", "rotational", "vibration", "vibratory and rotational"]'::jsonb, 'A', 'medium', 'LUTH 2022 PHYSICS', 2022),
(v_phys_id, 'A simple microscope forms an image twice the size of an object. If the focal length of the lens of microscope is 29cm, how far is the object from the lens?', 'multiple_choice', '["10m", "20m", "30m", "40m", "60m"]'::jsonb, 'A', 'medium', 'LUTH 2022 PHYSICS', 2022),
(v_phys_id, 'An avocado fruit drops from the top of a tree 45m tall. How long does it take to reach the ground?', 'multiple_choice', '["3.0s", "4.5s", "6.0s", "8.6s", "9.0s"]'::jsonb, 'A', 'medium', 'LUTH 2022 PHYSICS', 2022),
(v_phys_id, 'Which of the following is a scalar quantity?', 'multiple_choice', '["momentum", "Acceleration", "displacement", "Distance", "force"]'::jsonb, 'A', 'medium', 'LUTH 2022 PHYSICS', 2022),
(v_phys_id, 'A ball bearing is gently released from rest and allowed to fall through a viscous fluid. Which of the following statements about the motion is correct?', 'multiple_choice', '["its acceleration decreases before terminal velocity is attained", "when terminal velocity is attained the acceleration of the fluid becomes zero", "its velocity increases before terminal velocity is attained", "there is no resultant force on the ball before it attains terminal velocity", "acceleration increases uniformly"]'::jsonb, 'A', 'medium', 'LUTH 2022 PHYSICS', 2022),
(v_phys_id, 'A man standing between two parallel mirrors in a barbers shop will see the following number of his own image', 'multiple_choice', '["eight", "two", "four", "one", "Infinite"]'::jsonb, 'A', 'medium', 'LUTH 2022 PHYSICS', 2022),
(v_phys_id, 'If the wave length of a wave traveling with a velocity of 360m/s is 60cm, the period of the wave is', 'multiple_choice', '["6s", "3.5s", "0.17s", "0.61s", "3s"]'::jsonb, 'A', 'medium', 'LUTH 2022 PHYSICS', 2022);

  RAISE NOTICE 'Loaded micro-batch 23/23 with 20 questions (total so far: 460)';
END $$;
