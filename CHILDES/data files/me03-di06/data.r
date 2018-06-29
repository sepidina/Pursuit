uttered<-list(NULL)
visible<-list(NULL)

gold<-function(x){
  if(x=="baby"){return("BABY")}
  if(x=="bigbird"){return("BIRD")}
  if(x=="bird"){return("DUCK")}
  if(x=="bird"){return("BIRD")}
  if(x=="books"){return("BOOK")}
  if(x=="eyes"){return("EYES")}
  if(x=="cows"){return("COW")}
  if(x=="moocows"){return("COW")}
  if(x=="duckie"){return("DUCK")}
  if(x=="hand"){return("HAND")}
  if(x=="kitty"){return("CAT")}
  if(x=="kittycats"){return("CAT")}
  if(x=="lambie"){return("LAMB")}
  if(x=="pig"){return("PIG")}
  if(x=="piggies"){return("PIG")}
  if(x=="ring"){return("RING")}
  if(x=="sheep"){return("LAMB")}
  if(x=="birdie"){return("DUCK")}
  if(x=="bear"){return("BEAR")}
  if(x=="bigbirds"){return("BIRD")}
  if(x=="book"){return("BOOK")}
  if(x=="bunny"){return("BUNNY")}
  if(x=="cow"){return("COW")}
  if(x=="moocow"){return("COW")}
  if(x=="duck"){return("DUCK")}
  if(x=="hat"){return("HAT")}
  if(x=="kittycat"){return("CAT")}
  if(x=="lamb"){return("LAMB")}
  if(x=="bunnyrabbit"){return("BUNNY")}
  if(x=="piggie"){return("PIG")}
  if(x=="rattle"){return("RATTLE")}
  if(x=="rings"){return("RING")}
  if(x=="bunnies"){return("BUNNY")}
  if(x=="mirror"){return("MIRROR")}
  else{return("NULL")}
}

goldlength<-34


uttered[[1]]<-c("you","want","to","hold","it")
visible[[1]]<-c("RATTLE")

uttered[[2]]<-c("you","want","to","do","the","rattle","ahhah")
visible[[2]]<-c("RATTLE")

uttered[[3]]<-c("oh","thats","good","grip")
visible[[3]]<-c("RATTLE")

uttered[[4]]<-c("good","grip")
visible[[4]]<-c("RATTLE")

uttered[[5]]<-c("let","me","see","you","do","it")
visible[[5]]<-c("RATTLE")

uttered[[6]]<-c("let","me","see","you")
visible[[6]]<-c("RATTLE")

uttered[[7]]<-c("that","makes","lots","of","noise","dont","it","oh","dont","hit","yourself","in","the","nose")
visible[[7]]<-c("RATTLE","BIRD")

uttered[[8]]<-c("dont","hit","yourself","in","the","nose")
visible[[8]]<-c("RATTLE")

uttered[[9]]<-c("yeah")
visible[[9]]<-c("RATTLE")

uttered[[10]]<-c("yeah")
visible[[10]]<-c("RATTLE")

uttered[[11]]<-c("are","you","making","music")
visible[[11]]<-c("RATTLE")

uttered[[12]]<-c("are","you","making","music")
visible[[12]]<-c("RATTLE")

uttered[[13]]<-c("yeah")
visible[[13]]<-c("RATTLE")

uttered[[14]]<-c("are","you","making","music")
visible[[14]]<-c("RATTLE","BOOK")

uttered[[15]]<-c("look","at","the","book")
visible[[15]]<-c("RATTLE","BOOK")

uttered[[16]]<-c("look")
visible[[16]]<-c("RATTLE","BOOK","EYES")

uttered[[17]]<-c("look","see")
visible[[17]]<-c("RATTLE","BOOK","EYES")

uttered[[18]]<-c("look","see","lets","see")
visible[[18]]<-c("RATTLE","BOOK","EYES")

uttered[[19]]<-c("ahhah")
visible[[19]]<-c("RATTLE","BOOK","EYES","BEAR")

uttered[[20]]<-c("what","is","that")
visible[[20]]<-c("RATTLE","BOOK","EYES","BEAR")

uttered[[21]]<-c("is","that","another","whats","that","baby","have")
visible[[21]]<-c("RATTLE","BOOK","EYES","BEAR")

uttered[[22]]<-c("whats","that","bear","have")
visible[[22]]<-c("RATTLE","BOOK","EYES","BEAR")

uttered[[23]]<-c("he","got","a","bottle")
visible[[23]]<-c("RATTLE","BOOK","EYES","BEAR")

uttered[[24]]<-c("yeah","hes","got","a","bottle")
visible[[24]]<-c("RATTLE","BOOK","EYES","BEAR")

uttered[[25]]<-c("ahhah","oh")
visible[[25]]<-c("RATTLE","BOOK","MIRROR","BUNNY")

uttered[[26]]<-c("whos","that","pretty","baby")
visible[[26]]<-c("RATTLE","BOOK","MIRROR","BUNNY")

uttered[[27]]<-c("whos","that","pretty","baby")
visible[[27]]<-c("RATTLE","BOOK","MIRROR","BUNNY")

uttered[[28]]<-c("can","you","see")
visible[[28]]<-c("RATTLE","BOOK","MIRROR","BUNNY")

uttered[[29]]<-c("oh")
visible[[29]]<-c("RATTLE","BOOK","MIRROR","BUNNY")

uttered[[30]]<-c("thats","mots","pretty","baby","isnt","it")
visible[[30]]<-c("RATTLE","BOOK","MIRROR","BUNNY")

uttered[[31]]<-c("thats","mots","pretty","baby")
visible[[31]]<-c("RATTLE","BOOK","MIRROR","BUNNY")

uttered[[32]]<-c("yes","ahhah")
visible[[32]]<-c("RATTLE","BOOK","MIRROR","BUNNY")

uttered[[33]]<-c("whats","this")
visible[[33]]<-c("RATTLE","BOOK","MIRROR","BUNNY")

uttered[[34]]<-c("is","that","a","bunnyrabbit")
visible[[34]]<-c("RATTLE","BOOK","MIRROR","BUNNY")

uttered[[35]]<-c("is","that","a","bunnyrabbit")
visible[[35]]<-c("RATTLE","BOOK","MIRROR","BUNNY")

uttered[[36]]<-c("huh","is","that","a","big","bunnyrabbit")
visible[[36]]<-c("RATTLE","BOOK","MIRROR","BUNNY")

uttered[[37]]<-c("ahhah")
visible[[37]]<-c("RATTLE","BOOK","BABY","KITTY")

uttered[[38]]<-c("whats","the","kitty")
visible[[38]]<-c("RATTLE","BOOK","BABY","KITTY")

uttered[[39]]<-c("i","think","thats","ambrose")
visible[[39]]<-c("RATTLE","BOOK","BABY","KITTY")

uttered[[40]]<-c("is","that","ambrose")
visible[[40]]<-c("RATTLE","BOOK","BABY","KITTY")

uttered[[41]]<-c("meow")
visible[[41]]<-c("RATTLE","BOOK","BABY","KITTY")

uttered[[42]]<-c("is","that","old","ambrose")
visible[[42]]<-c("RATTLE","BOOK","MAN","WOMAN","GIRL","BOY")

uttered[[43]]<-c("oh","who","is","that")
visible[[43]]<-c("RATTLE","BOOK","MAN","WOMAN","GIRL","BOY")

uttered[[44]]<-c("is","that","another","baby")
visible[[44]]<-c("RATTLE","BOOK","MAN","WOMAN","GIRL","BOY")

uttered[[45]]<-c("is","that","another","baby")
visible[[45]]<-c("RATTLE","BOOK","MAN","WOMAN","GIRL","BOY")

uttered[[46]]<-c("yes","it","is")
visible[[46]]<-c("RATTLE","BOOK","MAN","WOMAN","GIRL","BOY")

uttered[[47]]<-c("and")
visible[[47]]<-c("RATTLE","BOOK","MAN","WOMAN","GIRL","BOY")

uttered[[48]]<-c("thats","dada","and","mot")
visible[[48]]<-c("RATTLE","BOOK","MAN","WOMAN","GIRL","BOY")

uttered[[49]]<-c("ahhah","that","can","be","courtney","your","big","sister")
visible[[49]]<-c("RATTLE","BOOK","MAN","WOMAN","GIRL","BOY")

uttered[[50]]<-c("and","you")
visible[[50]]<-c("RATTLE","BOOK","MAN","WOMAN","GIRL","BOY")

uttered[[51]]<-c("hey")
visible[[51]]<-c("RATTLE","BOOK")

uttered[[52]]<-c("let","me","see")
visible[[52]]<-c("RATTLE")

uttered[[53]]<-c("let","me","see")
visible[[53]]<-c("SHEEP")

uttered[[54]]<-c("what","else","is","in","here")
visible[[54]]<-c("SHEEP")

