user_list = [
  [ "testing@gmail.com", "password123@!", "CJ Douglas", "Melbourne, Australia", 20, "M"],
  [ "yourself@yahoo.com", "password123@!", "Ryan Reynolds", "Poughkeepsie, NY", 17, "F"],
  [ "loser@aol.com", "password123@!",  "Toni-Ann Bucknor", "Jacksonville, Florida", 35, "M"],
  [ "weirdo@ymail.com", "password123@!", "Tenn'lai", "Paris, France", 60, "F"],
  [ "sleepyHEAD@outlook.com", "password123@!", "Timmothy Edwards", "Buffalo, New York", 28, "M"]
]

user_list.each do |email, password, name, location, age, gender|
  User.create( email: email, password: password, name: name, location: location, age: age, gender: gender )
end

users = User.all


article_list = [
  ["Transistors Will Stop Shrinking in 2021, Moore’s Law Roadmap Predicts", "http://spectrum.ieee.org/tech-talk/computing/hardware/transistors-will-stop-shrinking-in-2021-moores-law-roadmap-predicts", "After more than 50 years of miniaturization, the transistor could stop shrinking in just five years. That is the prediction of the 2015 International Technology Roadmap for Semiconductors, which was officially released earlier this month."],
  ["MIT PREDICTS THAT WORLD ECONOMY WILL COLLAPSE BY 2030", "http://www.popsci.com/science/article/2012-04/new-research-tracks-40-year-old-prediction-world-economy-will-collapse-2030", "Forty years after its initial publication, a study called The Limits to Growth is looking depressingly prescient. Commissioned by an international think tank called the Club of Rome, the 1972 report found that if civilization continued on its path toward increasing consumption, the global economy would collapse by 2030."],
  ["90% of the population will have unlimited and free data storage by 2018.","http://www.techinsider.io/21-technology-tipping-points-we-will-reach-by-2030-2015-11?op=0#/#90-of-the-population-will-have-unlimited-and-free-data-storage-by-2018-1", "Deleting files to make room for files is going to become a thing of the past. In fewer than three years, about 90% of people will have unlimited and free data storage that will ultimately be ad-supported, according to the report."],
  ["The first robotic pharmacist will arrive in the US 2021.", "http://www.techinsider.io/21-technology-tipping-points-we-will-reach-by-2030-2015-11?op=0#/#the-first-robotic-pharmacist-will-arrive-in-the-us-2021-2", "Robots already have a big presence in the manufacturing industry, but as they become more advanced we will see them enter new service oriented jobs."],
  ["1 trillion sensors will be connected to the internet by 2022", "http://www.techinsider.io/21-technology-tipping-points-we-will-reach-by-2030-2015-11?op=0#/#the-first-robotic-pharmacist-will-arrive-in-the-us-2021-2", "Welcome to the internet of things. As the cost of sensors continues to decline and computing power increases, all kinds of devices will increasingly become connected to the internet. From the clothes you wear to the ground you walk on, everything will come online."],
  ["Technology will replace 80% of doctors: Vinod Khosla", "http://www.futuristspeaker.com/business-trends/33-dramatic-predictions-for-2030/", "Vinod Khosla, co-founder of Sun Microsystems as well as a partner in a couple venture capital firms was the keynote speaker at the Health Innovation Summit hosted by Rock Health in San Francisco. He said “health care is like witchcraft and just based on tradition.”"],
  ["Trimming the Fat – Introducing the Lean Micro-College Model for Education", "http://www.futuristspeaker.com/business-trends/trimming-the-fat-introducing-the-lean-micro-college-model-for-education/", "Last year the DaVinci Institute launched a computer programmer training school, DaVinci Coders, and one of the key people we tapped to be one of our world-class instructors was Jason Noble. On Friday I attended a talk given by Jason at the Rocky Mountain Ruby Conference in Boulder, Colorado titled “From Junior Engineer to Productive Engineer.”"],
  ["2016 Will Be the Biggest Year Yet for Marijuana Policy Reform", "http://www.huffingtonpost.com/rob-kampia/2016-will-be-the-biggest-_b_8882012.html", "I don’t often use superlatives, but it’s easy to say that 2016 will be the most significant year yet in the battle to repeal marijuana prohibition in the United States."]
]

article_list.each do |name, link, description|
  Article.create( name: name, link: link, description: description)
end

articles = Article.all

today = DateTime.now.to_date
prediction_list = [
  [today, today+2.weeks, articles[0], users[0]],
  [today, today+2.weeks, articles[1], users[0]],
  [today, today+2.weeks, articles[2], users[1]],
  [today, today+2.weeks, articles[3], users[1]],
  [today, today+2.weeks, articles[4], users[1]],
  [today, today+2.weeks, articles[5], users[2]],
  [today, today+2.weeks, articles[6], users[2]],
  [today, today+2.weeks, articles[0], users[3]],
  [today, today+2.weeks, articles[0], users[4]],
  [today, today+2.weeks, articles[3], users[4]]
]

prediction_list.each do |submitted_date, outcome_date, article, user|
  Prediction.create( submitted_date: submitted_date, outcome_date: outcome_date, article: article, user: user)
end
