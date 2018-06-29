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

uttered[[1]]<-c("ahhah","look","we","can","read","books","david")
visible[[1]]<-c("BOOK","BIRD","RATTLE","FACE")

uttered[[2]]<-c("its","a","look","and","see","book")
visible[[2]]<-c("BOOK","BIRD","RATTLE","FACE")

uttered[[3]]<-c("the","bear","has","a","baby","bottle")
visible[[3]]<-c("BOOK","BIRD","RATTLE","FACE","BEAR")

uttered[[4]]<-c("theres","a","mirror")
visible[[4]]<-c("BOOK","BIRD","RATTLE","MIRROR","BUNNY")

uttered[[5]]<-c("ah","a","bunny")
visible[[5]]<-c("BOOK","BIRD","RATTLE","MIRROR","BUNNY")

uttered[[6]]<-c("what","do","bunnies","do")
visible[[6]]<-c("BOOK","BIRD","RATTLE","MIRROR","BUNNY")

uttered[[7]]<-c("bunnies","go","hiphop","hiphop")
visible[[7]]<-c("BOOK","BIRD","RATTLE","MIRROR","BUNNY")

uttered[[8]]<-c("do","bunnies","go","jumping","through","the","forest")
visible[[8]]<-c("BOOK","BIRD","RATTLE","MIRROR","BUNNY")

uttered[[9]]<-c("theres","a","kittycat")
visible[[9]]<-c("BOOK","BIRD","RATTLE","KITTY","BABY")

uttered[[10]]<-c("kittycats","go","meow","meow")
visible[[10]]<-c("BOOK","BIRD","RATTLE","KITTY","BABY")

uttered[[11]]<-c("the","kittycats","go","meow","meow")
visible[[11]]<-c("BOOK","BIRD","RATTLE","KITTY","BABY")

uttered[[12]]<-c("ah","and","a","baby")
visible[[12]]<-c("BOOK","BIRD","RATTLE","KITTY","BABY")

uttered[[13]]<-c("theres","a","baby","just","like","my","david")
visible[[13]]<-c("BOOK","BIRD","RATTLE","KITTY","BABY")

uttered[[14]]<-c("a","baby")
visible[[14]]<-c("BOOK","BIRD","RATTLE","KITTY","BABY")

uttered[[15]]<-c("thats","a","nice","book")
visible[[15]]<-c("BOOK","BIRD","RATTLE","KITTY","BABY")

uttered[[16]]<-c("heres","bigbird")
visible[[16]]<-c("BIRD","RATTLE")

uttered[[17]]<-c("we","watch","big","bird","dont","we")
visible[[17]]<-c("BIRD","RATTLE")

uttered[[18]]<-c("because","alison","likes","bigbird")
visible[[18]]<-c("BIRD","RATTLE")

uttered[[19]]<-c("she","learns","about","her","alphabet","with","bigbird")
visible[[19]]<-c("BIRD","RATTLE")

uttered[[20]]<-c("ah","want","to","play","with","bigbird")
visible[[20]]<-c("BIRD","RATTLE")

uttered[[21]]<-c("theres","bigbird")
visible[[21]]<-c("BIRD","RATTLE")

uttered[[22]]<-c("should","bigbird","sing","his","abc")
visible[[22]]<-c("BIRD","RATTLE")

uttered[[23]]<-c("bigbird")
visible[[23]]<-c("BIRD","RATTLE")

uttered[[24]]<-c("okay","you","want","to","hold","bigbird")
visible[[24]]<-c("BIRD","RATTLE")

uttered[[25]]<-c("yeah","bigbirds","eyes")
visible[[25]]<-c("BIRD","RATTLE")

uttered[[26]]<-c("bigbirds","soft")
visible[[26]]<-c("BIRD","RATTLE")

uttered[[27]]<-c("mmm","can","momma","hug","bigbird","too")
visible[[27]]<-c("BIRD")

uttered[[28]]<-c("momma","hug","bigbird","aw")
visible[[28]]<-c("BIRD")

uttered[[29]]<-c("can","david","hug","bigbird")
visible[[29]]<-c("BIRD")

uttered[[30]]<-c("ah","blue","rings")
visible[[30]]<-c("BIRD","RING")

uttered[[31]]<-c("and","green","rings")
visible[[31]]<-c("BIRD","RING")

uttered[[32]]<-c("and","yellow","rings")
visible[[32]]<-c("BIRD","RING")

uttered[[33]]<-c("ah","orange","rings")
visible[[33]]<-c("BIRD","RING")

uttered[[34]]<-c("ah","bigbird")
visible[[34]]<-c("BIRD","RING")

uttered[[35]]<-c("do","you","want","to","hold","the","rings")
visible[[35]]<-c("BIRD","RING")

uttered[[36]]<-c("you","want","ta","play","with","the","rings")
visible[[36]]<-c("BIRD","RING")

