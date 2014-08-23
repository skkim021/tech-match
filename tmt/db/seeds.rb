# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

profiles = Profile.create([
	{ name: 'Software Developer', description: 'These professionals are the brains behind your Candy Crush obsession and Android phone dependency. They might be applications developers, who design computer software, databases and games, or they could be systems-focused developers, who are responsible for building operating systems. Growth for both types of IT professionals should balloon: The Labor Department predicts there will be nearly 140,000 brand new positions created before 2022.', salary: '$55,000' 
	},
	{ name: 'Web Developer', description: 'Web developers are responsible for the sleek fonts and clean layout you love on your favorite websites. The Labor Department considers this one of the fastest-growing jobs this decade and predicts employment should swell at a rate of about 20 percent by 2022.', salary: '$55,000' 
	},
	{ name: 'Information Security Analyst', description: "If you've watched the news this year, then you probably have a good idea how important this IT professional is to companies and the government – as analysts plan and monitor security of computer networks. You probably also aren’t surprised by how much this occupation will grow: 36.5 percent by the year 2022.", salary: '$55,000'
	},
	{ name: 'Database Administrator', description: "This fast-growing profession involves setting up databases to fit a company's need, then maintaining those database's operations. The Labor Department predicts this field will add 17,900 new positions by 2022.", salary: '$55,000'
	},
	{ name: 'Civil Engineer', description: "Part of the payoff to this job is looking around and seeing the fruits of your skill and labor. Civil engineers have a hand in building bridges, retrofitting buildings and damming reservoirs. By 2022, there should be 53,700 new openings for civil engineers.", salary: '$55,000'
	},
	{ name: 'Mechanical Engineer', description: "This job is a perfect blend of right- and left-brain thinking: Mechanical engineers shepherd devices from the theoretical design phase to the technical production phase. The profession makes our list for its low unemployment rate of 3.1 percent and comfortable median salary of $80,580.", salary: '$55,000'
	},
	{ name: 'IT Manager', description: "IT managers are the go-to personnel when your email won’t send or your word processor won't open. As the head of the IT department, they triage the operations of an organization's technical network, and they're a growing profession. Expect 50,900 new positions by the year 2022.", salary: '$55,000'
	},
	{ name: 'Computer Programmer', description: "Patience and a generous understanding of how computers function will benefit those interested in computer programming. These IT specialists rewrite, debug, maintain and test the software and programs essential to key computer functions. The Labor Department predicts employment growth for programmers of 8.3 percent between 2012 and 2022.", salary: '$55,000'
	},
	{ name: 'Computer Systems Administrator', description: "Network and computer systems administrators keep your emails sending and your Web pages loading, plus they lend their tech-savvy skills to managing telecommunication networks. This profession is expected to add 42,900 new positions by 2022.", salary: '$55,000'
	},
	{ name: 'Computer Support Specialist', description: "Help Desk. Geek Squad. We’ve come up with simplistic terms for professionals whose job description is anything but simple. Computer support specialists maintain the software and hardware for a company’s IT professionals and non-IT users. Although it’s one of the lower-paying positions on our tech jobs list, it is one of the fastest growing. With an estimated 123,000 new computer support specialists by 2022, this occupation could swell by 17 percent.", salary: '$55,000'
	},
]);