uttered[[55]]<-c("ahhah","oh","thats","a","little","sheep")
visible[[55]]<-c("SHEEP")

uttered[[56]]<-c("you","want","the","little","sheep")
visible[[56]]<-c("SHEEP")

uttered[[57]]<-c("you","want","the","sheep")
visible[[57]]<-c("SHEEP")

uttered[[58]]<-c("baa")
visible[[58]]<-c("SHEEP")

uttered[[59]]<-c("you","want","to","get","the","little","sheep")
visible[[59]]<-c("SHEEP")

uttered[[60]]<-c("can","you","get","him")
visible[[60]]<-c("SHEEP")

uttered[[61]]<-c("can","you","get","the","sheep")
visible[[61]]<-c("SHEEP")

uttered[[62]]<-c("huh")
visible[[62]]<-c("SHEEP")

uttered[[63]]<-c("yeah")
visible[[63]]<-c("SHEEP")

uttered[[64]]<-c("is","he","cute")
visible[[64]]<-c("SHEEP")

uttered[[65]]<-c("what","else","is","in","here")
visible[[65]]<-c("COW")

uttered[[66]]<-c("moo")
visible[[66]]<-c("COW")

uttered[[67]]<-c("thats","the","moocow")
visible[[67]]<-c("COW")

uttered[[68]]<-c("the","moocow","will","get","you")
visible[[68]]<-c("COW")

uttered[[69]]<-c("the","moocow","will","get","you")
visible[[69]]<-c("COW")

uttered[[70]]<-c("yes","yes")
visible[[70]]<-c("COW")

uttered[[71]]<-c("yes","you","going","to","laugh","for","mot")
visible[[71]]<-c("COW")

uttered[[72]]<-c("are","you","going","to","laugh")
visible[[72]]<-c("COW")

uttered[[73]]<-c("yeah","you","like","to","laugh")
visible[[73]]<-c("COW")

uttered[[74]]<-c("yeah")
visible[[74]]<-c("COW")

uttered[[75]]<-c("you","laugh","when","you","bit","your","big","sister","your","big","sister","can","always")
visible[[75]]<-c("COW")

uttered[[76]]<-c("she","can","always","make","you","laugh")
visible[[76]]<-c("COW")

uttered[[77]]<-c("boo")
visible[[77]]<-c("COW")

uttered[[78]]<-c("ahhah","is","that","funny")
visible[[78]]<-c("COW")

uttered[[79]]<-c("is","that","funny")
visible[[79]]<-c("COW")

uttered[[80]]<-c("yeah","you","think","thats","funny","dont","you")
visible[[80]]<-c("COW")

uttered[[81]]<-c("hey","what","else","we","got","in","here")
visible[[81]]<-c("NONE")

uttered[[82]]<-c("its","a","pig")
visible[[82]]<-c("PIG")

uttered[[83]]<-c("its","a","pig")
visible[[83]]<-c("PIG")

uttered[[84]]<-c("oink")
visible[[84]]<-c("PIG")

uttered[[85]]<-c("oink")
visible[[85]]<-c("PIG")

uttered[[86]]<-c("is","that","funny")
visible[[86]]<-c("PIG")

uttered[[87]]<-c("is","that","funny")
visible[[87]]<-c("PIG")

uttered[[88]]<-c("as","grandma","does")
visible[[88]]<-c("PIG")

uttered[[89]]<-c("what","does","grandma","do")
visible[[89]]<-c("PIG")

uttered[[90]]<-c("what","does","grandma","do","she","says")
visible[[90]]<-c("PIG")

uttered[[91]]<-c("here","comes","the","bumblebee","the","bumblebee","the","bumble","bzz")
visible[[91]]<-c("PIG")

uttered[[92]]<-c("yeah")
visible[[92]]<-c("PIG")

uttered[[93]]<-c("bzz","it","gets","you")
visible[[93]]<-c("PIG")

uttered[[94]]<-c("yeah")
visible[[94]]<-c("PIG")

uttered[[95]]<-c("it","does")
visible[[95]]<-c("PIG")

uttered[[96]]<-c("it","gets","you")
visible[[96]]<-c("PIG")

uttered[[97]]<-c("ahhah","it","gets","you")
visible[[97]]<-c("PIG")

uttered[[98]]<-c("yes")
visible[[98]]<-c("PIG")

uttered[[99]]<-c("hey")
visible[[99]]<-c("RATTLE")

uttered[[100]]<-c("want","to","make","some","more","noise")
visible[[100]]<-c("RATTLE")

uttered[[101]]<-c("huh")
visible[[101]]<-c("RATTLE")

uttered[[102]]<-c("want","to","make","some","more","noise")
visible[[102]]<-c("RATTLE")

uttered[[103]]<-c("look","at","the","ball")
visible[[103]]<-c("RATTLE")

uttered[[104]]<-c("you","see","the","balls","going","round")
visible[[104]]<-c("RATTLE")

uttered[[105]]<-c("the","balls","going","round")
visible[[105]]<-c("RATTLE")

uttered[[106]]<-c("yeah")
visible[[106]]<-c("RATTLE")

uttered[[107]]<-c("here")
visible[[107]]<-c("RATTLE")

uttered[[108]]<-c("grab")
visible[[108]]<-c("RATTLE")

uttered[[109]]<-c("what","are","you","going","to","be")
visible[[109]]<-c("RATTLE")

uttered[[110]]<-c("you","going","to","be","right","handed","or","left","handed")
visible[[110]]<-c("RATTLE")

uttered[[111]]<-c("you","dont","know")
visible[[111]]<-c("RATTLE")

uttered[[112]]<-c("say","i","dont","know")
visible[[112]]<-c("RATTLE")

uttered[[113]]<-c("i","dont","know")
visible[[113]]<-c("RATTLE")

uttered[[114]]<-c("oh")
visible[[114]]<-c("RATTLE")

uttered[[115]]<-c("are","you","going","to","be","my","drummer")
visible[[115]]<-c("RATTLE")

uttered[[116]]<-c("are","you","going","to","be","my","little","drummer")
visible[[116]]<-c("RATTLE")

uttered[[117]]<-c("yes")
visible[[117]]<-c("RATTLE")

uttered[[118]]<-c("yes")
visible[[118]]<-c("RATTLE")

uttered[[119]]<-c("what","else","we","got","in","here","oh","rolypoly")
visible[[119]]<-c("RATTLE","DUCK")

uttered[[120]]<-c("oh","this","makes","noise","too")
visible[[120]]<-c("RATTLE","DUCK")

uttered[[121]]<-c("what","is","that")
visible[[121]]<-c("RATTLE","DUCK")

uttered[[122]]<-c("is","that","a","big","bird")
visible[[122]]<-c("RATTLE","DUCK")

uttered[[123]]<-c("is","that","a","big","one")
visible[[123]]<-c("RATTLE","DUCK")

uttered[[124]]<-c("yeah")
visible[[124]]<-c("RATTLE","DUCK")

uttered[[125]]<-c("oh")
visible[[125]]<-c("RATTLE","DUCK")

uttered[[126]]<-c("dododo")
visible[[126]]<-c("RATTLE","DUCK")

uttered[[127]]<-c("dododo")
visible[[127]]<-c("RATTLE","DUCK")

uttered[[128]]<-c("dododo")
visible[[128]]<-c("RATTLE","DUCK")

uttered[[129]]<-c("let","me","see","you","get","those","feet","going")
visible[[129]]<-c("RATTLE","DUCK")

uttered[[130]]<-c("let","me","see")
visible[[130]]<-c("RATTLE","DUCK")

uttered[[131]]<-c("like","when","you","go","in","the","pool")
visible[[131]]<-c("RATTLE","DUCK")

uttered[[132]]<-c("we","going","to","go","in","the","pool","today")
visible[[132]]<-c("RATTLE","DUCK")

uttered[[133]]<-c("look","up","here")
visible[[133]]<-c("RATTLE","DUCK")

uttered[[134]]<-c("look")
visible[[134]]<-c("RATTLE","DUCK")

uttered[[135]]<-c("are","we","going","to","go","in","the","pool","today")
visible[[135]]<-c("RATTLE","DUCK")

uttered[[136]]<-c("go","in","the","pool","make","big","splashes")
visible[[136]]<-c("RATTLE","DUCK")

uttered[[137]]<-c("like","last","night")
visible[[137]]<-c("RATTLE","DUCK")

uttered[[138]]<-c("you","made","big","splashes","didnt","you")
visible[[138]]<-c("RATTLE","DUCK")

uttered[[139]]<-c("you","got","the","carpet","in","the","bathroom","all","wet")
visible[[139]]<-c("RATTLE","DUCK")

uttered[[140]]<-c("yes","you","did")
visible[[140]]<-c("RATTLE","DUCK")

uttered[[141]]<-c("hey")
visible[[141]]<-c("RATTLE","DUCK")

