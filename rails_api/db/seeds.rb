# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.destroy_all
user1 = User.create(name: 'Ryan', password: 'test', password_confirmation: 'test', admin: true)
user2 = User.create(name: 'magenta_placenta', password: 'test', password_confirmation: 'test')
user3 = User.create(name: 'jtdizzle01', password: 'test', password_confirmation: 'test')
user4 = User.create(name: 'ptracy', password: 'test', password_confirmation: 'test')
user5 = User.create(name: 'LibraryNerdOne', password: 'test', password_confirmation: 'test')
user6 = User.create(name: 'happygore', password: 'test', password_confirmation: 'test')
user7 = User.create(name: 'roomzinchina', password: 'test', password_confirmation: 'test')
user8 = User.create(name: 'TrollocHunter', password: 'test', password_confirmation: 'test')
user9 = User.create(name: 'arcxyz', password: 'test', password_confirmation: 'test')
user10 = User.create(name: 'mrkipling', password: 'test', password_confirmation: 'test')
user11 = User.create(name: 'jtreminio', password: 'test', password_confirmation: 'test')
user12 = User.create(name: 'TheJosh', password: 'test', password_confirmation: 'test')
user13 = User.create(name: 'BigoLarsson', password: 'test', password_confirmation: 'test')
user14 = User.create(name: 'alendit', password: 'test', password_confirmation: 'test')
user15 = User.create(name: 'hernamesbarbara', password: 'test', password_confirmation: 'test')
user16 = User.create(name: 'aclark', password: 'test', password_confirmation: 'test')
user17 = User.create(name: 'cheshire137', password: 'test', password_confirmation: 'test')
user18 = User.create(name: 'BilalBudhani', password: 'test', password_confirmation: 'test')
user19 = User.create(name: 'Tafkas', password: 'test', password_confirmation: 'test')
user20 = User.create(name: 'Saiing', password: 'test', password_confirmation: 'test')
user21 = User.create(name: '_public', password: 'test', password_confirmation: 'test')
user22 = User.create(name: 'JeremyMorgan', password: 'test', password_confirmation: 'test')
user23 = User.create(name: 'Roggvir', password: 'test', password_confirmation: 'test')
user24 = User.create(name: 'dakkeh', password: 'test', password_confirmation: 'test')
user25 = User.create(name: 'MysteryForumGuy', password: 'test', password_confirmation: 'test')
user26 = User.create(name: '1101_debian', password: 'test', password_confirmation: 'test')
user27 = User.create(name: 'zak8k', password: 'test', password_confirmation: 'test')
user28 = User.create(name: 'coachellavalley', password: 'test', password_confirmation: 'test')


Category.destroy_all
design = Category.create(name: 'Design', slug: 'design')
htmlcss = Category.create(name: 'HTML/CSS', slug: 'htmlcss')
js = Category.create(name: 'JavaScript', slug: 'javascript')
php = Category.create(name: 'PHP', slug: 'php')
python = Category.create(name: 'Python', slug: 'python')
ruby = Category.create(name: 'Ruby', slug: 'ruby')
csharp = Category.create(name: 'C#', slug: 'c-sharp')
java = Category.create(name: 'Java', slug: 'java')
objectivec = Category.create(name: 'Objective-C', slug: 'objective-c')
swift = Category.create(name: 'Swift', slug: 'swift')
android = Category.create(name: 'Android', slug: 'android')
ios = Category.create(name: 'iOS', slug: 'ios')
jquery = Category.create(name: 'jQuery', slug: 'jquery')
angular = Category.create(name: 'AngularJS', slug: 'angularjs')
react = Category.create(name: 'React', slug: 'react')
emberjs = Category.create(name: 'EmberJS', slug: 'ember')


