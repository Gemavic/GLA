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