uttered[[37]]<-c("no","mot","thought","the","piggie","might","squeak")
visible[[37]]<-c("RING","PIG")

uttered[[38]]<-c("piggie","goes","oink","oink")
visible[[38]]<-c("RING","PIG")

uttered[[39]]<-c("piggies","are","kind","of","noisy")
visible[[39]]<-c("RING","PIG")

uttered[[40]]<-c("thats","a","hand")
visible[[40]]<-c("RING","HAND")

uttered[[41]]<-c("thats","a","hand")
visible[[41]]<-c("RING","HAND")

uttered[[42]]<-c("want","the","hand")
visible[[42]]<-c("RING","HAND")

uttered[[43]]<-c("yeah","any","day","now","look","david","its","a","mickeymouse","hat")
visible[[43]]<-c("HAND","HAT")

uttered[[44]]<-c("look","you","wanna","where","the","hat")
visible[[44]]<-c("HAND","HAT")

uttered[[45]]<-c("moms","got","a","hat","on","look")
visible[[45]]<-c("HAND","HAT")

uttered[[46]]<-c("thats","like","alisons","hat")
visible[[46]]<-c("HAND","HAT")

uttered[[47]]<-c("is","that","a","fun","hat")
visible[[47]]<-c("HAND","HAT")

uttered[[48]]<-c("davids","got","a","baseball","hat")
visible[[48]]<-c("HAND","HAT")

uttered[[49]]<-c("that","looks","like","a","duck")
visible[[49]]<-c("HAND","DUCK")

uttered[[50]]<-c("yeah","and","look","the","duckie","has","a","bowtie")
visible[[50]]<-c("HAND","DUCK")

uttered[[51]]<-c("ahhah","theres","a","littler","pig")
visible[[51]]<-c("HAND","PIG","LAMB")

uttered[[52]]<-c("and","look","heres","a","lamb")
visible[[52]]<-c("HAND","PIG","LAMB")

uttered[[53]]<-c("baa","says","the","lamb")
visible[[53]]<-c("HAND","PIG","LAMB")

uttered[[54]]<-c("davids","got","a","hand")
visible[[54]]<-c("HAND","PIG","LAMB")

uttered[[55]]<-c("davids","got","a","hand")
visible[[55]]<-c("HAND","PIG","LAMB")

uttered[[56]]<-c("yeah","theres","a","lambie")
visible[[56]]<-c("HAND","PIG","LAMB")

uttered[[57]]<-c("and","a","little","piggie")
visible[[57]]<-c("HAND","PIG","LAMB")

uttered[[58]]<-c("look","lets","put","the","two","piggies","together")
visible[[58]]<-c("HAND","PIG","PIG")

uttered[[59]]<-c("this","could","be","the","mother","piggie","and","the","baby","piggie")
visible[[59]]<-c("HAND","PIG","PIG")

uttered[[60]]<-c("two","piggies")
visible[[60]]<-c("HAND","PIG","PIG")

uttered[[61]]<-c("is","that","a","good","hand")
visible[[61]]<-c("HAND","PIG","PIG")

uttered[[62]]<-c("uh","mhmm","yeah","thats","a","good","hand")
visible[[62]]<-c("HAND","PIG","PIG")

uttered[[63]]<-c("how","about","back","to","bigbird")
visible[[63]]<-c("BIRD")

uttered[[64]]<-c("theres","bigbird")
visible[[64]]<-c("BIRD")

uttered[[65]]<-c("you","like","bigbird")
visible[[65]]<-c("BIRD")

uttered[[66]]<-c("theres","bigbirds","beak")
visible[[66]]<-c("BIRD")

uttered[[67]]<-c("yeah","wheres","bigbirds","eyes")
visible[[67]]<-c("BIRD")

uttered[[68]]<-c("bigbird","talks","to","you","doesnt","he")
visible[[68]]<-c("BIRD")

uttered[[69]]<-c("ahhah","you","going","to","talk","to","bigbird")
visible[[69]]<-c("BIRD")

uttered[[70]]<-c("tell","bigbird","a","story")
visible[[70]]<-c("BIRD")

uttered[[71]]<-c("tell","bigbird","more")
visible[[71]]<-c("BIRD")

uttered[[72]]<-c("is","that","bigbird")
visible[[72]]<-c("BIRD")

uttered[[73]]<-c("do","you","like","bigbird")
visible[[73]]<-c("BIRD")

uttered[[74]]<-c("you","want","to","tell","bigbird","all","sorts","of","things","arent","you")
visible[[74]]<-c("BIRD")

uttered[[75]]<-c("can","momma","see","bigbird")
visible[[75]]<-c("BIRD")

uttered[[76]]<-c("yeah","theres","bigbird")
visible[[76]]<-c("BIRD")

