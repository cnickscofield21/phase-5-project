puts "Creating Organizations..."
Organization.create(name: "Breakthrough Alliance of Colorado", physical_address: "1644 Platte St, Suite 400", physical_city: "Denver", physical_state: "CO", physical_zip: "80202-2476", phone_number: "720-722-6465", mailing_address: "1644 Platte St, Suite 400", mailing_city: "Denver", mailing_state: "CO", mailing_zip: "80202-2476", ein: "83-0636337", valid_non_profit: true)
Organization.create(name: "Remerg", physical_address: "1600 N Downing St, 410", physical_city: "Denver", physical_state: "CO", physical_zip: "80218-1533", phone_number: "303-993-3551", mailing_address: "PO Box 18463", mailing_city: "Denver", mailing_state: "CO", mailing_zip: "80218-0463", ein: "82-1801077", valid_non_profit: true)
Organization.create(name: "The Realness Project", physical_address: "1750 30th St, PMB #204", physical_city: "Boulder", physical_state: "CO", physical_zip: "80301", phone_number: "303-596-3432", mailing_address: "1750 30th St, PMB #204", mailing_city: "Boulder", mailing_state: "CO", mailing_zip: "80301", ein: "83-1629445", valid_non_profit: true)
Organization.create(name: "Second Chance Center", physical_address: "224 Potomac St", physical_city: "Aurora", physical_state: "CO", physical_zip: "80011", phone_number: "303-537-5838", mailing_address: "224 Potomac St", mailing_city: "Aurora", mailing_state: "CO", mailing_zip: "80011", ein: "90-0794239", valid_non_profit: false)
puts "Turn... Complete."

puts "Setting Organizations as Variables..."
o0 = Organization.first
o1 = Organization.second
o2 = Organization.third
o3 = Organization.last
puts "Turn... Complete."