uttered[[142]]<-c("look","over","here","see","the","birdie")
visible[[142]]<-c("RATTLE","DUCK")

uttered[[143]]<-c("see","the","birdie")
visible[[143]]<-c("RATTLE","DUCK")

uttered[[144]]<-c("oh","yes","yes")
visible[[144]]<-c("RATTLE","DUCK")

uttered[[145]]<-c("i","know")
visible[[145]]<-c("RATTLE","DUCK")

uttered[[146]]<-c("lets","see")
visible[[146]]<-c("RATTLE","DUCK")

uttered[[147]]<-c("you","want","to","hold","the","bird","you","want","mot","to","hold","this")
visible[[147]]<-c("RATTLE","DUCK")

uttered[[148]]<-c("huh")
visible[[148]]<-c("RATTLE","DUCK")

uttered[[149]]<-c("you","want","to","hold","the","bird","oh","hes","a","funny","bird","isnt")
visible[[149]]<-c("RATTLE","DUCK")

uttered[[150]]<-c("he","makes","noise")
visible[[150]]<-c("RATTLE","DUCK")

uttered[[151]]<-c("i","think","he","goes","rollie","lets","see")
visible[[151]]<-c("RATTLE","DUCK")

uttered[[152]]<-c("lets","see","how","he","goes","on","the","floor")
visible[[152]]<-c("RATTLE","DUCK")

uttered[[153]]<-c("lets","see","is","he","a","birdie","that","tips")
visible[[153]]<-c("RATTLE","DUCK")

uttered[[154]]<-c("oh","look","hes","a","rolypoly","bird")
visible[[154]]<-c("RATTLE","DUCK")

uttered[[155]]<-c("look","he","cant","fall","over")
visible[[155]]<-c("RATTLE","DUCK")

uttered[[156]]<-c("hes","not","falling","over")
visible[[156]]<-c("RATTLE","DUCK")

uttered[[157]]<-c("no")
visible[[157]]<-c("RATTLE","DUCK")

uttered[[158]]<-c("heres","the","moocow")
visible[[158]]<-c("RATTLE","COW")

uttered[[159]]<-c("heres","the","moocow")
visible[[159]]<-c("RATTLE","PIG","COW")

uttered[[160]]<-c("heres","moocow")
visible[[160]]<-c("RATTLE","PIG","COW")

uttered[[161]]<-c("oh","we","can","put","the","pig","over","here")
visible[[161]]<-c("RATTLE","DUCK","PIG","COW")

uttered[[162]]<-c("are","you","going","to","hit","the","pig")
visible[[162]]<-c("RATTLE","PIG","COW")

uttered[[163]]<-c("oh","are","you","going","to","knock","the","pig","over")
visible[[163]]<-c("RATTLE","PIG","COW")

uttered[[164]]<-c("dont","knock","the","pig","over")
visible[[164]]<-c("RATTLE","PIG","COW")

uttered[[165]]<-c("oh","there","went","the","cow")
visible[[165]]<-c("RATTLE","PIG")

uttered[[166]]<-c("there","went","the","cow")
visible[[166]]<-c("RATTLE","PIG")

uttered[[167]]<-c("oh","there","went","the","pig")
visible[[167]]<-c("RATTLE","PIG")

uttered[[168]]<-c("there","went","the","cow")
visible[[168]]<-c("RATTLE","COW")

uttered[[169]]<-c("there","we","go")
visible[[169]]<-c("RATTLE","PIG","COW")

uttered[[170]]<-c("choo","choo")
visible[[170]]<-c("RATTLE","PIG","COW")

uttered[[171]]<-c("you","want","to","hold","the","pig")
visible[[171]]<-c("RATTLE","PIG","COW")

uttered[[172]]<-c("whats","the","pig","say")
visible[[172]]<-c("RATTLE","PIG","COW")

uttered[[173]]<-c("oink","oink")
visible[[173]]<-c("RATTLE","PIG","COW")

uttered[[174]]<-c("oink","oink")
visible[[174]]<-c("RATTLE","PIG","COW")

uttered[[175]]<-c("you","got","the","pig")
visible[[175]]<-c("RATTLE","PIG","COW")

uttered[[176]]<-c("can","you","get")
visible[[176]]<-c("RATTLE","PIG","COW")

uttered[[177]]<-c("too","much","in","your","hands")
visible[[177]]<-c("PIG","COW")

uttered[[178]]<-c("get","the","piggie")
visible[[178]]<-c("PIG","COW")

uttered[[179]]<-c("get","the","piggie")
visible[[179]]<-c("PIG","COW")

uttered[[180]]<-c("yes")
visible[[180]]<-c("PIG","COW")

uttered[[181]]<-c("yes")
visible[[181]]<-c("PIG","COW")

uttered[[182]]<-c("oh")
visible[[182]]<-c("PIG","COW","RING")

uttered[[183]]<-c("yes")
visible[[183]]<-c("PIG","COW","RING")

uttered[[184]]<-c("what","else","we","got")
visible[[184]]<-c("PIG","COW","RING")

uttered[[185]]<-c("oh","you","have")
visible[[185]]<-c("PIG","COW","RING")

uttered[[186]]<-c("we","have","these","at","grandmas")
visible[[186]]<-c("PIG","COW","RING")

uttered[[187]]<-c("grandma","has","these","doesnt","she")
visible[[187]]<-c("PIG","COW","RING")

uttered[[188]]<-c("she","has","the","big","rings")
visible[[188]]<-c("PIG","COW","RING")

uttered[[189]]<-c("doesnt","she")
visible[[189]]<-c("PIG","COW","RING")

uttered[[190]]<-c("yes")
visible[[190]]<-c("PIG","COW","RING")

uttered[[191]]<-c("you","want","to","make","a","bracelet")
visible[[191]]<-c("PIG","COW","RING")

uttered[[192]]<-c("you","want","to","make","a","bracelet")
visible[[192]]<-c("PIG","COW","RING")

uttered[[193]]<-c("hmm")
visible[[193]]<-c("PIG","COW","RING")

uttered[[194]]<-c("can","you","get","that")
visible[[194]]<-c("PIG","COW","RING")

uttered[[195]]<-c("what","you","going","to","do","with","that")
visible[[195]]<-c("PIG","COW","RING")

uttered[[196]]<-c("maybe","the","pig")
visible[[196]]<-c("PIG","RING")

uttered[[197]]<-c("the","pig")
visible[[197]]<-c("PIG","RING")

uttered[[198]]<-c("put","the","pig","in","there")
visible[[198]]<-c("PIG","RING")

uttered[[199]]<-c("is","that","blue")
visible[[199]]<-c("PIG","RING")

uttered[[200]]<-c("thats","blue")
visible[[200]]<-c("PIG","RING")

uttered[[201]]<-c("what","colors","this")
visible[[201]]<-c("PIG","RING")

uttered[[202]]<-c("is","that","green")
visible[[202]]<-c("PIG","RING")

uttered[[203]]<-c("green","you","going","to","get","the","green","one","too")
visible[[203]]<-c("PIG","RING")

uttered[[204]]<-c("yes")
visible[[204]]<-c("PIG","RING")

uttered[[205]]<-c("i","can","put","the","yellow","one","on","your","foot")
visible[[205]]<-c("PIG","RING")

uttered[[206]]<-c("put","the","yellow","one","on","your","foots")
visible[[206]]<-c("RING")

uttered[[207]]<-c("ahhah","oh","boy","you","knocked","it","off")
visible[[207]]<-c("RING")

uttered[[208]]<-c("you","knocked","it","off")
visible[[208]]<-c("RING")

uttered[[209]]<-c("choo")
visible[[209]]<-c("RING")

uttered[[210]]<-c("choo")
visible[[210]]<-c("RING")

uttered[[211]]<-c("knock","them","together")
visible[[211]]<-c("RING")

uttered[[212]]<-c("knock","them","together","like","this")
visible[[212]]<-c("RING")

uttered[[213]]<-c("choo")
visible[[213]]<-c("RING")

uttered[[214]]<-c("let","me","see","you","do","that")
visible[[214]]<-c("RING")

uttered[[215]]<-c("huh")
visible[[215]]<-c("RING")

uttered[[216]]<-c("yeah","thats","good","thats","good")
visible[[216]]<-c("RING")

uttered[[217]]<-c("thats","good")
visible[[217]]<-c("RING")

uttered[[218]]<-c("you","want","to","trade")
visible[[218]]<-c("RING")

uttered[[219]]<-c("you","like","knocking","them","together","dont","you")
visible[[219]]<-c("RING")

uttered[[220]]<-c("you","like","knocking","them","together","dont","you")
visible[[220]]<-c("RING")

uttered[[221]]<-c("you","want","to","trade")
visible[[221]]<-c("RING")

uttered[[222]]<-c("you","take","the","yellow","one")
visible[[222]]<-c("RING")

