guild_employees = ["Kevin Grablin","Haley Thomas","Jessica Rusin","Lauren Mosenthal","Mason Miller","Sean Cuevo","Travis Haby","Matthew Burdumy","Lauren Fine","Menesha Mannapperuma","Rachel Carlson","Adam Burrows","Chris Romer","Kendra Haberkorn","Chandler Koglmeier","Sara Davenport","Daniel Randa","Morgan Harcrow","Jordyn Rector","Brittany Stich","Meg Porfido","Madeline Ford","Frankie Snavely","Zachary Rowe","Mae Podesta","Terrence Cummings","Samantha Goldman","Anna Crosby","Martha Lanaghen","Stafford Brunk","Fae Dagonese","Eric Doty","Sam Gilman","Annie Furlong","Devon McKnight","Taylor Stanek","Amanda Brockbank","Jonathan Adams","Farzad Khosravi","Elisenda Cochin"]
puts 'Creating Users >'
guild_employees.each do |user_name|
  User.create!(name: user_name, email: "topherscratch+#{SecureRandom.uuid.to_s}@gmail.com", password: 'password')
  print '.'
end

classroom_data = [
  { name: "High School Completion Program", description: "The high school completion program is for students who wish to earn their diploma through an alternative to traditional high school or take the GED. Students will gain skills, knowledge, and a credential that can help them work toward their goals of advancing in their chosen field, starting a new career, or pursuing lifelong learning.",
    messages: [
      Faker::Hipster.sentence,
      Faker::Hipster.sentence,
      Faker::Hipster.sentence,
      Faker::Hipster.sentence,
      Faker::Hipster.sentence
    ]
  },
  { name: "Master of Business Administration", description: "Bellevue University’s MBA is designed for new and emerging business professionals with a wide range of incoming academic backgrounds. In today’s highly collaborative and dynamic business environment, performance resulting in successful business outcomes is essential. Leaders with strong decision making skills, clear values, and able to apply business concepts effectively are in professional demand. The 36 credit hour MBA equips students to achieve successful business results by developing strong problem-solving, decision-making, team building, and technical skills. Emphasis is placed on building and practicing the performance skills necessary to achieve successful business outcomes by applying relevant business skills synergistically in areas to include finance, strategy, and human capital management.",
    messages: [
      Faker::Hipster.sentence,
      Faker::Hipster.sentence,
      Faker::Hipster.sentence,
      Faker::Hipster.sentence,
      Faker::Hipster.sentence
    ]
  },
  { name: "Web Application Development Certificate", description: "The 15-credit hour Web Applications Development certificate includes the sequence of five courses necessary to design and build advanced web applications. This certificate is ideal for Computer and Network Security (CN&S) majors, since the internet is generally the medium used for attacks that exploit the security vulnerabilities in computer and network systems. Students in the Media Design - Webconcentration, where SSD 100 is already a required course, only have to complete four additional courses to receive the certificate. Students majoring in the Information Systems Management can use their electives to complete the certificate, if they want to learn software development skills. Other students can complete the certificate, if they satisfy Contemporary Technology Applications (CTA) pre-requisite, either by taking a CTA course or an equivalent course, or by completing a prior learning assessment regarding the student’s computer skills.",
    messages: [
      Faker::Hipster.sentence,
      Faker::Hipster.sentence,
      Faker::Hipster.sentence,
      Faker::Hipster.sentence,
      Faker::Hipster.sentence
    ]
  },
  { name: "Bachelor of Science in Software Development", description: "The Bachelor of Science in Software Development accelerated degree is designed to provide the coding and technology skills a software developer needs to design and create computer applications for businesses and consumers.  You will gain skills in analyzing user needs, designing, coding, testing, and upgrading computer applications and system software. You will have the opportunity to learn and have hands-on practice in programming with Java, Web applications, and designing and managing database systems. Additionally, you will gain other critical skills a software developer needs such as project management, information security, and networking fundamentals. The Bachelor of Science in Software Development is designed specifically for you if you are working as a computer programmer and desire advancement but need a bachelor's degree, or want to work as a software developer but do not have the credentials or enough experience. The degree offers you a way to formalize your knowledge, fully develop and gain confidence in your design and coding skills, and earn a degree that prepares you for this high-demand career. Integrating hands-on, applied learning with theory, all Bellevue University degrees are designed to deliver a transformative student learning experience that is flexible to accommodate your personal and work life. If you have a foundational understanding of computers and an interest in information technology you may be ready for a degree in Software Development. Contact an admissions counselor to help you determine if you have the foundational skills required. Learn more about the skills, abilities, and typical work activities of a software developer.",
    messages: [
      Faker::Hipster.sentence,
      Faker::Hipster.sentence,
      Faker::Hipster.sentence,
      Faker::Hipster.sentence,
      Faker::Hipster.sentence
    ]
  },
  { name: "Lowe's Plumbing Career Diploma", description: "For Lowe's Employees: Now available in Charlotte, Denver, Pittsburgh, Richmond. This self-paced online program successfully prepares students for entry-level careers in plumbing. Students will learn how to install and repair pipes, valves and fittings, and how to repair and install faucets, appliances and more! Objectives of the Plumbing Career Diploma include: Describe materials and tools for standard plumbing projects Understand basic plumbing system design, outline plumbing systems required for HVAC, pool and irrigation systems Understand plumbing codes, plumbing prints, plumbing tools, and safety equipment and practices Identify and use methods and techniques for repair of plumbing systems",
    messages: [
      Faker::Hipster.sentence,
      Faker::Hipster.sentence,
      Faker::Hipster.sentence,
      Faker::Hipster.sentence,
      Faker::Hipster.sentence
    ]
  },
  { name: "Master of Science in Nursing", description: "The Master of Science in Nursing (M.S.N.) program is designed to prepare professional nurses for roles in advanced practice. The curriculum emphasizes the relationships among advanced nursing practice, theory, and scholarly inquiry. Nurses educated at the graduate level demonstrate competency in the roles of advanced caregiver, leader, teacher, and participant in and/or conductor of research. Nurses prepared at the graduate level also have the opportunity to influence health policy and to practice with a high level of autonomy in a variety of settings. Goals: The goals of the Master of Science of Nursing program are to prepare graduates to: Function effectively in advanced nursing practice roles in a variety of settings. Engage in personal and professional development through life-long learning. Broaden career mobility and opportunities in nursing.",
    messages: [
      Faker::Hipster.sentence,
      Faker::Hipster.sentence,
      Faker::Hipster.sentence,
      Faker::Hipster.sentence,
      Faker::Hipster.sentence
    ]
  },
  { name: "Introduction to Nutrition", description: "Introduction to Nutrition explores: The types of nutrients you need. How your body uses nutrients. How nutrition affects your health. How your nutrient needs change at different stages of your life. This course also explores how psychology, society, and your own values and beliefs affect what and how you eat.",
    messages: [
      Faker::Hipster.sentence,
      Faker::Hipster.sentence,
      Faker::Hipster.sentence,
      Faker::Hipster.sentence,
      Faker::Hipster.sentence
    ]
  },
  { name: "Personal Finance - 12 Weeks", description: "Personal Finance is a 12-week course intended to help you on your path toward financial literacy. This is a program for employees looking to take charge in planning and managing their financial situation. The course will focus on learning ways to organize your bank account and financial information; understanding your personal financial position; setting financial goals; and taking steps to meet those goals.",
    messages: [
      Faker::Hipster.sentence,
      Faker::Hipster.sentence,
      Faker::Hipster.sentence,
      Faker::Hipster.sentence,
      Faker::Hipster.sentence
    ]
  },
  { name: "Graphic Design Certificate", description: "The Graphic Design certificate offers introductory courses in three key areas of Adobe software required to work in the design industry:  Adobe InDesign, Adobe Photoshop, and Adobe Illustrator.  A second class of InDesign is included along with Concept Development, which emphasizes good design, problem solving, planning and design functionality.  InDesign is used for layout, Photoshop for image manipulation and Illustrator for vector drawing.",
    messages: [
      Faker::Hipster.sentence,
      Faker::Hipster.sentence,
      Faker::Hipster.sentence,
      Faker::Hipster.sentence,
      Faker::Hipster.sentence
    ]
  },
  { name: "Introductory Algebra", description: "Introductory Algebra guides the student through topics that teach the basics of algebra. Using real-life scenarios, the course puts difficult concepts into understandable terms. After an introductory algebra review, lessons focus on the basic functions of algebra and include math vocabulary and notation, operations with numbers, fractions, decimals, percentages, and quadratic equations. Students also learn to read and interpret graphs.",
    messages: [
      Faker::Hipster.sentence,
      Faker::Hipster.sentence,
      Faker::Hipster.sentence,
      Faker::Hipster.sentence,
      Faker::Hipster.sentence
    ]
  },
  { name: "Digital Marketing Certificate", description: "The field of marketing is undergoing rapid changes with the dramatically increased use of marketing on the internet especially for social media sites.  While traditional marketing knowledge and approaches do apply to internet and social media marketing, new skills are increasingly expected of employees entering these new areas of marketing.  New employees are expected to know how to not only develop and implement marketing plans but also have the skills to do the more routine digital creation of the content.  This includes developing and maintaining company websites and creating digital advertisements. Note: Students will be held to all course prerequisites. Students must complete DSN 094 - Technology Orientation as a prerequisite to this certificate, which is FREE of charge and can be completed through Blackboard in approximately 60 minutes.",
    messages: [
      Faker::Hipster.sentence,
      Faker::Hipster.sentence,
      Faker::Hipster.sentence,
      Faker::Hipster.sentence,
      Faker::Hipster.sentence
    ]
  },
  { name: "Master of Science in Cybersecurity", description: "About the M.S. in Cybersecurity: Students earning this degree will be prepared to advance in the growing and challenging field of Cybersecurity. The program offers students the opportunity to learn both tactical and strategic perspectives of Cybersecurity. The combination of tactical and strategic perspectives enables students to become practitioners and leaders in the field of Cybersecurity.",
    messages: [
      Faker::Hipster.sentence,
      Faker::Hipster.sentence,
      Faker::Hipster.sentence,
      Faker::Hipster.sentence,
      Faker::Hipster.sentence
    ]
  },
  { name: "Microbiology + Lab", description: "Microbiology is designed to teach the biology as it applies to the health care field. Students will study pathogenic microorganisms and their role in human disease, human immunology, symptoms and treatment of microbial infection, and preventative measures against microbial infection. This lab portion of the course is designed as a standalone addition to StraighterLine’s Microbiology course. Students will complete at-home laboratory experiments, track and record results, answer lab-based questions reflected in graded lab reports, and complete lab-based assessments to meet the lab requirement. The labs are provided by eScience Labs, a leading provider of at-home lab kits and online lab instructional materials and resources.",
    messages: [
      Faker::Hipster.sentence,
      Faker::Hipster.sentence,
      Faker::Hipster.sentence,
      Faker::Hipster.sentence,
      Faker::Hipster.sentence
    ]
  },
  { name: "Western Civilization I", description: "Western Civilization I provides students with a comprehensive overview of the development of early civilizations from Neolithic times to 1715. Early and contemporary Western cultures are compared and contrasted, as are major religious, social, and political reforms. Other topics include the religious influence of Judaism and the Bible, the rise and fall of ancient Greece, and the transformation of Rome from a republic to an empire. The Crusades, the origins of feudalism, and the evolution of Christianity are examined, as is the evolution of the European economy during Westward expansion. The Scientific Revolution and Enlightenment period are also discussed.",
    messages: [
      Faker::Hipster.sentence,
      Faker::Hipster.sentence,
      Faker::Hipster.sentence,
      Faker::Hipster.sentence,
      Faker::Hipster.sentence
    ]
  },
  { name: "Master of Science in Data Science", description: "Organizations in all industries are collecting vast amounts of data about their customers, operations, and financial performance. However, leaders of these organizations struggle with how to make that data useful so informed decisions can be made. They are seeking people with the right expertise to guide them. Bellevue University’s online Master of Science in Data Science degree is designed to prepare you to be in the driver’s seat to curate, analyze, and make relevant discoveries from large data sets. You’ll learn the tools, methodologies, and systems needed to solve complex problems in almost any field. No data science or computing experience is required but it would be helpful to have some background in math, computing, and statistics. The online Data Science graduate program brings together business analytics, visualization, computer science, and statistics to address the entire process of data science. You’ll apply your skills by gathering, preparing, analyzing and presenting data to business leaders and/or clients. While many programs emphasize programming or statistics, ours strikes a balance between the two in order to prepare you for this ever-changing field.",
    messages: [
      Faker::Hipster.sentence,
      Faker::Hipster.sentence,
      Faker::Hipster.sentence,
      Faker::Hipster.sentence,
      Faker::Hipster.sentence
    ]
  }
]

puts "\n"
puts 'Creating classrooms >'
classroom_data.each do |data|
  c = Classroom.create!(name: data[:name], description: data[:description], user: User.all.sample)
  puts "Creating classroom > #{c.name}"
  data[:messages].each do |content|
    user = User.all.sample
    Membership.create!(classroom_id: c.id, user_id: user.id)
    m = Message.create!(user: User.all.sample, classroom: c, content: content)
    puts "> Creating Message > #{m.id}"
  end
end


puts "\n"
puts 'All set.. Chat On!'