puts "Creating Facilities..."
Facility.create(name: "Arkansas Valley Correctional Facility", acronymn: "AVCF", facility_group: "", physical_address: "12750 Hwy 96 at Lane 13", physical_city: "Ordway", physical_state: "CO", physical_zip: "81034", phone_number: "719-267-3520", mailing_address: "12750 Hwy 96 at Lane 13", mailing_city: "Ordway", mailing_state: "CO", mailing_zip: "81034", security_level: 3)
Facility.create(name: "Arrowhead Correctional Center", acronymn: "ACC", facility_group: "Canon City Complex", physical_address: "57500 US-50", physical_city: "Cañon City", physical_state: "CO", physical_zip: "81212", phone_number: "719-269-5601", mailing_address: "PO BOX 300", mailing_city: "Cañon City", mailing_state: "CO", mailing_zip: "81215-0300", security_level: 2)
Facility.create(name: "Bent County Correctional Facility", acronymn: "BCCF", facility_group: "CoreCivic", physical_address: "11560 Road FF75", physical_city: "Las Animas", physical_state: "CO", physical_zip: "81054", phone_number: "719-456-2610", mailing_address: "11560 Road FF75", mailing_city: "Las Animas", mailing_state: "CO", mailing_zip: "81054", security_level: 3)
Facility.create(name: "Buena Vista Correctional Facility", acronymn: "BVCF", facility_group: "Buena Vista Complex", physical_address: "15125 US-24", physical_city: "Buena Vista", physical_state: "CO", physical_zip: "81211", phone_number: "719-395-2404", mailing_address: "PO BOX 2017", mailing_city: "Buena Vista", mailing_state: "CO", mailing_zip: "81211-2017", security_level: 3)
Facility.create(name: "Buena Vista Minimum Center", acronymn: "BVMC", facility_group: "Buena Vista Complex", physical_address: "15125 US-24", physical_city: "Buena Vista", physical_state: "CO", physical_zip: "81211", phone_number: "719-395-2404", mailing_address: "PO BOX 2005", mailing_city: "Buena Vista", mailing_state: "CO", mailing_zip: "81211-2005", security_level: 2)
Facility.create(name: "Centennial Correctional Facility", acronymn: "CCF", facility_group: "Canon City Complex", physical_address: "600 Evans Rd", physical_city: "Cañon City", physical_state: "CO", physical_zip: "81212", phone_number: "719-269-4810", mailing_address: "PO BOX 600", mailing_city: "Cañon City", mailing_state: "CO", mailing_zip: "81215-0600", security_level: 5)
Facility.create(name: "Colorado Correctional Center", acronymn: "CCC", facility_group: "Denver Complex", physical_address: "15445 S. Golden Road", physical_city: "Golden", physical_state: "CO", physical_zip: "80401", phone_number: "303-273-1620", mailing_address: "15445 S. Golden Road", mailing_city: "Golden", mailing_state: "CO", mailing_zip: "80401", security_level: 1)
Facility.create(name: "Colorado State Penitentiary", acronymn: "CSP", facility_group: "Canon City Complex", physical_address: "50 Evans Rd", physical_city: "Cañon City", physical_state: "CO", physical_zip: "81212", phone_number: "719-269-5120", mailing_address: "PO BOX 777", mailing_city: "Cañon City", mailing_state: "CO", mailing_zip: "81215-0777", security_level: 5)
Facility.create(name: "Colorado Territorial Correctional Facility", acronymn: "CTCF", facility_group: "Canon City Complex", physical_address: "275 US-50", physical_city: "Cañon City", physical_state: "CO", physical_zip: "81215", phone_number: "719-275-4181", mailing_address: "PO BOX 1010", mailing_city: "Cañon City", mailing_state: "CO", mailing_zip: "81215-1010", security_level: 3)
Facility.create(name: "Crowley County Correctional Facility", acronymn: "CCCF", facility_group: "CoreCivic", physical_address: "6564 State Hwy 96", physical_city: "Olney Springs", physical_state: "CO", physical_zip: "81062", phone_number: "719-267-3548", mailing_address: "6564 State Hwy 96", mailing_city: "Olney Springs", mailing_state: "CO", mailing_zip: "81062-8700", security_level: 3)
Facility.create(name: "Delta Correctional Center", acronymn: "DCC", facility_group: "", physical_address: "11363 Lockhart Road", physical_city: "Delta", physical_state: "CO", physical_zip: "81416", phone_number: "970-874-7614", mailing_address: "11363 Lockhart Road", mailing_city: "Delta", mailing_state: "CO", mailing_zip: "81416", security_level: 1)
Facility.create(name: "Denver Reception and Diagnostic Center", acronymn: "DRDC", facility_group: "Denver Complex", physical_address: "10900 Smith Road", physical_city: "Denver", physical_state: "CO", physical_zip: "80239", phone_number: "303-371-4804", mailing_address: "PO BOX 392004", mailing_city: "Denver", mailing_state: "CO", mailing_zip: "80239", security_level: 5)
Facility.create(name: "Denver Women's Correctional Facility", acronymn: "DWCF", facility_group: "Denver Complex", physical_address: "3600 Havana Street", physical_city: "Denver", physical_state: "CO", physical_zip: "80239", phone_number: "303-307-2500", mailing_address: "PO BOX 392005", mailing_city: "Denver", mailing_state: "CO", mailing_zip: "80239", security_level: 5)
Facility.create(name: "Four Mile Correctional Center", acronymn: "FMCC", facility_group: "Canon City Complex", physical_address: "E US Highway 50 &, Evans Rd", physical_city: "Cañon City", physical_state: "CO", physical_zip: "81212", phone_number: "719-269-5601", mailing_address: "PO BOX 300", mailing_city: "Cañon City", mailing_state: "CO", mailing_zip: "81215-0300", security_level: 2)
Facility.create(name: "Fremont Correctional Facility", acronymn: "FCF", facility_group: "Canon City Complex", physical_address: "600 Evans Rd", physical_city: "Cañon City", physical_state: "CO", physical_zip: "81212", phone_number: "719-269-5002", mailing_address: "PO BOX 999", mailing_city: "Cañon City", mailing_state: "CO", mailing_zip: "81215-0999", security_level: 3)
Facility.create(name: "La Vista Correctional Facility", acronymn: "LVCF", facility_group: "Pueblo Complex", physical_address: "1401 W 17th St", physical_city: "Pueblo", physical_state: "CO", physical_zip: "81003", phone_number: "719-544-4800", mailing_address: "PO BOX 3", mailing_city: "Pueblo", mailing_state: "CO", mailing_zip: "81002", security_level: 3)
Facility.create(name: "Limon Correctional Facility", acronymn: "LCF", facility_group: "", physical_address: "49030 State Hwy 71 South", physical_city: "Limon", physical_state: "CO", physical_zip: "80826", phone_number: "719-775-9221", mailing_address: "49030 State Hwy 71 South", mailing_city: "Limon", mailing_state: "CO", mailing_zip: "80826", security_level: 4)
Facility.create(name: "Rifle Correctional Center", acronymn: "RCC", facility_group: "", physical_address: "200 County Road 219", physical_city: "Rifle", physical_state: "CO", physical_zip: "81650", phone_number: "970-625-7578", mailing_address: "200 County Road 219", mailing_city: "Rifle", mailing_state: "CO", mailing_zip: "81650", security_level: 1)
Facility.create(name: "San Carlos Correctional Facility", acronymn: "SCCF", facility_group: "Pueblo Complex", physical_address: "1503 Hood Ave", physical_city: "Pueblo", physical_state: "CO", physical_zip: "81003", phone_number: "719-544-4800", mailing_address: "PO BOX 3", mailing_city: "Pueblo", mailing_state: "CO", mailing_zip: "81002", security_level: 5)
Facility.create(name: "Skyline Correctional Facility", acronymn: "SCF", facility_group: "Canon City Complex", physical_address: "600 Evans Rd", physical_city: "Cañon City", physical_state: "CO", physical_zip: "81212", phone_number: "719-269-5902", mailing_address: "600 Evans Rd", mailing_city: "Cañon City", mailing_state: "CO", mailing_zip: "81212", security_level: 1)
Facility.create(name: "Sterling Correctional Facility", acronymn: "SCF", facility_group: "", physical_address: "12101 CO-61", physical_city: "Sterling", physical_state: "CO", physical_zip: "80751", phone_number: "970-521-5010", mailing_address: "PO BOX 6000", mailing_city: "Sterling", mailing_state: "CO", mailing_zip: "80751", security_level: 5)
Facility.create(name: "Trinidad Correctional Facility", acronymn: "TCF", facility_group: "", physical_address: "21000 HWY 350 East", physical_city: "Model", physical_state: "CO", physical_zip: "81059", phone_number: "719-845-3226", mailing_address: "21000 HWY 350 East", mailing_city: "Model", mailing_state: "CO", mailing_zip: "81059", security_level: 2)
Facility.create(name: "Youthful Offender System", acronymn: "YOS", facility_group: "Pueblo Complex", physical_address: "1300 West 13th Street", physical_city: "Pueblo", physical_state: "CO", physical_zip: "81003", phone_number: "719-544-4800", mailing_address: "1300 West 13th Street", mailing_city: "Pueblo", mailing_state: "CO", mailing_zip: "81003", security_level: 3)