uttered[[223]]<-c("you","want","the","yellow","one")
visible[[223]]<-c("RING")

uttered[[224]]<-c("mot","has","the","green","one")
visible[[224]]<-c("RING")

uttered[[225]]<-c("yeah")
visible[[225]]<-c("RING")

uttered[[226]]<-c("yeah")
visible[[226]]<-c("RING")

uttered[[227]]<-c("here","lets","see")
visible[[227]]<-c("RING")

uttered[[228]]<-c("can","you","put","it","on","the","ring")
visible[[228]]<-c("RING")

uttered[[229]]<-c("can","you","put","it","on","the","ring")
visible[[229]]<-c("RING")

uttered[[230]]<-c("let","me","see","you","put","it","try","to","put","it","on","the","ring")
visible[[230]]<-c("RING")

uttered[[231]]<-c("oh","you","just","going","to","take","it")
visible[[231]]<-c("RING")

uttered[[232]]<-c("are","you","going","to","take","it")
visible[[232]]<-c("RING")

uttered[[233]]<-c("huh")
visible[[233]]<-c("RING")

uttered[[234]]<-c("lets","see")
visible[[234]]<-c("RING")

uttered[[235]]<-c("hey","look","look")
visible[[235]]<-c("RING")

uttered[[236]]<-c("look","up","here")
visible[[236]]<-c("RING")

uttered[[237]]<-c("lets","go")
visible[[237]]<-c("RING")

uttered[[238]]<-c("watch")
visible[[238]]<-c("RING")

uttered[[239]]<-c("boo")
visible[[239]]<-c("RING")

uttered[[240]]<-c("what","color","goes","next")
visible[[240]]<-c("RING")

uttered[[241]]<-c("look")
visible[[241]]<-c("RING")

uttered[[242]]<-c("oh","do","you","want","that","ring","back")
visible[[242]]<-c("RING")

uttered[[243]]<-c("you","took","my","ring","mot")
visible[[243]]<-c("RING")

uttered[[244]]<-c("you","want","it","back")
visible[[244]]<-c("RING")

uttered[[245]]<-c("you","want","it","back")
visible[[245]]<-c("RING")

uttered[[246]]<-c("there","you","go")
visible[[246]]<-c("RING")

uttered[[247]]<-c("there","you","go")
visible[[247]]<-c("RING")

uttered[[248]]<-c("ahhah")
visible[[248]]<-c("RING")

uttered[[249]]<-c("oh","are","you","going","are","you","going","to","chew","on","it")
visible[[249]]<-c("RING")

uttered[[250]]<-c("are","you","going","to","chew","on","it")
visible[[250]]<-c("RING")

uttered[[251]]<-c("yes","yes")
visible[[251]]<-c("RING")

uttered[[252]]<-c("oh","lets","sit","you","up","sit","you","up")
visible[[252]]<-c("RING")

uttered[[253]]<-c("yeah")
visible[[253]]<-c("RING")

uttered[[254]]<-c("hey")
visible[[254]]<-c("RING")

uttered[[255]]<-c("hey")
visible[[255]]<-c("RING")

uttered[[256]]<-c("let","me","have","that")
visible[[256]]<-c("RING")

uttered[[257]]<-c("let","me","have","that")
visible[[257]]<-c("RING")

uttered[[258]]<-c("let","me","have","that")
visible[[258]]<-c("RING")

uttered[[259]]<-c("ahhah","whats","this")
visible[[259]]<-c("RING","HAT")

uttered[[260]]<-c("what","does","mot","look","like","with","the","hat","on")
visible[[260]]<-c("RING","HAT")

uttered[[261]]<-c("do","i","look","pretty","good","with","the","hat","on")
visible[[261]]<-c("RING","HAT")

uttered[[262]]<-c("hmm")
visible[[262]]<-c("RING","HAT")

uttered[[263]]<-c("hmm")
visible[[263]]<-c("RING","HAT")

uttered[[264]]<-c("do","i","look","pretty","good")
visible[[264]]<-c("RING","HAT")

uttered[[265]]<-c("peekaboo")
visible[[265]]<-c("RING","HAT")

uttered[[266]]<-c("peekaboo")
visible[[266]]<-c("RING","HAT")

uttered[[267]]<-c("peekaboo")
visible[[267]]<-c("RING","HAT")

uttered[[268]]<-c("ahhah")
visible[[268]]<-c("RING","HAT")

uttered[[269]]<-c("ahhah")
visible[[269]]<-c("RING","HAT")

uttered[[270]]<-c("whos","this","on","the","hat")
visible[[270]]<-c("RING","HAT")

uttered[[271]]<-c("i","think","this","is","oh","thats","minniemouse")
visible[[271]]<-c("RING","HAT")

uttered[[272]]<-c("do","you","see","minniemouse")
visible[[272]]<-c("RING","HAT")

uttered[[273]]<-c("yes","you","see","minniemouse")
visible[[273]]<-c("RING","HAT")

uttered[[274]]<-c("hey")
visible[[274]]<-c("RING","HAT")

uttered[[275]]<-c("oh","get","that","ring")
visible[[275]]<-c("RING","HAT")

uttered[[276]]<-c("get","that","ring")
visible[[276]]<-c("RING","HAT")

uttered[[277]]<-c("get","it")
visible[[277]]<-c("RING","HAT")

uttered[[278]]<-c("let","me","see","you","grab","it")
visible[[278]]<-c("RING","HAT")

uttered[[279]]<-c("let","me","see","you","grab")
visible[[279]]<-c("RING","HAT")

uttered[[280]]<-c("ahhah")
visible[[280]]<-c("RING","HAT")

uttered[[281]]<-c("hey")
visible[[281]]<-c("RING","HAT")

uttered[[282]]<-c("let","me","see","you","grab","it")
visible[[282]]<-c("RING","HAT")

uttered[[283]]<-c("reach","for","it")
visible[[283]]<-c("RING","HAT")

uttered[[284]]<-c("come","on")
visible[[284]]<-c("RING","HAT")

uttered[[285]]<-c("reach","for","it")
visible[[285]]<-c("RING","HAT")

uttered[[286]]<-c("reach","for","it","which","one","do","you","want","you","want","the","green","one","here")
visible[[286]]<-c("RING","HAT")

uttered[[287]]<-c("here")
visible[[287]]<-c("RING","HAT")

uttered[[288]]<-c("reach","for","the","ring")
visible[[288]]<-c("RING","HAT")

uttered[[289]]<-c("can","you","get","it")
visible[[289]]<-c("RING","HAT")

uttered[[290]]<-c("there","you","go")
visible[[290]]<-c("RING","HAT")

uttered[[291]]<-c("good","girl")
visible[[291]]<-c("RING","HAT")

uttered[[292]]<-c("thats","a","good","girl")
visible[[292]]<-c("RING")

uttered[[293]]<-c("thats","a","good","girl")
visible[[293]]<-c("RING")

uttered[[294]]<-c("you","want","the","blue","one")
visible[[294]]<-c("RING")

uttered[[295]]<-c("you","want","the","blue","one")
visible[[295]]<-c("RING")

uttered[[296]]<-c("can","you","reach","for","it")
visible[[296]]<-c("RING")

uttered[[297]]<-c("can","you","reach","for","the","blue","one")
visible[[297]]<-c("RING")

uttered[[298]]<-c("huh")
visible[[298]]<-c("RING")

uttered[[299]]<-c("ahhah","what","are","you","doing")
visible[[299]]<-c("RING")

uttered[[300]]<-c("ahhah","what","are","you","doing")
visible[[300]]<-c("RING")

uttered[[301]]<-c("what","if","i","put","it","on","your","head")
visible[[301]]<-c("RING")

uttered[[302]]<-c("do","you","know","where","it","is")
visible[[302]]<-c("RING")

uttered[[303]]<-c("do","you","know","where","it","went")
visible[[303]]<-c("RING")

uttered[[304]]<-c("where","did","it","go")
visible[[304]]<-c("RING")

uttered[[305]]<-c("you","dont","know")
visible[[305]]<-c("RING")

uttered[[306]]<-c("its","on","your","head")
visible[[306]]<-c("RING")

uttered[[307]]<-c("it","was","on","your","head")
visible[[307]]<-c("RING")

uttered[[308]]<-c("ahhah","oh")
visible[[308]]<-c("RING")

uttered[[309]]<-c("no")
visible[[309]]<-c("RING")

uttered[[310]]<-c("what","if","someone","else","wants","to","play","with","those","and","youll","have","your")
visible[[310]]<-c("RING")

uttered[[311]]<-c("youll","have","your","baby","drool","on","them")
visible[[311]]<-c("RING")

uttered[[312]]<-c("yeah")
visible[[312]]<-c("RING")

uttered[[313]]<-c("hey")
visible[[313]]<-c("RING")

uttered[[314]]<-c("heres","the","birdie")
visible[[314]]<-c("RING","DUCK")