Link.destroy_all
links = [
  {
    user_id: user2.id,
    category: design,
    title: 'Freelancing: 2 Years, $230,000+ and 9 Big Lessons Later',
    body: '',
    url: 'http://joelklettke.com/freelancing-2-years-230000-and-9-big-lessons-later/'
  },
  {
    user_id: user3.id,
    category: design,
    title: 'I Recreated the Mac OS X Desktop in HTML!',
    body: '',
    url: 'http://codepen.io/jackharner/pen/jPmKGe'
  },
  {
    user_id: user4.id,
    category: design,
    title: 'Office Ipsum - Dummy copy for the corporate world',
    body: '',
    url: 'http://officeipsum.com/'
  },
  {
    user_id: user5.id,
    category: htmlcss,
    title: 'Does anyone have any good HTML5 and CSS3 cheatsheets?',
    body: 'I\'m just looking for good cheatsheets for HTML5 and CSS3. Thanks in advance.',
    url: ''
  },
  {
    user_id: user6.id,
    category: htmlcss,
    title: 'How is it Soundcloud is able to seamlessly play music while navigating to different pages?',
    body: 'I\'m a noob. Does it have to do with setting the function of the music player outside the separate pages hosting the content?',
    url: ''
  },
  {
    user_id: user7.id,
    category: htmlcss,
    title: 'Introducing Runway, a free Bootstrap powered WYSIWYG HTML editor. Have a play around and let me know what you think.',
    body: '',
    url: 'http://runway.sudosu.co/'
  },
  {
    user_id: user8.id,
    category: js,
    title: 'Stack Overflow Introduces Runnable JavaScript, CSS, and HTML Code Snippets',
    body: '',
    url: 'http://blog.stackoverflow.com/2014/09/introducing-runnable-javascript-css-and-html-code-snippets/?utm_source=javascriptweekly&utm_medium=email'
  },
  {
    user_id: user9.id,
    category: js,
    title: 'Things every JavaScript developer should know.',
    body: '',
    url: 'http://ilikekillnerds.com/2015/03/things-every-javascript-developer-should-know/'
  },
  {
    user_id: user10.id,
    category: js,
    title: 'Airbnb JavaScript Style Guide - A mostly reasonable approach to JavaScript',
    body: '',
    url: 'https://github.com/airbnb/javascript/blob/master/README.md'
  },
  {
    user_id: user11.id,
    category: php,
    title: 'Happy 20th Birthday, PHP!',
    body: '',
    url: 'https://i.imgur.com/FRBeGVx.jpg'
  },
  {
    user_id: user12.id,
    category: php,
    title: 'Composer just got a MASSIVE speedboost',
    body: '',
    url: 'https://twitter.com/seldaek/status/539727864523128832'
  },
  {
    user_id: user13.id,
    category: php,
    title: 'Lumen - PHP Micro-Framework by Laravel',
    body: '',
    url: 'http://lumen.laravel.com/'
  },
  {
    user_id: user14.id,
    category: python,
    title: 'Ubuntu plans to switch to Python3 by default for the 16.04 release',
    body: '',
    url: 'http://www.phoronix.com/scan.php?page=news_item&px=Ubuntu-16.04-Python-Plans'
  },
  {
    user_id: user15.id,
    category: python,
    title: '11 Python Libraries You Might Not Know',
    body: '',
    url: 'http://blog.yhathq.com/posts/11-python-libraries-you-might-not-know.html'
  },
  {
    user_id: user16.id,
    category: python,
    title: 'Please do my homework',
    body: '',
    url: 'http://blog.aclark.net/2015/02/10/please-do-my-homework/'
  },
  {
    user_id: user17.id,
    category: ruby,
    title: 'I didn\'t realise that was a valid method name',
    body: '',
    url: 'https://i.imgur.com/9UZUTFU.jpg'
  },
  {
    user_id: user18.id,
    category: ruby,
    title: 'Ryan Bates is back',
    body: '',
    url: 'https://twitter.com/rbates/status/581124152511229953'
  },
  {
    user_id: user19.id,
    category: ruby,
    title: 'Ruby 2.2.0 Released',
    body: '',
    url: 'https://www.ruby-lang.org/en/news/2014/12/25/ruby-2-2-0-released/'
  },
  {
    user_id: user20.id,
    category: csharp,
    title: 'Microsoft Open-Sources .NET framework - Introduces Free Visual Studio Community Edition with full extensibility for plugins',
    body: '',
    url: 'http://thenextweb.com/microsoft/2014/11/12/microsofts-open-sources-net-makes-visual-studio-community-2013-free-everyone/'
  },
  {
    user_id: user21.id,
    category: csharp,
    title: 'Microsoft Launches Visual Studio Code, A Free Cross-Platform Code Editor For OS X, Linux And Windows',
    body: '',
    url: 'http://techcrunch.com/2015/04/29/microsoft-shocks-the-world-with-visual-studio-code-a-free-code-editor-for-os-x-linux-and-windows/'
  },
  {
    user_id: user22.id,
    category: csharp,
    title: 'Open Source .NET libraries that make your life easier',
    body: '',
    url: 'http://thomasvm.github.io/blog/2015/03/17/open-source-net-libraries-that-make-your-life-easier/'
  },
  {
    user_id: user23.id,
    category: java,
    title: 'Guys, I found it',
    body: '',
    url: 'https://i.imgur.com/nLpPFrh.jpg'
  },
  {
    user_id: user24.id,
    category: java,
    title: 'Every time I need to kill a hung JVM process.',
    body: '',
    url: 'https://i.imgur.com/YXtZA9i.jpg'
  },
  {
    user_id: user25.id,
    category: java,
    title: 'The most useful Eclipse shortcuts, in gif form, and a printable cheat sheet!',
    body: '',
    url: 'http://elsealabs.com/eclipse-keyboard-shortcuts/'
  },
  {
    user_id: user26.id,
    category: objectivec,
    title: 'New Objective-C feature arrived at clang',
    body: '',
    url: 'http://alexdenisov.github.io/blog/nsvalue-and-boxed-expressions/'
  },
  {
    user_id: user27.id,
    category: objectivec,
    title: '10 Essential open-source iOS libraries',
    body: '',
    url: 'https://www.qudos.io/buckets/top-10-open-source-ios-tools'
  },
  {
    user_id: user28.id,
    category: objectivec,
    title: 'Transitioning from Objective-C? Here\'s your Ultimate Swift Resource...',
    body: '',
    url: 'http://ultimateswiftresource.com/'
  },
  {
    user_id: user4.id,
    category: swift,
    title: 'Apple has published a great free learn to code course for Swift — on GitHub',
    body: '',
    url: 'https://medium.com/@johnweatherford/apple-has-published-a-great-free-learn-to-code-course-for-swift-on-github-feb5e4d70691'
  },
  {
    user_id: user2.id,
    category: swift,
    title: 'Swift just became open source!!!',
    body: 'I can\'t wait to try it on everywhere',
    url: ''
  },
  {
    user_id: user3.id,
    category: swift,
    title: 'Swift voted Stack Overflow\'s most loved programming language',
    body: '',
    url: 'http://stackoverflow.com/research/developer-survey-2015#tech-super'
  },
  {
    user_id: user4.id,
    category: android,
    title: 'The new step by step guide detailing how to get started developing Android apps, with no prior experience necessary. Includes every resource I used, simple explanations and an interesting first app tutorial. Everything you need to get started in Android Development is here.',
    body: '',
    url: 'http://www.xaviertobin.com/'
  },
  {
    user_id: user2.id,
    category: android,
    title: 'Google Maps Now Warns You If You Are Navigating To A Place That Will Be Closed When You Arrive',
    body: '',
    url: 'http://www.androidpolice.com/2015/06/15/google-maps-now-warns-you-if-you-are-navigating-to-a-place-that-will-be-closed-when-you-arrive/'
  },
  {
    user_id: user3.id,
    category: android,
    title: 'Google Announces Project Fi',
    body: '',
    url: 'https://fi.google.com/about/'
  },
  {
    user_id: user4.id,
    category: ios,
    title: 'One of the better features of iOS 8. So glad they finally included this.',
    body: '',
    url: 'https://i.imgur.com/qlpUal0.png'
  },
  {
    user_id: user2.id,
    category: ios,
    title: 'What it\'s like as a developer when iOS updates come out',
    body: '',
    url: 'https://i.imgur.com/fjpi13q.jpg'
  },
  {
    user_id: user3.id,
    category: ios,
    title: 'Now THIS how you make Update notes!',
    body: '',
    url: 'https://i.imgur.com/hDT2dcN.jpg'
  },
  {
    user_id: user4.id,
    category: jquery,
    title: 'I created a masonry plugin that fills all gaps and leaves no ragged edges. I just released version 2.0!',
    body: '',
    url: 'http://masonjs.com/'
  },
  {
    user_id: user2.id,
    category: jquery,
    title: 'Flight.js - An event-driven web framework based on jQuery, from Twitter',
    body: '',
    url: 'http://flightjs.github.com/'
  },
  {
    user_id: user3.id,
    category: jquery,
    title: 'John Resig annotates original jQuery source code',
    body: '',
    url: 'http://genius.it/ejohn.org/files/jquery-original.html#annotations:5088474'
  },
  {
    user_id: user4.id,
    category: angular,
    title: 'Why can\'t cows migrate to Angular2?',
    body: 'Because they have 4 stomachs and need multiple digests',
    url: ''
  },
  {
    user_id: user2.id,
    category: angular,
    title: 'Is ReactJS really faster than AngularJS?',
    body: '',
    url: 'http://blog.500tech.com/is-reactjs-fast/'
  },
  {
    user_id: user3.id,
    category: angular,
    title: 'Firebase is Joining Google',
    body: '',
    url: 'https://www.firebase.com/blog/2014-10-21-firebase-joins-google.html'
  },
  {
    user_id: user4.id,
    category: react,
    title: 'React Native Fundamentals (17 free video lessons)',
    body: '',
    url: 'https://egghead.io/series/react-native-fundamentals'
  },
  {
    user_id: user2.id,
    category: react,
    title: 'The React.js Way: Getting Started Tutorial',
    body: '',
    url: 'http://blog.risingstack.com/the-react-way-getting-started-tutorial/'
  },
  {
    user_id: user3.id,
    category: react,
    title: 'Deprecating JSTransform and react-tools',
    body: '',
    url: 'http://facebook.github.io/react/blog/2015/06/12/deprecating-jstransform-and-react-tools.html'
  },
  {
    user_id: user4.id,
    category: emberjs,
    title: 'Glimmer\'s in canary!',
    body: '',
    url: 'http://emberjs.com/blog/2015/05/05/glimmer-merging.html'
  },
  {
    user_id: user2.id,
    category: emberjs,
    title: 'EMBER.JS 1.13.0 AND 2.0 BETA RELEASED',
    body: '',
    url: 'http://emberjs.com/blog/2015/06/12/ember-1-13-0-released.html'
  },
  {
    user_id: user3.id,
    category: emberjs,
    title: 'EmberConf 2015 - Keynote',
    body: '',
    url: 'https://www.youtube.com/watch?&v=o12-90Dm-Qs'
  }
]