puts "Setting Facilities as Variables..."
f0  = Facility.all[0]
f1  = Facility.all[1]
f2  = Facility.all[2]
f3  = Facility.all[3]
f4  = Facility.all[4]
f5  = Facility.all[5]
f6  = Facility.all[6]
f7  = Facility.all[7]
f8  = Facility.all[8]
f9  = Facility.all[9]
f10 = Facility.all[10]
f11 = Facility.all[11]
f12 = Facility.all[12]
f13 = Facility.all[13]
f14 = Facility.all[14]
f15 = Facility.all[15]
f16 = Facility.all[16]
f17 = Facility.all[17]
f18 = Facility.all[18]
f19 = Facility.all[19]
f20 = Facility.all[20]
f21 = Facility.all[21]
f22 = Facility.all[22]
puts "Turn... Complete."

puts "Creating Clients..."
Client.create(doc_number: 92442, first_name: "Mario", middle_initial: "", last_name: "Rios", age: 44, ethnicity: "Hispanic", gender: "Male", hair_color: "Red", eye_color: "Brown", height: "6' 02\"", weight: 268, est_parole_eligibility_date: "", next_parole_hearing_date: "", facility_id: f0.id, organization_id: o0.id )
Client.create(doc_number: 88091, first_name: "Johnathan", middle_initial: "H", last_name: "Jordan", age: 47, ethnicity: "Black", gender: "Male", hair_color: "Black", eye_color: "Brown", height: "6' 04\"", weight: 194, est_parole_eligibility_date: "26/02/2035", next_parole_hearing_date: "Nov 2034", facility_id: f0.id, organization_id: o0.id )
Client.create(doc_number: 170957, first_name: "Amberlee", middle_initial: "", last_name: "Theodoratos", age: 40, ethnicity: "White", gender: "Female", hair_color: "Brown", eye_color: "Brown", height: "5' 04\"", weight: 145, est_parole_eligibility_date: "25/12/2032", next_parole_hearing_date: "Sep 2032", facility_id: f15.id, organization_id: o0.id )
Client.create(doc_number: 89148, first_name: "Nathan", middle_initial: "J", last_name: "Dunlap", age: 48, ethnicity: "Black", gender: "Male", hair_color: "Black", eye_color: "Brown", height: "5' 11\"", weight: 195, est_parole_eligibility_date: "", next_parole_hearing_date: "", facility_id: f7.id, organization_id: o0.id )
Client.create(doc_number: 173587, first_name: "Spencer", middle_initial: "J", last_name: "Siroky", age: 31, ethnicity: "White", gender: "Male", hair_color: "Brown", eye_color: "Hazel", height: "5' 06\"", weight: 168, est_parole_eligibility_date: "01/07/2033", next_parole_hearing_date: "Apr 2033", facility_id: f0.id, organization_id: o0.id )