uttered[[77]]<-c("theres","bigbird")
visible[[77]]<-c("BIRD")

uttered[[78]]<-c("is","bigbird","getting","david")
visible[[78]]<-c("BIRD")

uttered[[79]]<-c("you","like","bigbird","better","huh")
visible[[79]]<-c("BIRD","RATTLE")

uttered[[80]]<-c("want","the","book","again")
visible[[80]]<-c("BOOK")

uttered[[81]]<-c("does","david","want","to","read","the","book")
visible[[81]]<-c("BOOK","EYES")

uttered[[82]]<-c("its","a","look","and","see","book")
visible[[82]]<-c("BOOK","EYES")

uttered[[83]]<-c("look","at","the","eyes","looking","back","at","you")
visible[[83]]<-c("BOOK","EYES")

uttered[[84]]<-c("lets","read","the","book","you","ready")
visible[[84]]<-c("BOOK","EYES")

uttered[[85]]<-c("and","a","bear","with","a","bottle")
visible[[85]]<-c("BOOK","EYES","BEAR")

uttered[[86]]<-c("see","david","in","the","mirror")
visible[[86]]<-c("BOOK","MIRROR","KITTY")

uttered[[87]]<-c("that","book","tastes","much","better","than","it","is","to","read")
visible[[87]]<-c("BOOK","MIRROR","KITTY")

uttered[[88]]<-c("theres","a","kittycat")
visible[[88]]<-c("BOOK","KITTY","BABY")

uttered[[89]]<-c("the","kittycat","says","meow","meow")
visible[[89]]<-c("BOOK","KITTY","BABY")

uttered[[90]]<-c("book","tastes","good")
visible[[90]]<-c("BOOK")

uttered[[91]]<-c("does","the","book","taste","good")
visible[[91]]<-c("BOOK")

uttered[[92]]<-c("thats","a","cow")
visible[[92]]<-c("BOOK","PIG","COW")

uttered[[93]]<-c("whats","a","cow","say")
visible[[93]]<-c("BOOK","PIG","COW")

uttered[[94]]<-c("do","we","look","at","the","moocows","when","we","drive","sometimes")
visible[[94]]<-c("BOOK","PIG","COW")

uttered[[95]]<-c("alison","tells","us","when","the","horses","are","there","and","when","the","cows","are")
visible[[95]]<-c("BOOK","PIG","COW")

uttered[[96]]<-c("did","you","drop","the","book")
visible[[96]]<-c("BOOK","PIG","COW")

uttered[[97]]<-c("you","want","the","book","back")
visible[[97]]<-c("BOOK","PIG","COW")

uttered[[98]]<-c("theres","the","book")
visible[[98]]<-c("BOOK","PIG","COW")

uttered[[99]]<-c("theres","a","moocow")
visible[[99]]<-c("BOOK","PIG","COW")

uttered[[100]]<-c("and","theres","a","piggie")
visible[[100]]<-c("BOOK","PIG","COW")

uttered[[101]]<-c("you","want","to","do","the","rattle","ahhah")
visible[[101]]<-c("RATTLE")

uttered[[102]]<-c("look","at","the","book")
visible[[102]]<-c("RATTLE","BOOK")

uttered[[103]]<-c("whats","that","bear","have")
visible[[103]]<-c("RATTLE","BOOK","EYES","BEAR")

uttered[[104]]<-c("is","that","a","bunnyrabbit")
visible[[104]]<-c("RATTLE","BOOK","MIRROR","BUNNY")

uttered[[105]]<-c("is","that","a","bunnyrabbit")
visible[[105]]<-c("RATTLE","BOOK","MIRROR","BUNNY")

uttered[[106]]<-c("huh","is","that","a","big","bunnyrabbit")
visible[[106]]<-c("RATTLE","BOOK","MIRROR","BUNNY")

uttered[[107]]<-c("whats","the","kitty")
visible[[107]]<-c("RATTLE","BOOK","BABY","KITTY")

uttered[[108]]<-c("ahhah","oh","thats","a","little","sheep")
visible[[108]]<-c("SHEEP")

uttered[[109]]<-c("you","want","the","little","sheep")
visible[[109]]<-c("SHEEP")

uttered[[110]]<-c("you","want","the","sheep")
visible[[110]]<-c("SHEEP")

uttered[[111]]<-c("you","want","to","get","the","little","sheep")
visible[[111]]<-c("SHEEP")

uttered[[112]]<-c("can","you","get","the","sheep")
visible[[112]]<-c("SHEEP")

uttered[[113]]<-c("thats","the","moocow")
visible[[113]]<-c("COW")

uttered[[114]]<-c("the","moocow","will","get","you")
visible[[114]]<-c("COW")

uttered[[115]]<-c("the","moocow","will","get","you")
visible[[115]]<-c("COW")