uttered[[315]]<-c("here","the","birdie")
visible[[315]]<-c("RING","DUCK")

uttered[[316]]<-c("does","the","bird","go","up")
visible[[316]]<-c("RING","DUCK")

uttered[[317]]<-c("ahhah","look","we","can","read","books","david")
visible[[317]]<-c("BOOK","BIRD","RATTLE","FACE")

uttered[[318]]<-c("its","a","look","and","see","book")
visible[[318]]<-c("BOOK","BIRD","RATTLE","FACE")

uttered[[319]]<-c("ahhah","we","open","it","up","and","there","are","a","set","of","eyes","and","there","is","a")
visible[[319]]<-c("BOOK","BIRD","RATTLE","FACE","BEAR")

uttered[[320]]<-c("the","bear","has","a","baby","bottle")
visible[[320]]<-c("BOOK","BIRD","RATTLE","FACE","BEAR")

uttered[[321]]<-c("yes","david","has","baby","bottles")
visible[[321]]<-c("BOOK","BIRD","RATTLE","FACE","BEAR")

uttered[[322]]<-c("oh")
visible[[322]]<-c("BOOK","BIRD","RATTLE","MIRROR","BUNNY")

uttered[[323]]<-c("theres","a","mirror")
visible[[323]]<-c("BOOK","BIRD","RATTLE","MIRROR","BUNNY")

uttered[[324]]<-c("can","david","see","david")
visible[[324]]<-c("BOOK","BIRD","RATTLE","MIRROR","BUNNY")

uttered[[325]]<-c("see","david","there","we","go")
visible[[325]]<-c("BOOK","BIRD","RATTLE","MIRROR","BUNNY")

uttered[[326]]<-c("ah","a","bunny")
visible[[326]]<-c("BOOK","BIRD","RATTLE","MIRROR","BUNNY")

uttered[[327]]<-c("what","do","bunnies","do")
visible[[327]]<-c("BOOK","BIRD","RATTLE","MIRROR","BUNNY")

uttered[[328]]<-c("bunnies","go","hiphop","hiphop")
visible[[328]]<-c("BOOK","BIRD","RATTLE","MIRROR","BUNNY")

uttered[[329]]<-c("do","bunnies","go","jumping","through","the","forest")
visible[[329]]<-c("BOOK","BIRD","RATTLE","MIRROR","BUNNY")

uttered[[330]]<-c("can","we","sing","the","song")
visible[[330]]<-c("BOOK","BIRD","RATTLE","MIRROR","BUNNY")

uttered[[331]]<-c("yeah")
visible[[331]]<-c("BOOK","BIRD","RATTLE","KITTY","BABY")

uttered[[332]]<-c("oh")
visible[[332]]<-c("BOOK","BIRD","RATTLE","KITTY","BABY")

uttered[[333]]<-c("theres","a","kittycat")
visible[[333]]<-c("BOOK","BIRD","RATTLE","KITTY","BABY")

uttered[[334]]<-c("kittycats","go","meow","meow")
visible[[334]]<-c("BOOK","BIRD","RATTLE","KITTY","BABY")

uttered[[335]]<-c("the","kittycats","go","meow","meow")
visible[[335]]<-c("BOOK","BIRD","RATTLE","KITTY","BABY")

uttered[[336]]<-c("ah","and","a","baby")
visible[[336]]<-c("BOOK","BIRD","RATTLE","KITTY","BABY")

uttered[[337]]<-c("theres","a","baby","just","like","my","david")
visible[[337]]<-c("BOOK","BIRD","RATTLE","KITTY","BABY")

uttered[[338]]<-c("a","baby")
visible[[338]]<-c("BOOK","BIRD","RATTLE","KITTY","BABY")

uttered[[339]]<-c("thats","a","nice","book")
visible[[339]]<-c("BOOK","BIRD","RATTLE","KITTY","BABY")

uttered[[340]]<-c("and","look")
visible[[340]]<-c("BOOK","BIRD","RATTLE","MAN","WOMAN","GIRL","BOY")

uttered[[341]]<-c("theres","a","family","just","like","ours")
visible[[341]]<-c("BOOK","BIRD","RATTLE","MAN","WOMAN","GIRL","BOY")

uttered[[342]]<-c("theres","a","mommy")
visible[[342]]<-c("BOOK","BIRD","RATTLE","MAN","WOMAN","GIRL","BOY")

uttered[[343]]<-c("and","a","daddy")
visible[[343]]<-c("BOOK","BIRD","RATTLE","MAN","WOMAN","GIRL","BOY")

uttered[[344]]<-c("and","that","could","be","your","big","sister","alison")
visible[[344]]<-c("BOOK","BIRD","RATTLE","MAN","WOMAN","GIRL","BOY")

uttered[[345]]<-c("and","theres","baby","david")
visible[[345]]<-c("BOOK","BIRD","RATTLE","MAN","WOMAN","GIRL","BOY")

uttered[[346]]<-c("ah","is","that","fun")
visible[[346]]<-c("BIRD","RATTLE")

uttered[[347]]<-c("yeah")
visible[[347]]<-c("BIRD","RATTLE")

uttered[[348]]<-c("lookee","ahhah")
visible[[348]]<-c("BIRD","RATTLE")

uttered[[349]]<-c("heres","bigbird")
visible[[349]]<-c("BIRD","RATTLE")

uttered[[350]]<-c("we","watch","big","bird","dont","we")
visible[[350]]<-c("BIRD","RATTLE")

uttered[[351]]<-c("because","alison","likes","bigbird")
visible[[351]]<-c("BIRD","RATTLE")

uttered[[352]]<-c("she","learns","about","her","alphabet","with","bigbird")
visible[[352]]<-c("BIRD","RATTLE")

uttered[[353]]<-c("ah","want","to","play","with","bigbird")
visible[[353]]<-c("BIRD","RATTLE")

uttered[[354]]<-c("yeah","i","see","those","hands","i","see","those","hands")
visible[[354]]<-c("BIRD","RATTLE")

uttered[[355]]<-c("theres","bigbird")
visible[[355]]<-c("BIRD","RATTLE")

uttered[[356]]<-c("should","bigbird","sing","his","abc")
visible[[356]]<-c("BIRD","RATTLE")

uttered[[357]]<-c("yeah")
visible[[357]]<-c("BIRD","RATTLE")

uttered[[358]]<-c("a","b","c","d","e","f","g")
visible[[358]]<-c("BIRD","RATTLE")

uttered[[359]]<-c("h","i","j","k","l","m","n","o","p")
visible[[359]]<-c("BIRD","RATTLE")

uttered[[360]]<-c("q","r","s","t","y","v")
visible[[360]]<-c("BIRD","RATTLE")

uttered[[361]]<-c("w","x","y","and","z")
visible[[361]]<-c("BIRD","RATTLE")

uttered[[362]]<-c("now","i","know","my","abc")
visible[[362]]<-c("BIRD","RATTLE")

uttered[[363]]<-c("next","time","wont","you","sing","with","me")
visible[[363]]<-c("BIRD","RATTLE")

uttered[[364]]<-c("youre","a","drooly","boy")
visible[[364]]<-c("BIRD","RATTLE")

uttered[[365]]<-c("yes","you","are")
visible[[365]]<-c("BIRD","RATTLE")

uttered[[366]]<-c("youre","a","drooly","boy","today")
visible[[366]]<-c("BIRD","RATTLE")

uttered[[367]]<-c("bigbird")
visible[[367]]<-c("BIRD","RATTLE")

uttered[[368]]<-c("okay","you","want","to","hold","bigbird")
visible[[368]]<-c("BIRD","RATTLE")

uttered[[369]]<-c("yeah","bigbirds","eyes")
visible[[369]]<-c("BIRD","RATTLE")

uttered[[370]]<-c("bigbirds","soft")
visible[[370]]<-c("BIRD","RATTLE")

uttered[[371]]<-c("yeah")
visible[[371]]<-c("BIRD")

uttered[[372]]<-c("he","sure","is","hes","soft")
visible[[372]]<-c("BIRD")

uttered[[373]]<-c("aw","big","hugs")
visible[[373]]<-c("BIRD")

uttered[[374]]<-c("mmm","can","momma","hug","bigbird","too")
visible[[374]]<-c("BIRD")

uttered[[375]]<-c("so","we","can","see","you")
visible[[375]]<-c("BIRD")

uttered[[376]]<-c("yeah","huh")
visible[[376]]<-c("BIRD")

uttered[[377]]<-c("momma","hug","bigbird","aw")
visible[[377]]<-c("BIRD")

uttered[[378]]<-c("can","david","hug","bigbird")
visible[[378]]<-c("BIRD")

uttered[[379]]<-c("aw")
visible[[379]]<-c("BIRD")

uttered[[380]]<-c("is","that","sweet")
visible[[380]]<-c("BIRD")