puts "Setting Clients as Variables..."
c0  = Client.all[0]
c1  = Client.all[1]
c2  = Client.all[2]
c3  = Client.all[3]
c4  = Client.all[4]
puts "Turn... Complete."

puts "Creating Sentences..."
Sentence.create(sentence_date: "27/02/2007", sentence: "Life Without Parole", county: "JEFFERSON", case_number: "05CR4230", client_id: c0.id)
Sentence.create(sentence_date: "27/02/2007", sentence: "48Y-48Y", county: "JEFFERSON", case_number: "05CR4230", client_id: c0.id)
Sentence.create(sentence_date: "27/02/2007", sentence: "16Y-16Y", county: "JEFFERSON", case_number: "05CR4230", client_id: c0.id)
Sentence.create(sentence_date: "27/02/2007", sentence: "8Y-8Y", county: "JEFFERSON", case_number: "05CR4230", client_id: c0.id)
Sentence.create(sentence_date: "27/02/2007", sentence: "8Y-8Y", county: "JEFFERSON", case_number: "05CR4230", client_id: c0.id)
Sentence.create(sentence_date: "27/02/2007", sentence: "8Y-8Y", county: "JEFFERSON", case_number: "05CR4230", client_id: c0.id)
Sentence.create(sentence_date: "27/02/2007", sentence: "8Y-8Y", county: "JEFFERSON", case_number: "05CR4230", client_id: c0.id)
Sentence.create(sentence_date: "27/02/2007", sentence: "16Y-16Y", county: "JEFFERSON", case_number: "05CR4230", client_id: c0.id)
Sentence.create(sentence_date: "27/02/2007", sentence: "0Y-0Y", county: "JEFFERSON", case_number: "05CR4230", client_id: c0.id)
Sentence.create(sentence_date: "01/06/2008", sentence: "10Y-10Y", county: "DENVER", case_number: "06CR5431", client_id: c0.id)
Sentence.create(sentence_date: "27/10/1995", sentence: "48Y-48Y", county: "ARAPAHOE", case_number: "94CR604", client_id: c1.id)
Sentence.create(sentence_date: "27/10/1995", sentence: "32Y-32Y", county: "ARAPAHOE", case_number: "94CR604", client_id: c1.id)
Sentence.create(sentence_date: "27/10/1995", sentence: "20Y-20Y", county: "ARAPAHOE", case_number: "94CR604", client_id: c1.id)
Sentence.create(sentence_date: "14/12/2015", sentence: "4Y-4Y", county: "JEFFERSON", case_number: "14CR3352", client_id: c2.id)
Sentence.create(sentence_date: "14/12/2015", sentence: "14Y-14Y", county: "JEFFERSON", case_number: "14CR2805", client_id: c2.id)
Sentence.create(sentence_date: "14/12/2015", sentence: "0Y-0Y", county: "JEFFERSON", case_number: "14CR2805", client_id: c2.id)
Sentence.create(sentence_date: "14/12/2015", sentence: "5Y-5Y", county: "JEFFERSON", case_number: "14CR2805", client_id: c2.id)
Sentence.create(sentence_date: "17/05/1996", sentence: "Death", county: "ARAPAHOE", case_number: "93CR2071", client_id: c3.id)
Sentence.create(sentence_date: "17/05/1996", sentence: "Death", county: "ARAPAHOE", case_number: "93CR2071", client_id: c3.id)
Sentence.create(sentence_date: "17/05/1996", sentence: "Death", county: "ARAPAHOE", case_number: "93CR2071", client_id: c3.id)
Sentence.create(sentence_date: "17/05/1996", sentence: "Death", county: "ARAPAHOE", case_number: "93CR2071", client_id: c3.id)
Sentence.create(sentence_date: "17/05/1996", sentence: "48Y-48Y", county: "ARAPAHOE", case_number: "93CR2071", client_id: c3.id)
Sentence.create(sentence_date: "17/05/1996", sentence: "30Y-30Y", county: "ARAPAHOE", case_number: "93CR2071", client_id: c3.id)
Sentence.create(sentence_date: "17/05/1996", sentence: "30Y-30Y", county: "ARAPAHOE", case_number: "93CR2071", client_id: c3.id)
Sentence.create(sentence_date: "17/05/1996", sentence: "5Y-5Y", county: "ARAPAHOE", case_number: "93CR2071", client_id: c3.id)
Sentence.create(sentence_date: "10/01/1996", sentence: "35Y-35Y", county: "ARAPAHOE", case_number: "95CR605", client_id: c3.id)
Sentence.create(sentence_date: "10/01/1996", sentence: "20Y-20Y", county: "ARAPAHOE", case_number: "95CR605", client_id: c3.id)
Sentence.create(sentence_date: "10/01/1996", sentence: "20Y-20Y", county: "ARAPAHOE", case_number: "95CR605", client_id: c3.id)
Sentence.create(sentence_date: "10/01/1996", sentence: "6Y-6Y", county: "ARAPAHOE", case_number: "95CR605", client_id: c3.id)
Sentence.create(sentence_date: "02/09/2016", sentence: "17Y-17Y", county: "JEFFERSON", case_number: "15CR2137", client_id: c4.id)
Sentence.create(sentence_date: "02/09/2016", sentence: "10Y-10Y", county: "JEFFERSON", case_number: "15CR2137", client_id: c4.id)
Sentence.create(sentence_date: "02/09/2016", sentence: "6Y-6Y", county: "JEFFERSON", case_number: "15CR2137", client_id: c4.id)

