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
(v_chem_id, 'The oxidation state of chlorine in potassium chlcrate is', 'multiple_choice', '["11", "12", "13", "15", "17"]'::jsonb, 'A', 'medium', 'LUTH 2014 CHEMISTRY', 2014),
(v_chem_id, 'When carbon dioxide is bubbled into imewater,a white', 'multiple_choice', '["calcium carbonate is formed which on reaction dissolves", "calcium hydrogen carbonate is precipitated and then\ndissolves", "calcium carbonate is formed which on reaction with further carbon dioxide forms soluble calcium\nhydrogen carbonate", "concentration of solution has\noccurred with the deposition of calcium hydroxide", "the\nsolution has become saturated and solid carbon dioxide has been deposited."]'::jsonb, 'A', 'medium', 'LUTH 2014 CHEMISTRY', 2014),
(v_chem_id, 'Methanoic xid mixes with water in all prgportions and has', 'multiple_choice', '["fractional distillation", "filtration followed by aestivation", "neutralities with sodium\nhydroxide followed by distillation.", "neutralization with sodium hydroxide followed by filtration", "etherification with ethanol    followed by distillation."]'::jsonb, 'A', 'medium', 'LUTH 2014 CHEMISTRY', 2014),
(v_chem_id, 'Which of the fodloving statements appies during the', 'multiple_choice', '["anions are discharge at the cathode", "hydrogen ions are discharge at the anode", "the\nconcentration of sodium hydroxide decreases at both\nelectrode compartments", "the concentration of sodium hydroxide increases at the cathode only", "the\nconcentration of sodium hydroxide increases at the anode only."]'::jsonb, 'A', 'medium', 'LUTH 2014 CHEMISTRY', 2014),
(v_chem_id, 'Which of the following statement is true?When the', 'multiple_choice', '["it gains one electron and becomes neutral", "its atomic number decreases", "it", "it loses one proton", "it loses one neutron."]'::jsonb, 'A', 'medium', 'LUTH 2014 CHEMISTRY', 2014),
(v_chem_id, 'On heating under suitable canditions,1 liter of a monoatomic gas X combines with 1.5litres of oxygen', 'multiple_choice', '["XO", "Xz₂O₃", "X₃O₂", "XO,", "none of the above"]'::jsonb, 'A', 'medium', 'LUTH 2014 CHEMISTRY', 2014),
(v_chem_id, 'If 1 liter of 22M sulphuric add is poured into a bucket containing 10 liters of water,and the resulting solution', 'multiple_choice', '["2.2M", "1.1M", "0.22M", "0.1 IM", "0.20M"]'::jsonb, 'A', 'medium', 'LUTH 2014 CHEMISTRY', 2014),
(v_chem_id, 'A solution of HCl contains 7.3gldm3 of the add.What', 'multiple_choice', '["250m1", "50ml", "750m1", "I0ml", "25ml"]'::jsonb, 'A', 'medium', 'LUTH 2014 CHEMISTRY', 2014),
(v_chem_id, 'Which one of the following reactions is correct as written?A Fe', 'multiple_choice', '["Fe", "PbNO3+H25Z''PbS+2HN03", "NaOH+H2S04Z  NaHS07+H", "2NH4NO3ZN2+2H,O", "2NH4NO3ZN2+2H,O"]'::jsonb, 'A', 'medium', 'LUTH 2014 CHEMISTRY', 2014),
(v_chem_id, 'How many grams of hydrogen gas will be liberated when dg of magnesium ribbon dissolves in 500cm³of 6M HC?(Mg=', 'multiple_choice', '["2.2g", "0.7g", "0.5g", "0.3g", "12g"]'::jsonb, 'A', 'medium', 'LUTH 2014 CHEMISTRY', 2014),
(v_chem_id, 'An example of a strong electrolyte is A.ethyl acetate B. ethanol C.glucose D.sodium.Formate E.formic acid', 'multiple_choice', '["ethyl acetate", "ethanol", "glucose", "sodium.Formate", "formic acid"]'::jsonb, 'A', 'medium', 'LUTH 2014 CHEMISTRY', 2014),
(v_chem_id, 'The oxidation state of manganese in KMnO4 is', 'multiple_choice', '["44", "13", "15", "17", "12"]'::jsonb, 'A', 'medium', 'LUTH 2014 CHEMISTRY', 2014),
(v_chem_id, 'For iron to rust,these should be present A.oxygen B. moisture C.carbondioxide D.oxygen and moisture E  oxygen,moisture and carbondioxide.', 'multiple_choice', '["oxygen", "moisture", "carbondioxide", "oxygen and moisture", "oxygen,moisture and carbondioxide."]'::jsonb, 'A', 'medium', 'LUTH 2014 CHEMISTRY', 2014),
(v_chem_id, 'In base ten,the number 101101(base2)equals', 'multiple_choice', '["2010", "4510", "1510", "1310", "1310"]'::jsonb, 'A', 'medium', 'LUTH 2014 CHEMISTRY', 2014),
(v_chem_id, 'The anrual prdfits of a transpart business were divided', 'multiple_choice', '["and", "in the ratio 3:5.if", "N5000", "N18000", "N12000"]'::jsonb, 'A', 'medium', 'LUTH 2014 CHEMISTRY', 2014),
(v_chem_id, 'A square of cardboard is taped at the perimeter by a place of ribbon 20cm long.What is the area of the board?', 'multiple_choice', '["square of cardboard is taped at the perimeter by a place of  ribbon  20cm  long.What  is  the  area  of  the   board?", "20sq.cm", "25sq.cm", "36sq,c m", "100sq.cm"]'::jsonb, 'A', 'medium', 'LUTH 2014 CHEMISTRY', 2014),
(v_chem_id, 'Simplify', 'multiple_choice', '["62*~¹", "5*²", "5⁵", "5*²", "5³"]'::jsonb, 'A', 'medium', 'LUTH 2014 CHEMISTRY', 2014),
(v_chem_id, 'List all integer values of x satisfying the inequality:1<2x-5=5', 'multiple_choice', '["2,3,4.5", "2,5", "3,4,5", "2,3,4", "3,1."]'::jsonb, 'A', 'medium', 'LUTH 2014 CHEMISTRY', 2014),
(v_chem_id, 'Find the roots of the equation 10x²-13x-3=0', 'multiple_choice', '["x=3/8  or- 1/2", "x=3/10or-1", "x=3/10or1", "-1/5or      3/2", "-1/5or      3/2"]'::jsonb, 'A', 'medium', 'LUTH 2014 CHEMISTRY', 2014),
(v_chem_id, '7 pupis of average age 12years leave a class of 25 pupils of average age 14years.If o new pupils of average age 11', 'multiple_choice', '["13years", "12yearskmonths", "13 years 5smonths", "13years", "11 years"]'::jsonb, 'A', 'medium', 'LUTH 2014 CHEMISTRY', 2014);

  RAISE NOTICE 'Loaded micro-batch 2/23 with 20 questions (total so far: 40)';
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
(v_chem_id, 'Asum of money invested at 5%per annum simple interest amounts to $434.00 at 71/2%per annum simple interest?', 'multiple_choice', '["7%years", "10years", "5years", "12years", "14years."]'::jsonb, 'A', 'medium', 'LUTH 2014 CHEMISTRY', 2014),
(v_chem_id, 'By seling an article far N45.00 a man makes a profit of 8%. For how much should he have sold it in order to make a', 'multiple_choice', '["N180.00", "N59.00", "N63.00", "N58.00", "N55.00"]'::jsonb, 'A', 'medium', 'LUTH 2014 CHEMISTRY', 2014),
(v_chem_id, 'An isosceles triangle of sides 13cm,13cm,10am is', 'multiple_choice', '["71124cm", "12cm", "5cm", "7cm", "69cm"]'::jsonb, 'A', 'medium', 'LUTH 2014 CHEMISTRY', 2014),
(v_chem_id, 'A man bought a wristwatch for N150 but was only able to sell it for N120.Find the loss per cent on the', 'multiple_choice', '["man bought a wristwatch for N150 but was only able to sell it for N120.Find the loss per cent on the\ntransaction", "25%", "111/8%", "20%", "80%"]'::jsonb, 'A', 'medium', 'LUTH 2014 CHEMISTRY', 2014),
(v_chem_id, '116,113.118,121,118,117,113.', 'multiple_choice', '["117.5", "118", "117", "116", "113.\n57.Given a regular hexaon,calculate each interior angle of\nthe  hexagon."]'::jsonb, 'A', 'medium', 'LUTH 2014 CHEMISTRY', 2014),
(v_eng_id, 'In the past his father used to walk but nowadays he ………to', 'multiple_choice', '["giving", "is going", "seldomly goes", "goes", "has gone"]'::jsonb, 'A', 'medium', 'LUTH 2014 ENGLISH', 2014),
(v_eng_id, '……It might not look such a rosy proposition A.from   his viewing proposal B.when he views the proposal C.   having viewed the proposal D.from his paint of view E. from his seeing it', 'multiple_choice', '["from   his viewing proposal", "when he views the proposal", "having viewed the proposal", "from his paint of view", "from his seeing it"]'::jsonb, 'A', 'medium', 'LUTH 2014 ENGLISH', 2014),
(v_eng_id, 'Don''t study on the examination day What find he tell you?  He told me……on the examination day A.no studying B don''t study C.not study D.not to study E.to not study', 'multiple_choice', '["no studying", "don''t study", "not study", "not to study", "to not study"]'::jsonb, 'A', 'medium', 'LUTH 2014 ENGLISH', 2014),
(v_eng_id, 'I shall travel to Lagos by………next week A.air or with train', 'multiple_choice', '["air or with train", "aircraft or by road", "airways or by bus", "air or by road", "flight or by bus"]'::jsonb, 'A', 'medium', 'LUTH 2014 ENGLISH', 2014),
(v_eng_id, 'Musa asked Asmart what she ……since he last saw her A.has been doing B.had been doing C.has done D.was doing E.might be doing', 'multiple_choice', '["has been doing", "had been doing", "has done", "was doing", "might be doing"]'::jsonb, 'A', 'medium', 'LUTH 2014 ENGLISH', 2014),
(v_eng_id, 'The evidence of all the acaused person''s…………by the', 'multiple_choice', '["were disbelieved", "was disbelieved", "in disbelieved", "are disbelieved", "has been disbelieved."]'::jsonb, 'A', 'medium', 'LUTH 2014 ENGLISH', 2014),
(v_eng_id, 'The minister bit on aplan to lain his past after many months of lobbying A.beat a plan B.drew up a plan C.discovered a plan D.selected a plan E.designed a plan', 'multiple_choice', '["beat a plan", "drew up a plan", "discovered a plan", "selected a plan", "designed a plan"]'::jsonb, 'A', 'medium', 'LUTH 2014 ENGLISH', 2014),
(v_math_id, 'The anrual prdfits of a transpart business were divided', 'multiple_choice', '["and", "N5000", "N18000", "N12000", "N24000"]'::jsonb, 'A', 'medium', 'LUTH 2014 MATHEMATICS', 2014),
(v_math_id, 'By seling an article far N45.00 a man makes a profit of 8%. For how much should he have sold it in order to make a', 'multiple_choice', '["N180.00", "N59.00", "N63.00", "N58.00", "N55.00"]'::jsonb, 'A', 'medium', 'LUTH 2014 MATHEMATICS', 2014),
(v_math_id, 'An isosceles triangle of sides 13cm,13cm,10am is inscribed in a circle.What is the radius of the circle?', 'multiple_choice', '["71124cm", "12cm", "5cm", "7cm", "69cm"]'::jsonb, 'A', 'medium', 'LUTH 2014 MATHEMATICS', 2014),
(v_math_id, 'Given a regular hexaon,calculate each interior angle of', 'multiple_choice', '["600", "30°", "120°", "45°", "135°"]'::jsonb, 'A', 'medium', 'LUTH 2014 MATHEMATICS', 2014),
(v_math_id, 'Which of the following lines is pot parallel to the line 3y+2x-', 'multiple_choice', '["3y+2x7=0", "9y+6x+17=0", "24y+16x+19", "3y-2x+70", "15y+IOx-10x3-13=0"]'::jsonb, 'A', 'medium', 'LUTH 2014 MATHEMATICS', 2014),
(v_phys_id, 'To determine the weight of an object you would A.use a', 'multiple_choice', '["use a", "use a spring balance", "find the force necessary to give it a certain acceleration", "use none of these", "use any of these methods."]'::jsonb, 'A', 'medium', 'LUTH 2014 PHYSICS', 2014),
(v_phys_id, 'Two boys are commuricating with each other by stretching a string passing through a hole punched in the bottom of each of the two tin cans.The physical principle employed is that', 'multiple_choice', '["mainly through air", "fainter in stretched string", "faster through gasses than in solids and liquids", "with greater ease through a string than in air", "none of the above is correct."]'::jsonb, 'A', 'medium', 'LUTH 2014 PHYSICS', 2014),
(v_phys_id, 'When equal weights of iron and water are subjected loan equal supply of heat,it is found that the piece of iron becomes much   hotter than water after a short time because', 'multiple_choice', '["The specific heat or iron is higher than water", "Iron is in solid form", "water is in liquid form", "the specific heat of water is higher than that of iron", "the specific heat of iron is infinite."]'::jsonb, 'A', 'medium', 'LUTH 2014 PHYSICS', 2014);

  RAISE NOTICE 'Loaded micro-batch 3/23 with 20 questions (total so far: 60)';
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
(v_phys_id, '250gof lead at 170°c is dropped into 0g of water at 10c if the final temperature is 12°c,the specific heat of lead is', 'multiple_choice', '["39.5/jkg°c", "50.4/jkg°c", "127.5/jkg⁹c0.154.6/jkg°c", "173.4/jkgc.", "e?a.sso2"]'::jsonb, 'A', 'medium', 'LUTH 2014 PHYSICS', 2014),
(v_chem_id, 'Theslope of astraight line displacement time graphindicates', 'multiple_choice', '["distance travelled", "uniform velocity", "uniform\nacceleration", "instant acceleration", "uniform speed."]'::jsonb, 'A', 'medium', 'LUTH 2015 CHEMISTRY', 2015),
(v_chem_id, 'A ball of mass 0.5kg moving at 10m/s colides with another ball of equal mass at rest.If the two balls move off together after the impart,calculate their common velocity', 'multiple_choice', '["ball  of mass  0.5kg  moving  at  10m/s  colides  with  another ball of equal mass at rest.If the two balls move off together after the impart,calculate their common velocity", "0.2m/s", "0.5m/s", "10m/s", "3m/s"]'::jsonb, 'A', 'medium', 'LUTH 2015 CHEMISTRY', 2015),
(v_chem_id, 'How much heat s given out vhenapiece of iron mass 50g and specific heat capacity 460/kg/Kcoolsfrom 85°c to 25°c?', 'multiple_choice', '["1.38x10⁶J", "2.53x10²", "1.98×10²]", "1.38×10³", "1.27x10³J"]'::jsonb, 'A', 'medium', 'LUTH 2015 CHEMISTRY', 2015),
(v_chem_id, 'Which of the following is not a suitable method of reducing loss of heat from a piece of hot iron?', 'multiple_choice', '["wrapping it in cotton wool", "paintingit black", "placing it in a vacuum", "placing it in a\nrubber support", "keeping it in a closed wooden box"]'::jsonb, 'A', 'medium', 'LUTH 2015 CHEMISTRY', 2015),
(v_chem_id, 'A bat emits a sound wave at a speed of 1650.00m/s and', 'multiple_choice', '["8.75m", "87.75m", "123.75m", "330.00m", "330.00m"]'::jsonb, 'A', 'medium', 'LUTH 2015 CHEMISTRY', 2015),
(v_chem_id, 'Which ofthe following is/are characteristics of sound?i. pitch ii Loudness iii.Quality iv.Noise', 'multiple_choice', '["I only", "ii only", "I &ii  only", "I,ii  &ii  only", "i,ii,iii  and  iv"]'::jsonb, 'A', 'medium', 'LUTH 2015 CHEMISTRY', 2015),
(v_chem_id, 'An image which can be formed on a screen is said to be', 'multiple_choice', '["virtual", "blurred", "inverted", "erect", "real"]'::jsonb, 'A', 'medium', 'LUTH 2015 CHEMISTRY', 2015),
(v_chem_id, 'A ray of light isincident at an angle of 30 on aglass prism', 'multiple_choice', '["10.5°", "5.5°", "21.1°", "38.9°", "40.5°"]'::jsonb, 'A', 'medium', 'LUTH 2015 CHEMISTRY', 2015),
(v_chem_id, 'What of the camera corresponds to the iris of the eye?', 'multiple_choice', '["shutter", "film", "lens", "diaphragm", "focusing  ring"]'::jsonb, 'A', 'medium', 'LUTH 2015 CHEMISTRY', 2015),
(v_chem_id, 'Which of the fallowing is not a mechanical wave?', 'multiple_choice', '["wave propagated in stretched ring", "waves in closed\npipes", "radio waves", "water waves", "sound waves"]'::jsonb, 'A', 'medium', 'LUTH 2015 CHEMISTRY', 2015),
(v_chem_id, 'A catapult is used to project a stone.Which of the following energy conversions takes place as the stone is released?', 'multiple_choice', '["catapult is used to project a stone.Which of the following energy conversions takes place as the stone is released?", "The kinetic energy of the stone is converted into\ngravitational potential energy", "The gravitational potential   energy of the catapult is converted into the kinetic energy    of the stone", "The elastic potential energy of the catapult is converted into elastic potential energy", "The elastic\npotential energy of the catapult is converted into the\n\ngravitational potential energy of the stone"]'::jsonb, 'A', 'medium', 'LUTH 2015 CHEMISTRY', 2015),
(v_chem_id, 'Ball is thrown vertically upwards from the ground with an initial velocity of 50m/s.What is the total time spent by the ball in air?(g=10m/s)', 'multiple_choice', '["2.5s", "5.0s", "10.0s", "15.0s", "20.0s"]'::jsonb, 'A', 'medium', 'LUTH 2015 CHEMISTRY', 2015),
(v_chem_id, 'Which of the following is used to determine the relative density of the acid in a car battery?', 'multiple_choice', '["hypsometer", "hygrometer", "manometer", "hydrometer", "spectrometer"]'::jsonb, 'A', 'medium', 'LUTH 2015 CHEMISTRY', 2015),
(v_chem_id, 'A block of material vdlume 20cm²and density 2.3g/cm³is', 'multiple_choice', '["8g", "25g.", "30g", "40g", "50g"]'::jsonb, 'A', 'medium', 'LUTH 2015 CHEMISTRY', 2015),
(v_chem_id, 'Apieæ of cork which is fbating on water is acted upon by the forces of', 'multiple_choice', '["weight and viscosity", "weight and upthrust", "upthrust and viscosity", "weight only", "upthrust only"]'::jsonb, 'A', 'medium', 'LUTH 2015 CHEMISTRY', 2015),
(v_chem_id, 'Which of the folowing is derived unit?', 'multiple_choice', '["meter", "coulomb", "kilogram", "second", "ampere"]'::jsonb, 'A', 'medium', 'LUTH 2015 CHEMISTRY', 2015),
(v_chem_id, 'Which of the following  campounds wll  undergo', 'multiple_choice', '["ethyne", "butane", "pentane", "Tetrachioromethane", "ethanol"]'::jsonb, 'A', 'medium', 'LUTH 2015 CHEMISTRY', 2015),
(v_chem_id, '00w', 'multiple_choice', '["3000.00w", "333.00w", "300.00w", "30.00w\n20.If the temperature of a small quantity of water in a dosed container is gradually increased from 0c to 40c then the\ndensity of water within its range", "increases for a while and then decreases"]'::jsonb, 'A', 'medium', 'LUTH 2015 CHEMISTRY', 2015),
(v_eng_id, 'I wonder where Ckeke is he…………by nowA.ought to arrive', 'multiple_choice', '["ought to arrive", "ought to have arrived", "must arrive", "can''t have arrived", "pencil only"]'::jsonb, 'A', 'medium', 'LUTH 2015 ENGLISH', 2015);

  RAISE NOTICE 'Loaded micro-batch 4/23 with 20 questions (total so far: 80)';
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
(v_math_id, 'For what value of yis the expression (y+2)/(y²-Sy-10 undefined?A.y=0B.y=2C.y=3D.y=5E.y=i0', 'multiple_choice', '["y=0", "y=2", "y=3", "y=5", "y=i0"]'::jsonb, 'A', 'medium', 'LUTH 2015 MATHEMATICS', 2015),
(v_math_id, 'Aladder 9m long leans against a vertical wail making an', 'multiple_choice', '["4.0m", "5.8m", "7.1m", "8.1m", "18cm"]'::jsonb, 'A', 'medium', 'LUTH 2015 MATHEMATICS', 2015),
(v_math_id, 'Factorize  the  following  expressiont  2x²+x-15.A.(2x+5) (y-3)B.(2x-5)(y+3)C.(2x-5)(x-3)D.(2x-3)(x+5)E.(2x+5)', 'multiple_choice', '["(2x+5) (y-3)", "(2x-5)(y+3)", "(2x-5)(x-3)", "(2x-3)(x+5)", "(2x+5)"]'::jsonb, 'A', 'medium', 'LUTH 2015 MATHEMATICS', 2015),
(v_phys_id, 'Theslope of astraight line displacement time graphindicates A.distance travelled B.uniform velocity C.uniform', 'multiple_choice', '["distance travelled", "uniform velocity", "uniform", "instant acceleration", "uniform speed."]'::jsonb, 'A', 'medium', 'LUTH 2015 PHYSICS', 2015),
(v_phys_id, 'How much heat s given out vhenapiece of iron mass 50g and specific heat capacity 460/kg/Kcoolsfrom 85°c to 25°c?', 'multiple_choice', '["1.38x10⁶J", "2.53x10²", "1.98×10²]", "1.38×10³", "1.27x10³J"]'::jsonb, 'A', 'medium', 'LUTH 2015 PHYSICS', 2015),
(v_phys_id, 'Which of the following is not a suitable method of reducing loss of heat from a piece of hot iron?A.wrapping it in cotton wool  B.paintingit black C.placing it in a vacuum D.placing it in a', 'multiple_choice', '["wrapping it in cotton wool", "paintingit black", "placing it in a vacuum", "placing it in a", "keeping it in a closed wooden box"]'::jsonb, 'A', 'medium', 'LUTH 2015 PHYSICS', 2015),
(v_phys_id, 'A bat emits a sound wave at a speed of 1650.00m/s and', 'multiple_choice', '["bat emits a sound wave at a speed of 1650.00m/s and", "8.75m", "87.75m", "123.75m", "330.00m"]'::jsonb, 'A', 'medium', 'LUTH 2015 PHYSICS', 2015),
(v_phys_id, 'Which ofthe following is/are characteristics of sound?i.    pitch ii Loudness iii.Quality iv.Noise A.I only B.ii only C.I &ii  only  D.I,ii  &ii  only  E.i,ii,iii  and  iv', 'multiple_choice', '["I only", "ii only", "I &ii  only", "I,ii  &ii  only", "i,ii,iii  and  iv"]'::jsonb, 'A', 'medium', 'LUTH 2015 PHYSICS', 2015),
(v_phys_id, 'An image which can be formed on a screen is said to be A.virtual  B.blurred  C.inverted   D.erect  E.real', 'multiple_choice', '["virtual", "blurred", "inverted", "erect", "real"]'::jsonb, 'A', 'medium', 'LUTH 2015 PHYSICS', 2015),
(v_phys_id, 'What of the camera corresponds to the iris of the eye?', 'multiple_choice', '["shutter", "film", "lens", "diaphragm", "focusing ring"]'::jsonb, 'A', 'medium', 'LUTH 2015 PHYSICS', 2015),
(v_phys_id, 'A catapult is used to project a stone.Which of the following energy conversions takes place as the stone is released?A. The kinetic energy of the stone is converted into', 'multiple_choice', '["catapult is used to project a stone.Which of the following energy conversions takes place as the stone is released?", "The kinetic energy of the stone is converted into", "The gravitational potential energy of the catapult is converted into the kinetic energy of the stone", "The elastic potential energy of the catapult is converted into elastic potential energy", "The elastic"]'::jsonb, 'A', 'medium', 'LUTH 2015 PHYSICS', 2015),
(v_phys_id, 'Apieæ of cork which is fbating on water is acted upon by the forces of A.weight and viscosity B.weight and upthrust', 'multiple_choice', '["weight and viscosity", "weight and upthrust", "upthrust and viscosity", "weight only", "upthrust only"]'::jsonb, 'A', 'medium', 'LUTH 2015 PHYSICS', 2015),
(v_phys_id, 'Which  of  the  folowing   is  derived   unit?A.meter   B.coulomb C.kilogram  D.second  E.ampere', 'multiple_choice', '["meter", "coulomb", "kilogram", "second", "ampere"]'::jsonb, 'A', 'medium', 'LUTH 2015 PHYSICS', 2015),
(v_phys_id, 'If the temperature of a small quantity of water in a dosed container is gradually increased from 0c to 40c then the', 'multiple_choice', '["increases for a while and then decreases", "decreases for awhile and then increases", "increases graduafly", "decreases gradually", "remains the same"]'::jsonb, 'A', 'medium', 'LUTH 2015 PHYSICS', 2015),
(v_bio_id, 'Which of the following is not an example of a force?', 'multiple_choice', '["tension (", "Weight (", "friction (", "mass (", "thrust"]'::jsonb, 'A', 'medium', 'LUTH 2016 BIOLOGY', 2016),
(v_bio_id, 'If the temperature of water is gradualy increased from 0 to 40C,the density of the water within this range (A)Increase', 'multiple_choice', '["Increase", "decreases for a while", "increases gradually 《", "decreases", "remains the same"]'::jsonb, 'A', 'medium', 'LUTH 2016 BIOLOGY', 2016),
(v_bio_id, 'The expansion of solids can be considered a disadvantage in the  (A)fire  alarm  system(B)thermostat   (C)riveting  of  steel plates 《D)balance wheel of a watch(E)fitting of wheels on  rims', 'multiple_choice', '["fire  alarm  system(", "thermostat   (", "riveting  of  steel plates 《", "balance wheel of a watch(", "fitting of wheels on  rims"]'::jsonb, 'A', 'medium', 'LUTH 2016 BIOLOGY', 2016),
(v_bio_id, 'Longitudinal  waves  cannot  be  (A)diffracted  (B)refracted', 'multiple_choice', '["diffracted  (", "refracted", "polarized t(", "reflected (", "superposed"]'::jsonb, 'A', 'medium', 'LUTH 2016 BIOLOGY', 2016),
(v_chem_id, 'A  burning  candle  produces water  and A.carban  (ii)oxide B.carbon  (iv)oxide  C.oxygen  D.hydrogen', 'multiple_choice', '["burning  candle  produces water  and", "carban  (ii)oxide", "carbon  (iv)oxide", "oxygen", "hydrogen"]'::jsonb, 'A', 'medium', 'LUTH 2016 CHEMISTRY', 2016),
(v_eng_id, 'What   is   the    probability   that   an    integer   x,(1<x<20)                     13.In how many ways can 2 students be selected from a group', 'multiple_choice', '["1/20", "1/3 of 5 students in a debating competition?", "15", "3/20", "7/10 ways"]'::jsonb, 'A', 'medium', 'LUTH 2016 ENGLISH', 2016);

  RAISE NOTICE 'Loaded micro-batch 5/23 with 20 questions (total so far: 100)';
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
(v_eng_id, 'In the normal use of a simple microscope,a person sees an (A)inverted,virtual   and    magnified    image(B)erect,virtual    and  magnified  image(C)erect,real  and  magnified  image     (D)magnified,real  and  magnified  image  (E)inverted  and     real image the same as the object', 'multiple_choice', '["inverted,virtual   and    magnified    image(", "erect,virtual    and  magnified  image(", "erect,real  and  magnified  image     (", "magnified,real  and  magnified  image  (", "inverted  and     real image the same as the object"]'::jsonb, 'A', 'medium', 'LUTH 2016 ENGLISH', 2016),
(v_eng_id, 'In aripple tank experiment,a vibrating plate is used to generate ripples in the water If the distance between two', 'multiple_choice', '["30Hz(", "6.OHz(", "12.0Hz(", "27.OHz(", "73.5Hz"]'::jsonb, 'A', 'medium', 'LUTH 2016 ENGLISH', 2016),
(v_eng_id, 'Which  of  the  following  have  the  longest  wave  lengths?(A) infra-red rays (B)gamma rays (C)x rays (D)ultraviolet rays', 'multiple_choice', '["infra-red rays (", "gamma rays (", "x rays (", "ultraviolet rays", "radio waves"]'::jsonb, 'A', 'medium', 'LUTH 2016 ENGLISH', 2016),
(v_eng_id, 'The building----------because of weak structural foundation.', 'multiple_choice', '["tumbled (", "succumbed (", "somersaulted (", "collapsed (", "caved"]'::jsonb, 'A', 'medium', 'LUTH 2016 ENGLISH', 2016),
(v_eng_id, 'The magezine was --------by the govermment for an', 'multiple_choice', '["prescribed(", "proscribed", "suspended《", "condemned (", "persecuted"]'::jsonb, 'A', 'medium', 'LUTH 2016 ENGLISH', 2016),
(v_eng_id, 'Many people reacted to the brutal murder of the popular     journalist with strong ------(A)Indignation(B)demonstrate (C)mobilization  (D)candemnation  (6)accusation', 'multiple_choice', '["Indignation(", "demonstrate (", "mobilization  (", "candemnation  (6)accusation", "below each of"]'::jsonb, 'A', 'medium', 'LUTH 2016 ENGLISH', 2016),
(v_eng_id, 'It takes a great deal of stamina to run the marathon race. (A)courage(B)determine  (C)energy  (D)intelligence  (E)    cleveness', 'multiple_choice', '["courage(", "determine  (", "energy  (", "intelligence  (", "cleveness"]'::jsonb, 'A', 'medium', 'LUTH 2016 ENGLISH', 2016),
(v_eng_id, 'But for the principal actor the play would have been dull. (A)Important (B)head (C)master (D)famous (E)main', 'multiple_choice', '["Important (", "head (", "master (", "famous (", "main"]'::jsonb, 'A', 'medium', 'LUTH 2016 ENGLISH', 2016),
(v_eng_id, 'He was reluctant to grant my request (A)disposed', 'multiple_choice', '["disposed", "delight (", "reticent {", "unwilling(", "agreeable"]'::jsonb, 'A', 'medium', 'LUTH 2016 ENGLISH', 2016),
(v_eng_id, 'The detective was perplexed when the clues in the', 'multiple_choice', '["surprised(", "confused (", "excited (", "discouraged (", "disappointed"]'::jsonb, 'A', 'medium', 'LUTH 2016 ENGLISH', 2016),
(v_eng_id, 'My financial situation is so precarious that very scon I may be     insolvent(A)borrowing(B)steeling(C)soluble', 'multiple_choice', '["borrowing(", "steeling(", "soluble", "dependent (", "bankrupt"]'::jsonb, 'A', 'medium', 'LUTH 2016 ENGLISH', 2016),
(v_eng_id, 'The chairman is of the opinion that accepting the proposal would be inimical to the objectives of the', 'multiple_choice', '["harmful(", "relevant (", "irrelevant", "indispensable(", "helpful"]'::jsonb, 'A', 'medium', 'LUTH 2016 ENGLISH', 2016),
(v_phys_id, 'Whie  doing  his  physics  practral,Idowu  recorded  a  readng  as 1.12cm instead of 1.21 cm.Calculate his percentage error', 'multiple_choice', '["1.17%(", "6.38%(", "7.44%(", "8.05%(", "9.00%"]'::jsonb, 'A', 'medium', 'LUTH 2016 PHYSICS', 2016),
(v_phys_id, 'LetJ  bethe  set  of  postive  integer  If  H=(x:J,x²<3and  x#O) then.(A)H(1)(B)His  an  infinite  set  (C)SH(o,1,2)(D)H=0   (E)J<H', 'multiple_choice', '["H(1)(", "His  an  infinite  set  (", "SH(o,1,2)(", "H=0   (", "J<H"]'::jsonb, 'A', 'medium', 'LUTH 2016 PHYSICS', 2016),
(v_phys_id, 'Factorize                2e²-3e+1(A)(2e-1)(e-l)(B)(e+1)(2e', 'multiple_choice', '["(2e-1)(e-l)(", "(e+1)(2e", "(2e+3)(3-2)(", "(2e-3)(e-1)(", "(e2-3)(2e-1)"]'::jsonb, 'A', 'medium', 'LUTH 2016 PHYSICS', 2016),
(v_phys_id, 'From the top  of a  building  10m  high,the  angle  of', 'multiple_choice', '["3.6m(", "3.8m", "6.0m(", "9.3m(", "26.1m"]'::jsonb, 'A', 'medium', 'LUTH 2016 PHYSICS', 2016),
(v_phys_id, 'A battery of e.m.f 40V and internal resistance 5Q is', 'multiple_choice', '["battery of e.m.f 40V and internal resistance 5Q is", "40W", "20V", "30V", "75V"]'::jsonb, 'A', 'medium', 'LUTH 2016 PHYSICS', 2016),
(v_phys_id, 'A distinguishing feature of mammals is the possession of (A)skin  (B)scale  (C)nail  (D)hair', 'multiple_choice', '["distinguishing feature of mammals is the possession of (", "skin  (", "scale  (", "nail  (", "hair"]'::jsonb, 'A', 'medium', 'LUTH 2016 PHYSICS', 2016),
(v_phys_id, 'A basic ulate of the kinetic theory of gases is the molecules of a gas move in straight lines between collisions.This', 'multiple_choice', '["basic ulate of the kinetic theory of gases is the molecules of a gas move in straight lines between collisions.This", "collisions are perfectly elastic (", "forces of repulsion exist (", "forces of repulsion and attraction are in equilibrium(", "collisions are inelastic"]'::jsonb, 'A', 'medium', 'LUTH 2016 PHYSICS', 2016),
(v_phys_id, 'Those who  had  invtatian cards were admitted to the party while those who had none were-------(A)barred (B)repelled      (C)expelled  (D)compelled  (E)restricted', 'multiple_choice', '["barred (", "repelled      (", "expelled  (", "compelled  (", "restricted"]'::jsonb, 'A', 'medium', 'LUTH 2016 PHYSICS', 2016);

  RAISE NOTICE 'Loaded micro-batch 6/23 with 20 questions (total so far: 120)';
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