links.each do |link|
  Link.create(link)
end


# users = User.all
# categories = Category.all
# users.each do |user|
#   categories.each do |category|
#     Link.create(user_id: user.id, category: category, title: "#{user.name}'s link about #{category.name}", body: "This is a link from #{user.name} about #{category.name}", url: 'http://www.google.com')
#   end
# end

Comment.destroy_all
comments = [
  'You sometimes have to change your country in the iTunes store because the stuff you want isn\'t available in your country\'s store.',
  'The stores work somewhat like a brick-and mortar-store, which I is pretty annoying (and one more point of evidence that shows how broken the current copyright system is)',
  'I once changed store because of an update that was only available at another store, for some reason. Then I ended up adding some credit to the store and found myself unable to switch back to my country\'s store because there was like 10 cents credit remaining. Had to contact Apple and ask them to trash the credit so I could switch back.',
  'Took me more than an hour to update, swap stores, jump through burning hoops etc just to buy a damn album on iTunes, trying to do the right thing. Sometimes it really is a massive pain in the ass not pirating something',
  'Yeah, I swapped iTunes stores, thinking I was doing the right thing. BAD move',
  'Sorry if I\'m naive, what do you mean "swapping iTunes stores"?',
  'As I\'ve spend some time now reading tru all this, here is what I can tell you about this: It seems that, for example the webfont, is hosted on their server and every request to that fonts, counts as a pageview - and therefore maxes out your 10.000 hits. I dont yet know if there is also a way, to self host it and are forced to add a tracker, in your code, to trust you, but I dont think they will rely on my own viewing counter, for billings. I was thinking about, maybe choosing a Server Lisence and generate SVG Images, for the cases where I will use this font - but then again: Server lisences are also only available as renting-models, where you throw money down into something, without owning anything other then the said lisence.',
  'If your logs can\'t differentiate, then either you simply haven\'t had to learn the ways to filter it raw, or you need to switch to something like google analytics. If you\'re really worried about it, you can include a robots.txt to keep them off the font stack. You can also do targeted CSS to only use the font under circumstances such as a full fledged browser or mobile operating in a certain resolution.',
  'Honestly, if you\'re doing webfonts, you should be using something like google or typekit anyway. Typekit is a huge problem, but if you\'re already legally using adobe it\'s not that much more expensive. They have a free version, the lower paid side is 50/yr (just a year, not a mo), higher is $100. Lower side gets you 500k pageviews, higher 1m, and both have unlimited applicable websites (you.com & youplustwo.com would, under free, require separate plans, not in the two paid versions).',
  'While font stacks can add character to the web, enhancing the experience, it isn\'t a deal breaker. I\'ve never gone to a site and said "their font is so normal that I\'m leaving". I have, on the other hand, gone to sites and said "this shit is too hard to read, I\'m leaving". So, unless the font is aimed at improving readability, it is null (to me, I\'m not the majority, I\'m an individual, I\'m happy to hear feedback on other people\'s opinions).',
  'I just want to point out all of these can be bypassed by a bot. Those will only keep away bots which play by the rules, not bots that were designed for malicious purposes.',
  'Essentially, if you can see/use/interactive with something in a browser, you can steal it. Case in point, it\'s quite trivial to steal Typekit fonts through Chrome\'s developer tools and host them yourself.',
  'I haven\'t found an ideal way to do this without at least two queries.',
  'So wait, that\'s why some sites take forever to load and the text doesn\'t load instantly? And why some sites require Javascript to just show the text?',
  'I see. And I completely agree with you: seems to be a pretty bad business model.',
  'Thanks for taking the time! :)',
  'Depends on lots of things. I\'ve used a font a client sent me some years ago, and then after about a year the author contacted me and requested my coy of the licence. Failed to provide one we\'ve settled on about $200 fee to not put the thing to small court. The licence was about $20.',
  'yeah it\'s the middlemen who collect and troll licences like patent trolls that you have to worry about.',
  'Everyone, listen up... this guy is smart.',
]
100.times do
  user_offset = rand(User.count)
  link_offset = rand(Link.count)
  random_comment = comments[rand(comments.length)]
  Comment.create(body: random_comment, user: User.offset(user_offset).first, link: Link.offset(link_offset).first)
end

Upvote.destroy_all
200.times do
  user_offset = rand(User.count)
  link_offset = rand(Link.count)
  Upvote.create(user: User.offset(user_offset).first, link: Link.offset(link_offset).first)
end