puts "Creating Sentence Variables..."
s0 = Sentence.all[0]
s1 = Sentence.all[1]
s2 = Sentence.all[2]
s3 = Sentence.all[3]
s4 = Sentence.all[4]
s5 = Sentence.all[5]
s6 = Sentence.all[6]
s7 = Sentence.all[7]
s8 = Sentence.all[8]
s9 = Sentence.all[9]
s10 = Sentence.all[10]
s11 = Sentence.all[11]
s12 = Sentence.all[12]
s13 = Sentence.all[13]
s14 = Sentence.all[14]
s15 = Sentence.all[15]
s16 = Sentence.all[16]
s17 = Sentence.all[17]
s18 = Sentence.all[18]
s19 = Sentence.all[19]
s20 = Sentence.all[20]
s21 = Sentence.all[21]
s22 = Sentence.all[22]
s23 = Sentence.all[23]
s24 = Sentence.all[24]
s25 = Sentence.all[25]
s26 = Sentence.all[26]
s27 = Sentence.all[27]
s28 = Sentence.all[28]
s29 = Sentence.all[29]
s30 = Sentence.all[30]
s31 = Sentence.all[31]

puts "Testing Sentence Variables..."
puts "#{s0.sentence_date} #{s0.sentence} #{s0.sentence_date} #{s0.county} #{s0.case_number} #{s0.client_id}"
puts "#{s1.sentence_date} #{s1.sentence} #{s1.sentence_date} #{s1.county} #{s1.case_number} #{s1.client_id}"
puts "#{s2.sentence_date} #{s2.sentence} #{s2.sentence_date} #{s2.county} #{s2.case_number} #{s2.client_id}"
puts "#{s3.sentence_date} #{s3.sentence} #{s3.sentence_date} #{s3.county} #{s3.case_number} #{s3.client_id}"
puts "#{s4.sentence_date} #{s4.sentence} #{s4.sentence_date} #{s4.county} #{s4.case_number} #{s4.client_id}"
puts "#{s5.sentence_date} #{s5.sentence} #{s5.sentence_date} #{s5.county} #{s5.case_number} #{s5.client_id}"
puts "#{s6.sentence_date} #{s6.sentence} #{s6.sentence_date} #{s6.county} #{s6.case_number} #{s6.client_id}"
puts "#{s7.sentence_date} #{s7.sentence} #{s7.sentence_date} #{s7.county} #{s7.case_number} #{s7.client_id}"
puts "#{s8.sentence_date} #{s8.sentence} #{s8.sentence_date} #{s8.county} #{s8.case_number} #{s8.client_id}"
puts "#{s9.sentence_date} #{s9.sentence} #{s9.sentence_date} #{s9.county} #{s9.case_number} #{s9.client_id}"
puts "#{s10.sentence_date} #{s10.sentence} #{s10.sentence_date} #{s10.county} #{s10.case_number} #{s10.client_id}"
puts "#{s11.sentence_date} #{s11.sentence} #{s11.sentence_date} #{s11.county} #{s11.case_number} #{s11.client_id}"
puts "#{s12.sentence_date} #{s12.sentence} #{s12.sentence_date} #{s12.county} #{s12.case_number} #{s12.client_id}"
puts "#{s13.sentence_date} #{s13.sentence} #{s13.sentence_date} #{s13.county} #{s13.case_number} #{s13.client_id}"
puts "#{s14.sentence_date} #{s14.sentence} #{s14.sentence_date} #{s14.county} #{s14.case_number} #{s14.client_id}"
puts "#{s15.sentence_date} #{s15.sentence} #{s15.sentence_date} #{s15.county} #{s15.case_number} #{s15.client_id}"
puts "#{s16.sentence_date} #{s16.sentence} #{s16.sentence_date} #{s16.county} #{s16.case_number} #{s16.client_id}"
puts "#{s17.sentence_date} #{s17.sentence} #{s17.sentence_date} #{s17.county} #{s17.case_number} #{s17.client_id}"
puts "#{s18.sentence_date} #{s18.sentence} #{s18.sentence_date} #{s18.county} #{s18.case_number} #{s18.client_id}"
puts "#{s19.sentence_date} #{s19.sentence} #{s19.sentence_date} #{s19.county} #{s19.case_number} #{s19.client_id}"
puts "#{s20.sentence_date} #{s20.sentence} #{s20.sentence_date} #{s20.county} #{s20.case_number} #{s20.client_id}"
puts "#{s21.sentence_date} #{s21.sentence} #{s21.sentence_date} #{s21.county} #{s21.case_number} #{s21.client_id}"
puts "#{s22.sentence_date} #{s22.sentence} #{s22.sentence_date} #{s22.county} #{s22.case_number} #{s22.client_id}"
puts "#{s23.sentence_date} #{s23.sentence} #{s23.sentence_date} #{s23.county} #{s23.case_number} #{s23.client_id}"
puts "#{s24.sentence_date} #{s24.sentence} #{s24.sentence_date} #{s24.county} #{s24.case_number} #{s24.client_id}"
puts "#{s25.sentence_date} #{s25.sentence} #{s25.sentence_date} #{s25.county} #{s25.case_number} #{s25.client_id}"
puts "#{s26.sentence_date} #{s26.sentence} #{s26.sentence_date} #{s26.county} #{s26.case_number} #{s26.client_id}"
puts "#{s27.sentence_date} #{s27.sentence} #{s27.sentence_date} #{s27.county} #{s27.case_number} #{s27.client_id}"
puts "#{s28.sentence_date} #{s28.sentence} #{s28.sentence_date} #{s28.county} #{s28.case_number} #{s28.client_id}"
puts "#{s29.sentence_date} #{s29.sentence} #{s29.sentence_date} #{s29.county} #{s29.case_number} #{s29.client_id}"
puts "#{s30.sentence_date} #{s30.sentence} #{s30.sentence_date} #{s30.county} #{s30.case_number} #{s30.client_id}"
puts "#{s31.sentence_date} #{s31.sentence} #{s31.sentence_date} #{s31.county} #{s31.case_number} #{s31.client_id}"
puts "Turn... Complete."