uttered[[381]]<-c("look","we","could","colors")
visible[[381]]<-c("BIRD","RING")

uttered[[382]]<-c("usually","we","dont","get","these","because","usually","alison","has","them")
visible[[382]]<-c("BIRD","RING")

uttered[[383]]<-c("uhuh")
visible[[383]]<-c("BIRD","RING")

uttered[[384]]<-c("all","our","colors")
visible[[384]]<-c("BIRD","RING")

uttered[[385]]<-c("ah","blue","rings")
visible[[385]]<-c("BIRD","RING")

uttered[[386]]<-c("and","green","rings")
visible[[386]]<-c("BIRD","RING")

uttered[[387]]<-c("and","yellow","rings")
visible[[387]]<-c("BIRD","RING")

uttered[[388]]<-c("ah","orange","rings")
visible[[388]]<-c("BIRD","RING")

uttered[[389]]<-c("and","red","ones")
visible[[389]]<-c("BIRD","RING")

uttered[[390]]<-c("ah","bigbird")
visible[[390]]<-c("BIRD","RING")

uttered[[391]]<-c("do","you","want","to","hold","the","rings")
visible[[391]]<-c("BIRD","RING")

uttered[[392]]<-c("you","want","ta","play","with","the","rings")
visible[[392]]<-c("BIRD","RING")

uttered[[393]]<-c("hi")
visible[[393]]<-c("BIRD","RING")

uttered[[394]]<-c("theres","a","red","one")
visible[[394]]<-c("BIRD","RING")

uttered[[395]]<-c("yeah","everything","in","the","mouth")
visible[[395]]<-c("BIRD","RING")

uttered[[396]]<-c("just","where","it","belongs")
visible[[396]]<-c("BIRD","RING")

uttered[[397]]<-c("huh")
visible[[397]]<-c("BIRD","RING")

uttered[[398]]<-c("just","where","it","belongs")
visible[[398]]<-c("BIRD","RING")

uttered[[399]]<-c("hi")
visible[[399]]<-c("RING")

uttered[[400]]<-c("hi")
visible[[400]]<-c("RING")

uttered[[401]]<-c("huh","yeah")
visible[[401]]<-c("RING")

uttered[[402]]<-c("there","lots","of","toys","i","think","some","of","these","might","squeak")
visible[[402]]<-c("RING","PIG")

uttered[[403]]<-c("uh")
visible[[403]]<-c("RING","PIG")

uttered[[404]]<-c("no","mot","thought","the","piggie","might","squeak")
visible[[404]]<-c("RING","PIG")

uttered[[405]]<-c("piggie","goes","oink","oink")
visible[[405]]<-c("RING","PIG")

uttered[[406]]<-c("oink","oink")
visible[[406]]<-c("RING","PIG")

uttered[[407]]<-c("piggies","are","kind","of","noisy")
visible[[407]]<-c("RING","PIG")

uttered[[408]]<-c("they","like","to","eat","a","lot")
visible[[408]]<-c("RING","PIG")

uttered[[409]]<-c("make","lots","of","messes")
visible[[409]]<-c("RING","PIG")

uttered[[410]]<-c("make","lots","of","messes")
visible[[410]]<-c("RING","PIG")

uttered[[411]]<-c("yeah","they","sure","do")
visible[[411]]<-c("RING","HAND")

uttered[[412]]<-c("oh","that","ones","kind","of","fun")
visible[[412]]<-c("RING","HAND")

uttered[[413]]<-c("thats","a","hand")
visible[[413]]<-c("RING","HAND")

uttered[[414]]<-c("thats","a","hand")
visible[[414]]<-c("RING","HAND")

uttered[[415]]<-c("want","the","hand")
visible[[415]]<-c("RING","HAND")

uttered[[416]]<-c("okay")
visible[[416]]<-c("RING","HAND")

uttered[[417]]<-c("yeah","lots","of","things")
visible[[417]]<-c("RING","HAND")

uttered[[418]]<-c("lots","of","toys")
visible[[418]]<-c("RING","HAND")

uttered[[419]]<-c("lot","of","toys","to","play","with")
visible[[419]]<-c("RING","HAND")

uttered[[420]]<-c("we","like","to","play","we","love","to","chew","dont","we","yeah")
visible[[420]]<-c("RING","HAND")

uttered[[421]]<-c("you","got","those","teeth","that","are","going","to","come","in","any","day","now")
visible[[421]]<-c("HAND","HAT")

uttered[[422]]<-c("yeah","any","day","now","look","david","its","a","mickeymouse","hat")
visible[[422]]<-c("HAND","HAT")

uttered[[423]]<-c("look","you","wanna","where","the","hat")
visible[[423]]<-c("HAND","HAT")

uttered[[424]]<-c("oh","i","here","a","fun","noisy","toy","in","there")
visible[[424]]<-c("HAND","HAT")

uttered[[425]]<-c("yeah")
visible[[425]]<-c("HAND","HAT")

uttered[[426]]<-c("moms","got","a","hat","on","look")
visible[[426]]<-c("HAND","HAT")

uttered[[427]]<-c("thats","like","alisons","hat")
visible[[427]]<-c("HAND","HAT")

uttered[[428]]<-c("uhhuh")
visible[[428]]<-c("HAND","HAT")

uttered[[429]]<-c("is","that","a","fun","hat")
visible[[429]]<-c("HAND","HAT")

uttered[[430]]<-c("davids","got","a","baseball","hat")
visible[[430]]<-c("HAND","HAT")

uttered[[431]]<-c("do","you","hear","the","noisy","toy")
visible[[431]]<-c("HAND","DUCK")

uttered[[432]]<-c("look")
visible[[432]]<-c("HAND","DUCK")

uttered[[433]]<-c("is","that","one","fun")
visible[[433]]<-c("HAND","DUCK")

uttered[[434]]<-c("yeah")
visible[[434]]<-c("HAND","DUCK")

uttered[[435]]<-c("that","looks","like","a","duck")
visible[[435]]<-c("HAND","DUCK")

uttered[[436]]<-c("quackquack","quackquack")
visible[[436]]<-c("HAND","DUCK")

uttered[[437]]<-c("yeah","and","look","the","duckie","has","a","bowtie")
visible[[437]]<-c("HAND","DUCK")

uttered[[438]]<-c("yeah","how","about","that")
visible[[438]]<-c("HAND","DUCK")

uttered[[439]]<-c("a","bowtie")
visible[[439]]<-c("HAND","DUCK")

uttered[[440]]<-c("yeah","you","like","that","one","that","one","makes","funny","noise")
visible[[440]]<-c("HAND","DUCK")

uttered[[441]]<-c("uhuh")
visible[[441]]<-c("HAND","DUCK")

uttered[[442]]<-c("oh","does","that","taste","good")
visible[[442]]<-c("HAND","DUCK")

uttered[[443]]<-c("does","that","taste","good")
visible[[443]]<-c("HAND","DUCK")

uttered[[444]]<-c("mhmm")
visible[[444]]<-c("HAND","DUCK")

uttered[[445]]<-c("are","you","eating","that","up")
visible[[445]]<-c("HAND","DUCK")

uttered[[446]]<-c("are","you","eating","that","up")
visible[[446]]<-c("HAND","DUCK")

uttered[[447]]<-c("huh")
visible[[447]]<-c("HAND","DUCK")

uttered[[448]]<-c("can","you","make","it","wiggle")
visible[[448]]<-c("HAND","DUCK")

uttered[[449]]<-c("make","it","wiggle")
visible[[449]]<-c("HAND","DUCK")

uttered[[450]]<-c("yeah")
visible[[450]]<-c("HAND","DUCK")

uttered[[451]]<-c("yeah")
visible[[451]]<-c("HAND","DUCK")

uttered[[452]]<-c("how","about","that")
visible[[452]]<-c("HAND","DUCK")

uttered[[453]]<-c("you","playing")
visible[[453]]<-c("HAND","DUCK")

uttered[[454]]<-c("uh")
visible[[454]]<-c("HAND","DUCK")

uttered[[455]]<-c("yeah","mom","doesnt","need","noise","from","the","toys","mom","makes","plenty","of")
visible[[455]]<-c("HAND","DUCK")

uttered[[456]]<-c("you","going","to","see","how","many","of","those","you","can","get","in","that","mouth")
visible[[456]]<-c("HAND","DUCK")

uttered[[457]]<-c("mhmm","is","that","good")
visible[[457]]<-c("HAND","DUCK")

uttered[[458]]<-c("mhmm")
visible[[458]]<-c("HAND","DUCK")

uttered[[459]]<-c("want","to","play","peekaboo")
visible[[459]]<-c("HAND")

uttered[[460]]<-c("ahhah")
visible[[460]]<-c("HAND")

uttered[[461]]<-c("peekaboo")
visible[[461]]<-c("HAND")

uttered[[462]]<-c("whered","mom","go")
visible[[462]]<-c("HAND")