uttered[[116]]<-c("its","a","pig")
visible[[116]]<-c("PIG")

uttered[[117]]<-c("its","a","pig")
visible[[117]]<-c("PIG")

uttered[[118]]<-c("is","that","a","big","bird")
visible[[118]]<-c("RATTLE","DUCK")

uttered[[119]]<-c("look","over","here","see","the","birdie")
visible[[119]]<-c("RATTLE","DUCK")

uttered[[120]]<-c("see","the","birdie")
visible[[120]]<-c("RATTLE","DUCK")

uttered[[121]]<-c("you","want","to","hold","the","bird","you","want","mot","to","hold","this")
visible[[121]]<-c("RATTLE","DUCK")

uttered[[122]]<-c("you","want","to","hold","the","bird","oh","hes","a","funny","bird","isnt")
visible[[122]]<-c("RATTLE","DUCK")

uttered[[123]]<-c("lets","see","is","he","a","birdie","that","tips")
visible[[123]]<-c("RATTLE","DUCK")

uttered[[124]]<-c("oh","look","hes","a","rolypoly","bird")
visible[[124]]<-c("RATTLE","DUCK")

uttered[[125]]<-c("heres","the","moocow")
visible[[125]]<-c("RATTLE","COW")

uttered[[126]]<-c("heres","the","moocow")
visible[[126]]<-c("RATTLE","PIG","COW")

uttered[[127]]<-c("heres","moocow")
visible[[127]]<-c("RATTLE","PIG","COW")

uttered[[128]]<-c("oh","we","can","put","the","pig","over","here")
visible[[128]]<-c("RATTLE","DUCK","PIG","COW")

uttered[[129]]<-c("are","you","going","to","hit","the","pig")
visible[[129]]<-c("RATTLE","PIG","COW")

uttered[[130]]<-c("oh","are","you","going","to","knock","the","pig","over")
visible[[130]]<-c("RATTLE","PIG","COW")

uttered[[131]]<-c("dont","knock","the","pig","over")
visible[[131]]<-c("RATTLE","PIG","COW")

uttered[[132]]<-c("oh","there","went","the","pig")
visible[[132]]<-c("RATTLE","PIG")

uttered[[133]]<-c("there","went","the","cow")
visible[[133]]<-c("RATTLE","COW")

uttered[[134]]<-c("you","want","to","hold","the","pig")
visible[[134]]<-c("RATTLE","PIG","COW")

uttered[[135]]<-c("whats","the","pig","say")
visible[[135]]<-c("RATTLE","PIG","COW")

uttered[[136]]<-c("you","got","the","pig")
visible[[136]]<-c("RATTLE","PIG","COW")

uttered[[137]]<-c("get","the","piggie")
visible[[137]]<-c("PIG","COW")

uttered[[138]]<-c("get","the","piggie")
visible[[138]]<-c("PIG","COW")

uttered[[139]]<-c("she","has","the","big","rings")
visible[[139]]<-c("PIG","COW","RING")

uttered[[140]]<-c("maybe","the","pig")
visible[[140]]<-c("PIG","RING")

uttered[[141]]<-c("the","pig")
visible[[141]]<-c("PIG","RING")

uttered[[142]]<-c("put","the","pig","in","there")
visible[[142]]<-c("PIG","RING")

uttered[[143]]<-c("can","you","put","it","on","the","ring")
visible[[143]]<-c("RING")

uttered[[144]]<-c("can","you","put","it","on","the","ring")
visible[[144]]<-c("RING")

uttered[[145]]<-c("let","me","see","you","put","it","try","to","put","it","on","the","ring")
visible[[145]]<-c("RING")

uttered[[146]]<-c("oh","do","you","want","that","ring","back")
visible[[146]]<-c("RING")

uttered[[147]]<-c("you","took","my","ring","mot")
visible[[147]]<-c("RING")

uttered[[148]]<-c("what","does","mot","look","like","with","the","hat","on")
visible[[148]]<-c("RING","HAT")

uttered[[149]]<-c("do","i","look","pretty","good","with","the","hat","on")
visible[[149]]<-c("RING","HAT")

uttered[[150]]<-c("whos","this","on","the","hat")
visible[[150]]<-c("RING","HAT")

uttered[[151]]<-c("oh","get","that","ring")
visible[[151]]<-c("RING","HAT")

uttered[[152]]<-c("get","that","ring")
visible[[152]]<-c("RING","HAT")

uttered[[153]]<-c("reach","for","the","ring")
visible[[153]]<-c("RING","HAT")

uttered[[154]]<-c("heres","the","birdie")
visible[[154]]<-c("RING","DUCK")

uttered[[155]]<-c("here","the","birdie")
visible[[155]]<-c("RING","DUCK")

uttered[[156]]<-c("does","the","bird","go","up")
visible[[156]]<-c("RING","DUCK")