puts "Creating Users..."
User.create(first_name: "Stacey", last_name: "Putka", email: "stacey@timetobreakthrough.org", password: "123$%^qwe", organization_admin: true, organization_id: o0.id)
User.create(first_name: "Carol", last_name: "Peeples", email: "carol@remerg.com", password: "123$%^qwe", organization_admin: true, organization_id: o1.id)
User.create(first_name: "Ronald", last_name: "Pierce", email: "ronnie@remerg.com", password: "123$%^qwe", organization_admin: false, organization_id: o1.id)
User.create(first_name: "Laurie", last_name: "Lazar", email: "laurie@realnessproject.org", password: "123$%^qwe", organization_admin: true, organization_id: o2.id)
User.create(first_name: "Sean", last_name: "Williams", email: "sean@timetobreakthrough.org", password: "123$%^qwe", organization_admin: false, organization_id: o2.id)
User.create(first_name: "Abe", last_name: "Arrington", email: "abe@scccolorado.org", password: "123$%^qwe", organization_admin: true, organization_id: o3.id)
puts "Creating Sentence Variables..."
u0 = User.all[0]
u1 = User.all[1]
u2 = User.all[2]
u3 = User.all[3]
u4 = User.all[4]
u5 = User.all[5]

puts "Testing Sentence Variables..."
puts "#{u0.first_name} #{u0.last_name} #{u0.email} #{u0.password_digest} #{u0.organization_admin} #{u0.organization_id}"
puts "#{u1.first_name} #{u1.last_name} #{u1.email} #{u1.password_digest} #{u1.organization_admin} #{u1.organization_id}"
puts "#{u2.first_name} #{u2.last_name} #{u2.email} #{u2.password_digest} #{u2.organization_admin} #{u2.organization_id}"
puts "#{u3.first_name} #{u3.last_name} #{u3.email} #{u3.password_digest} #{u3.organization_admin} #{u3.organization_id}"
puts "#{u4.first_name} #{u4.last_name} #{u4.email} #{u4.password_digest} #{u4.organization_admin} #{u4.organization_id}"
puts "#{u5.first_name} #{u5.last_name} #{u5.email} #{u5.password_digest} #{u5.organization_admin} #{u5.organization_id}"

puts "Turn... Complete."