uttered[[463]]<-c("ahhah","peekaboo")
visible[[463]]<-c("HAND")

uttered[[464]]<-c("theres","mom")
visible[[464]]<-c("HAND")

uttered[[465]]<-c("theres","mom")
visible[[465]]<-c("HAND")

uttered[[466]]<-c("are","you","trying","to","see","what","you","can","get","all","wet","by","drooling")
visible[[466]]<-c("HAND")

uttered[[467]]<-c("yeah")
visible[[467]]<-c("HAND")

uttered[[468]]<-c("are","you","drooling")
visible[[468]]<-c("HAND")

uttered[[469]]<-c("yes")
visible[[469]]<-c("HAND")

uttered[[470]]<-c("hi")
visible[[470]]<-c("HAND")

uttered[[471]]<-c("goodness")
visible[[471]]<-c("HAND")

uttered[[472]]<-c("yeah")
visible[[472]]<-c("HAND")

uttered[[473]]<-c("if","we","had","more","books","wed","read","more","books")
visible[[473]]<-c("HAND")

uttered[[474]]<-c("because","we","like","books","dont","we")
visible[[474]]<-c("HAND")

uttered[[475]]<-c("yeah")
visible[[475]]<-c("HAND")

uttered[[476]]<-c("what","other","animals","are","there")
visible[[476]]<-c("HAND")

uttered[[477]]<-c("ahhah","theres","a","littler","pig")
visible[[477]]<-c("HAND","PIG","LAMB")

uttered[[478]]<-c("and","look","heres","a","lamb")
visible[[478]]<-c("HAND","PIG","LAMB")

uttered[[479]]<-c("baa")
visible[[479]]<-c("HAND","PIG","LAMB")

uttered[[480]]<-c("baa","says","the","lamb")
visible[[480]]<-c("HAND","PIG","LAMB")

uttered[[481]]<-c("uhhuh")
visible[[481]]<-c("HAND","PIG","LAMB")

uttered[[482]]<-c("davids","got","a","hand")
visible[[482]]<-c("HAND","PIG","LAMB")

uttered[[483]]<-c("davids","got","a","hand")
visible[[483]]<-c("HAND","PIG","LAMB")

uttered[[484]]<-c("bumpba")
visible[[484]]<-c("HAND","PIG","LAMB")

uttered[[485]]<-c("hi","sweetie")
visible[[485]]<-c("HAND","PIG","LAMB")

uttered[[486]]<-c("yeah","theres","a","lambie")
visible[[486]]<-c("HAND","PIG","LAMB")

uttered[[487]]<-c("and","a","little","piggie")
visible[[487]]<-c("HAND","PIG","LAMB")

uttered[[488]]<-c("look","lets","put","the","two","piggies","together")
visible[[488]]<-c("HAND","PIG","PIG")

uttered[[489]]<-c("this","could","be","the","mother","piggie","and","the","baby","piggie")
visible[[489]]<-c("HAND","PIG","PIG")

uttered[[490]]<-c("two","piggies")
visible[[490]]<-c("HAND","PIG","PIG")

uttered[[491]]<-c("one","two")
visible[[491]]<-c("HAND","PIG","PIG")

uttered[[492]]<-c("yeah")
visible[[492]]<-c("HAND","PIG","PIG")

uttered[[493]]<-c("does","that","taste","good")
visible[[493]]<-c("HAND","PIG","PIG")

uttered[[494]]<-c("is","that","a","good","hand")
visible[[494]]<-c("HAND","PIG","PIG")

uttered[[495]]<-c("mhmm")
visible[[495]]<-c("HAND","PIG","PIG")

uttered[[496]]<-c("uh","mhmm","yeah","thats","a","good","hand")
visible[[496]]<-c("HAND","PIG","PIG")

uttered[[497]]<-c("mhmm")
visible[[497]]<-c("HAND","PIG","PIG")

uttered[[498]]<-c("eat","it","up")
visible[[498]]<-c("HAND","PIG","PIG")

uttered[[499]]<-c("uh","it","squeaked")
visible[[499]]<-c("HAND","PIG","PIG")

uttered[[500]]<-c("did","you","hear","it")
visible[[500]]<-c("HAND","PIG","PIG")

uttered[[501]]<-c("it","squeaked","ahhah")
visible[[501]]<-c("HAND","PIG","PIG")

uttered[[502]]<-c("it","squeaked","where","you","going")
visible[[502]]<-c("HAND","PIG","PIG")

uttered[[503]]<-c("you","going","to","squirm","right","out","i","know","yeah")
visible[[503]]<-c("HAND","PIG","PIG")

uttered[[504]]<-c("can","we","sit","up","pretty")
visible[[504]]<-c("HAND","PIG","PIG")

uttered[[505]]<-c("uhhuh")
visible[[505]]<-c("HAND","PIG","PIG")

uttered[[506]]<-c("yeah")
visible[[506]]<-c("HAND","PIG","PIG")

uttered[[507]]<-c("i","know","you","you","like","to","roll","all","over","the","floor","so","thats","what","we")
visible[[507]]<-c("HAND","PIG","PIG")

uttered[[508]]<-c("yes","youre","okay","in","the","chair")
visible[[508]]<-c("HAND","PIG","PIG")

uttered[[509]]<-c("uh","i","got","a","noisy","one")
visible[[509]]<-c("HAND","DUCK")

uttered[[510]]<-c("you","want","to","hold","that","one")
visible[[510]]<-c("HAND","DUCK")

uttered[[511]]<-c("in","the","chair")
visible[[511]]<-c("HAND","DUCK")

uttered[[512]]<-c("yeah")
visible[[512]]<-c("HAND","DUCK")

uttered[[513]]<-c("i","know","youre","going","to","inch","your","way","right","out")
visible[[513]]<-c("NONE")

uttered[[514]]<-c("silly")
visible[[514]]<-c("NONE")

uttered[[515]]<-c("oh","lets","sit","back","down")
visible[[515]]<-c("NONE")

uttered[[516]]<-c("there","we","go")
visible[[516]]<-c("NONE")

uttered[[517]]<-c("oh","boy")
visible[[517]]<-c("BIRD")

uttered[[518]]<-c("how","about","back","to","bigbird")
visible[[518]]<-c("BIRD")

uttered[[519]]<-c("oh","mom","got","you","sitting","up","almost","too","straight")
visible[[519]]<-c("BIRD")

uttered[[520]]<-c("yes","uhhuh")
visible[[520]]<-c("BIRD")

uttered[[521]]<-c("here","we","go","uh","i","know")
visible[[521]]<-c("BIRD")

uttered[[522]]<-c("youre","not","much","into","sitting","up","in","that","chair","anymore")
visible[[522]]<-c("BIRD")

uttered[[523]]<-c("no")
visible[[523]]<-c("BIRD")

uttered[[524]]<-c("theres","bigbird")
visible[[524]]<-c("BIRD")

uttered[[525]]<-c("you","like","bigbird")
visible[[525]]<-c("BIRD")

uttered[[526]]<-c("theres","bigbirds","beak")
visible[[526]]<-c("BIRD")

uttered[[527]]<-c("yeah","wheres","bigbirds","eyes")
visible[[527]]<-c("BIRD")

uttered[[528]]<-c("theres","his","eyes")
visible[[528]]<-c("BIRD")

uttered[[529]]<-c("theres","his","eyes")
visible[[529]]<-c("BIRD")

uttered[[530]]<-c("bigbird","talks","to","you","doesnt","he")
visible[[530]]<-c("BIRD")

uttered[[531]]<-c("yeah")
visible[[531]]<-c("BIRD")

uttered[[532]]<-c("youre","a","drool","boy","today")
visible[[532]]<-c("BIRD")

uttered[[533]]<-c("those","teeth","must","be","wanting","to","come","in")
visible[[533]]<-c("BIRD")

uttered[[534]]<-c("yeah")
visible[[534]]<-c("BIRD")

uttered[[535]]<-c("what","sweetie")
visible[[535]]<-c("BIRD")

uttered[[536]]<-c("what","you","telling","us")
visible[[536]]<-c("BIRD")

uttered[[537]]<-c("ahhah","you","going","to","talk","to","bigbird")
visible[[537]]<-c("BIRD")

uttered[[538]]<-c("tell","bigbird","a","story")
visible[[538]]<-c("BIRD")

uttered[[539]]<-c("uhuh")
visible[[539]]<-c("BIRD")

uttered[[540]]<-c("okay")
visible[[540]]<-c("BIRD")

uttered[[541]]<-c("yeah")
visible[[541]]<-c("BIRD")

uttered[[542]]<-c("tell","him","some","more")
visible[[542]]<-c("BIRD")

uttered[[543]]<-c("tell","bigbird","more")
visible[[543]]<-c("BIRD")

uttered[[544]]<-c("yeah","youre","telling","mom")
visible[[544]]<-c("BIRD")

uttered[[545]]<-c("get","me","out","of","that","chair","i","dont","like","to","sit","up","i","like","to","lay","down")
visible[[545]]<-c("BIRD")

uttered[[546]]<-c("uhhuh")
visible[[546]]<-c("BIRD")

uttered[[547]]<-c("yeah")
visible[[547]]<-c("BIRD")

uttered[[548]]<-c("is","that","bigbird")
visible[[548]]<-c("BIRD")

uttered[[549]]<-c("do","you","like","bigbird")
visible[[549]]<-c("BIRD")

uttered[[550]]<-c("huh")
visible[[550]]<-c("BIRD")

uttered[[551]]<-c("yes")
visible[[551]]<-c("BIRD")

uttered[[552]]<-c("oh")
visible[[552]]<-c("BIRD")

uttered[[553]]<-c("you","want","to","tell","bigbird","all","sorts","of","things","arent","you")
visible[[553]]<-c("BIRD")

uttered[[554]]<-c("can","momma","see","bigbird")
visible[[554]]<-c("BIRD")

uttered[[555]]<-c("yeah","theres","bigbird")
visible[[555]]<-c("BIRD")

uttered[[556]]<-c("yeah")
visible[[556]]<-c("BIRD")

uttered[[557]]<-c("theres","bigbird")
visible[[557]]<-c("BIRD")

uttered[[558]]<-c("ahhah")
visible[[558]]<-c("BIRD")

uttered[[559]]<-c("ahhah")
visible[[559]]<-c("BIRD")

uttered[[560]]<-c("is","bigbird","getting","david")
visible[[560]]<-c("BIRD")

uttered[[561]]<-c("that","fun")
visible[[561]]<-c("BIRD")

uttered[[562]]<-c("we","have","this","at","home","you","like","that","one")
visible[[562]]<-c("BIRD","RATTLE")

uttered[[563]]<-c("the","bubbles","or","the","beads","go","spinning","around")
visible[[563]]<-c("BIRD","RATTLE")

uttered[[564]]<-c("can","you","make","them","spin")
visible[[564]]<-c("BIRD","RATTLE")

uttered[[565]]<-c("wow")
visible[[565]]<-c("BIRD","RATTLE")

uttered[[566]]<-c("you","like","bigbird","better","huh")
visible[[566]]<-c("BIRD","RATTLE")

uttered[[567]]<-c("yeah")
visible[[567]]<-c("BIRD","RATTLE")

uttered[[568]]<-c("what")
visible[[568]]<-c("BIRD","RATTLE")

uttered[[569]]<-c("hi","there")
visible[[569]]<-c("RATTLE")

uttered[[570]]<-c("hi","there")
visible[[570]]<-c("RATTLE")

uttered[[571]]<-c("oh","yeah","right","in","the","mouth")
visible[[571]]<-c("RATTLE")

uttered[[572]]<-c("it","too","big","for","the","mouth","though","is","it")
visible[[572]]<-c("RATTLE")

uttered[[573]]<-c("yeah","too","big","for","the","mouth")
visible[[573]]<-c("RATTLE")

uttered[[574]]<-c("yeah")
visible[[574]]<-c("RATTLE")

uttered[[575]]<-c("uhhuh")
visible[[575]]<-c("RATTLE")

uttered[[576]]<-c("oh","okay","which","one","do","you","want","different")
visible[[576]]<-c("RATTLE")

uttered[[577]]<-c("want","the","book","again")
visible[[577]]<-c("BOOK")

uttered[[578]]<-c("does","david","want","to","read","the","book")
visible[[578]]<-c("BOOK","EYES")

uttered[[579]]<-c("its","a","look","and","see","book")
visible[[579]]<-c("BOOK","EYES")

uttered[[580]]<-c("look","at","the","eyes","looking","back","at","you")
visible[[580]]<-c("BOOK","EYES")

uttered[[581]]<-c("ahhah")
visible[[581]]<-c("BOOK")

uttered[[582]]<-c("you","going","to","open","it")
visible[[582]]<-c("BOOK")

uttered[[583]]<-c("yeah","you","going","to","eat","it")
visible[[583]]<-c("BOOK")

uttered[[584]]<-c("lets","read","the","book","you","ready")
visible[[584]]<-c("BOOK","EYES")

uttered[[585]]<-c("look","and","see")
visible[[585]]<-c("BOOK","EYES")

uttered[[586]]<-c("ahhah","look")
visible[[586]]<-c("BOOK","EYES","BEAR")

uttered[[587]]<-c("look","at","the","big","red","nose")
visible[[587]]<-c("BOOK","EYES","BEAR")

uttered[[588]]<-c("and","the","smilie")
visible[[588]]<-c("BOOK","EYES","BEAR")

uttered[[589]]<-c("and","a","bear","with","a","bottle")
visible[[589]]<-c("BOOK","EYES","BEAR")

uttered[[590]]<-c("you","want","to","hold","it")
visible[[590]]<-c("BOOK","EYES","BEAR")

uttered[[591]]<-c("theres","david")
visible[[591]]<-c("BOOK","MIRROR","KITTY")

uttered[[592]]<-c("can","you","see","david")
visible[[592]]<-c("BOOK","MIRROR","KITTY")

uttered[[593]]<-c("look")
visible[[593]]<-c("BOOK","MIRROR","KITTY")

uttered[[594]]<-c("see","david","in","the","mirror")
visible[[594]]<-c("BOOK","MIRROR","KITTY")

uttered[[595]]<-c("yeah")
visible[[595]]<-c("BOOK","MIRROR","KITTY")

uttered[[596]]<-c("oh","yeah","it","tastes","good","doesnt")
visible[[596]]<-c("BOOK","MIRROR","KITTY")

uttered[[597]]<-c("that","book","tastes","much","better","than","it","is","to","read")
visible[[597]]<-c("BOOK","MIRROR","KITTY")

uttered[[598]]<-c("theres","a","kittycat")
visible[[598]]<-c("BOOK","KITTY","BABY")

uttered[[599]]<-c("the","kittycat","says","meow","meow")
visible[[599]]<-c("BOOK","KITTY","BABY")

uttered[[600]]<-c("yeah")
visible[[600]]<-c("BOOK","KITTY","BABY")

uttered[[601]]<-c("does","the","book","taste","good","mmm")
visible[[601]]<-c("BOOK","KITTY","BABY")

uttered[[602]]<-c("book","tastes","good")
visible[[602]]<-c("BOOK")

uttered[[603]]<-c("yeah")
visible[[603]]<-c("BOOK")

uttered[[604]]<-c("does","the","book","taste","good")
visible[[604]]<-c("BOOK")

uttered[[605]]<-c("lots","of","toys")
visible[[605]]<-c("BOOK")

uttered[[606]]<-c("lots","of","colors","and","toys")
visible[[606]]<-c("BOOK")

uttered[[607]]<-c("you","want","to","sing","some","more")
visible[[607]]<-c("BOOK")

uttered[[608]]<-c("huh","there","are","all","these","animals","around","we","could","probably","we","could","sing","old","macdonald","with","the","piggie")
visible[[608]]<-c("BOOK")

uttered[[609]]<-c("momma","never","even","showed","you")
visible[[609]]<-c("BOOK","PIG","COW")

uttered[[610]]<-c("thats","a","cow")
visible[[610]]<-c("BOOK","PIG","COW")

uttered[[611]]<-c("whats","a","cow","say")
visible[[611]]<-c("BOOK","PIG","COW")

uttered[[612]]<-c("moo")
visible[[612]]<-c("BOOK","PIG","COW")

uttered[[613]]<-c("do","we","look","at","the","moocows","when","we","drive","sometimes")
visible[[613]]<-c("BOOK","PIG","COW")

uttered[[614]]<-c("alison","tells","us","when","the","horses","are","there","and","when","the","cows","are")
visible[[614]]<-c("BOOK","PIG","COW")

uttered[[615]]<-c("huh")
visible[[615]]<-c("BOOK","PIG","COW")

uttered[[616]]<-c("did","you","drop","the","book")
visible[[616]]<-c("BOOK","PIG","COW")

uttered[[617]]<-c("you","want","the","book","back")
visible[[617]]<-c("BOOK","PIG","COW")

uttered[[618]]<-c("theres","the","book")
visible[[618]]<-c("BOOK","PIG","COW")

uttered[[619]]<-c("theres","a","moocow")
visible[[619]]<-c("BOOK","PIG","COW")

uttered[[620]]<-c("and","theres","a","piggie")
visible[[620]]<-c("BOOK","PIG","COW")

uttered[[621]]<-c("oink","oink")
visible[[621]]<-c("BOOK","PIG","COW")

uttered[[622]]<-c("oink","oink")
visible[[622]]<-c("BOOK","PIG","COW")

uttered[[623]]<-c("yeah")
visible[[623]]<-c("BOOK","PIG","COW")

