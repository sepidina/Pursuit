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

uttered[[1]]<-c("alison","tells","us","when","the","horses","are","there","and","when","the","cows","are")
visible[[1]]<-c("BOOK","PIG","COW")

uttered[[2]]<-c("theres","a","baby","just","like","my","david")
visible[[2]]<-c("BOOK","BIRD","RATTLE","KITTY","BABY")

uttered[[3]]<-c("do","bunnies","go","jumping","through","the","forest")
visible[[3]]<-c("BOOK","BIRD","RATTLE","MIRROR","BUNNY")

uttered[[4]]<-c("oh","we","can","put","the","pig","over","here")
visible[[4]]<-c("RATTLE","DUCK","PIG","COW")

uttered[[5]]<-c("do","we","look","at","the","moocows","when","we","drive","sometimes")
visible[[5]]<-c("BOOK","PIG","COW")

uttered[[6]]<-c("that","book","tastes","much","better","than","it","is","to","read")
visible[[6]]<-c("BOOK","MIRROR","KITTY")

uttered[[7]]<-c("this","could","be","the","mother","piggie","and","the","baby","piggie")
visible[[7]]<-c("HAND","PIG","PIG")

uttered[[8]]<-c("the","bear","has","a","baby","bottle")
visible[[8]]<-c("BOOK","BIRD","RATTLE","FACE","BEAR")

uttered[[9]]<-c("ahhah","look","we","can","read","books","david")
visible[[9]]<-c("BOOK","BIRD","RATTLE","FACE")

uttered[[10]]<-c("oh","are","you","going","to","knock","the","pig","over")
visible[[10]]<-c("RATTLE","PIG","COW")

uttered[[11]]<-c("the","kittycats","go","meow","meow")
visible[[11]]<-c("BOOK","BIRD","RATTLE","KITTY","BABY")

uttered[[12]]<-c("you","want","to","hold","the","bird","oh","hes","a","funny","bird","isnt")
visible[[12]]<-c("RATTLE","DUCK")

uttered[[13]]<-c("you","want","to","hold","the","bird","you","want","mot","to","hold","this")
visible[[13]]<-c("RATTLE","DUCK")

uttered[[14]]<-c("huh","is","that","a","big","bunnyrabbit")
visible[[14]]<-c("RATTLE","BOOK","MIRROR","BUNNY")

uttered[[15]]<-c("its","a","look","and","see","book")
visible[[15]]<-c("BOOK","BIRD","RATTLE","FACE")

uttered[[16]]<-c("are","you","going","to","hit","the","pig")
visible[[16]]<-c("RATTLE","PIG","COW")

uttered[[17]]<-c("uh","mhmm","yeah","thats","a","good","hand")
visible[[17]]<-c("HAND","PIG","PIG")

uttered[[18]]<-c("look","lets","put","the","two","piggies","together")
visible[[18]]<-c("HAND","PIG","PIG")

uttered[[19]]<-c("yeah","any","day","now","look","david","its","a","mickeymouse","hat")
visible[[19]]<-c("HAND","HAT")

uttered[[20]]<-c("thats","a","nice","book")
visible[[20]]<-c("BOOK","BIRD","RATTLE","KITTY","BABY")

uttered[[21]]<-c("ah","and","a","baby")
visible[[21]]<-c("BOOK","BIRD","RATTLE","KITTY","BABY")

uttered[[22]]<-c("kittycats","go","meow","meow")
visible[[22]]<-c("BOOK","BIRD","RATTLE","KITTY","BABY")

uttered[[23]]<-c("bunnies","go","hiphop","hiphop")
visible[[23]]<-c("BOOK","BIRD","RATTLE","MIRROR","BUNNY")

uttered[[24]]<-c("what","do","bunnies","do")
visible[[24]]<-c("BOOK","BIRD","RATTLE","MIRROR","BUNNY")

uttered[[25]]<-c("do","i","look","pretty","good","with","the","hat","on")
visible[[25]]<-c("RING","HAT")

uttered[[26]]<-c("what","does","mot","look","like","with","the","hat","on")
visible[[26]]<-c("RING","HAT")

uttered[[27]]<-c("you","want","to","hold","the","pig")
visible[[27]]<-c("RATTLE","PIG","COW")

uttered[[28]]<-c("and","a","bear","with","a","bottle")
visible[[28]]<-c("BOOK","EYES","BEAR")

uttered[[29]]<-c("lets","see","is","he","a","birdie","that","tips")
visible[[29]]<-c("RATTLE","DUCK")

uttered[[30]]<-c("is","that","a","bunnyrabbit")
visible[[30]]<-c("RATTLE","BOOK","MIRROR","BUNNY")

uttered[[31]]<-c("is","that","a","bunnyrabbit")
visible[[31]]<-c("RATTLE","BOOK","MIRROR","BUNNY")

uttered[[32]]<-c("whats","that","bear","have")
visible[[32]]<-c("RATTLE","BOOK","EYES","BEAR")

uttered[[33]]<-c("look","at","the","eyes","looking","back","at","you")
visible[[33]]<-c("BOOK","EYES")

uttered[[34]]<-c("yeah","and","look","the","duckie","has","a","bowtie")
visible[[34]]<-c("HAND","DUCK")

uttered[[35]]<-c("she","has","the","big","rings")
visible[[35]]<-c("PIG","COW","RING")

uttered[[36]]<-c("dont","knock","the","pig","over")
visible[[36]]<-c("RATTLE","PIG","COW")

uttered[[37]]<-c("you","want","the","book","back")
visible[[37]]<-c("BOOK","PIG","COW")

uttered[[38]]<-c("did","you","drop","the","book")
visible[[38]]<-c("BOOK","PIG","COW")

uttered[[39]]<-c("the","kittycat","says","meow","meow")
visible[[39]]<-c("BOOK","KITTY","BABY")

uttered[[40]]<-c("see","david","in","the","mirror")
visible[[40]]<-c("BOOK","MIRROR","KITTY")

uttered[[41]]<-c("is","that","a","good","hand")
visible[[41]]<-c("HAND","PIG","PIG")

uttered[[42]]<-c("and","look","heres","a","lamb")
visible[[42]]<-c("HAND","PIG","LAMB")

uttered[[43]]<-c("ahhah","theres","a","littler","pig")
visible[[43]]<-c("HAND","PIG","LAMB")

uttered[[44]]<-c("theres","a","kittycat")
visible[[44]]<-c("BOOK","BIRD","RATTLE","KITTY","BABY")

uttered[[45]]<-c("ah","a","bunny")
visible[[45]]<-c("BOOK","BIRD","RATTLE","MIRROR","BUNNY")

uttered[[46]]<-c("theres","a","mirror")
visible[[46]]<-c("BOOK","BIRD","RATTLE","MIRROR","BUNNY")

uttered[[47]]<-c("does","david","want","to","read","the","book")
visible[[47]]<-c("BOOK","EYES")

uttered[[48]]<-c("no","mot","thought","the","piggie","might","squeak")
visible[[48]]<-c("RING","PIG")

uttered[[49]]<-c("you","want","ta","play","with","the","rings")
visible[[49]]<-c("BIRD","RING")

uttered[[50]]<-c("do","you","want","to","hold","the","rings")
visible[[50]]<-c("BIRD","RING")

uttered[[51]]<-c("she","learns","about","her","alphabet","with","bigbird")
visible[[51]]<-c("BIRD","RATTLE")

uttered[[52]]<-c("let","me","see","you","put","it","try","to","put","it","on","the","ring")
visible[[52]]<-c("RING")

uttered[[53]]<-c("you","got","the","pig")
visible[[53]]<-c("RATTLE","PIG","COW")

uttered[[54]]<-c("whats","the","pig","say")
visible[[54]]<-c("RATTLE","PIG","COW")

uttered[[55]]<-c("oh","look","hes","a","rolypoly","bird")
visible[[55]]<-c("RATTLE","DUCK")

uttered[[56]]<-c("look","over","here","see","the","birdie")
visible[[56]]<-c("RATTLE","DUCK")

uttered[[57]]<-c("whats","the","kitty")
visible[[57]]<-c("RATTLE","BOOK","BABY","KITTY")

uttered[[58]]<-c("and","theres","a","piggie")
visible[[58]]<-c("BOOK","PIG","COW")

uttered[[59]]<-c("whats","a","cow","say")
visible[[59]]<-c("BOOK","PIG","COW")

uttered[[60]]<-c("lets","read","the","book","you","ready")
visible[[60]]<-c("BOOK","EYES")

uttered[[61]]<-c("its","a","look","and","see","book")
visible[[61]]<-c("BOOK","EYES")

uttered[[62]]<-c("and","a","little","piggie")
visible[[62]]<-c("HAND","PIG","LAMB")

uttered[[63]]<-c("yeah","theres","a","lambie")
visible[[63]]<-c("HAND","PIG","LAMB")

uttered[[64]]<-c("davids","got","a","hand")
visible[[64]]<-c("HAND","PIG","LAMB")

uttered[[65]]<-c("davids","got","a","hand")
visible[[65]]<-c("HAND","PIG","LAMB")

uttered[[66]]<-c("baa","says","the","lamb")
visible[[66]]<-c("HAND","PIG","LAMB")

uttered[[67]]<-c("moms","got","a","hat","on","look")
visible[[67]]<-c("HAND","HAT")

uttered[[68]]<-c("look","you","wanna","where","the","hat")
visible[[68]]<-c("HAND","HAT")

uttered[[69]]<-c("okay","you","want","to","hold","bigbird")
visible[[69]]<-c("BIRD","RATTLE")

uttered[[70]]<-c("ah","want","to","play","with","bigbird")
visible[[70]]<-c("BIRD","RATTLE")

uttered[[71]]<-c("we","watch","big","bird","dont","we")
visible[[71]]<-c("BIRD","RATTLE")

uttered[[72]]<-c("you","want","to","tell","bigbird","all","sorts","of","things","arent","you")
visible[[72]]<-c("BIRD")

uttered[[73]]<-c("does","the","bird","go","up")
visible[[73]]<-c("RING","DUCK")

uttered[[74]]<-c("whos","this","on","the","hat")
visible[[74]]<-c("RING","HAT")

uttered[[75]]<-c("put","the","pig","in","there")
visible[[75]]<-c("PIG","RING")

uttered[[76]]<-c("oh","there","went","the","pig")
visible[[76]]<-c("RATTLE","PIG")

uttered[[77]]<-c("is","that","a","big","bird")
visible[[77]]<-c("RATTLE","DUCK")

uttered[[78]]<-c("you","like","bigbird","better","huh")
visible[[78]]<-c("BIRD","RATTLE")

uttered[[79]]<-c("that","looks","like","a","duck")
visible[[79]]<-c("HAND","DUCK")

uttered[[80]]<-c("davids","got","a","baseball","hat")
visible[[80]]<-c("HAND","HAT")

uttered[[81]]<-c("is","that","a","fun","hat")
visible[[81]]<-c("HAND","HAT")

uttered[[82]]<-c("piggies","are","kind","of","noisy")
visible[[82]]<-c("RING","PIG")

uttered[[83]]<-c("should","bigbird","sing","his","abc")
visible[[83]]<-c("BIRD","RATTLE")

uttered[[84]]<-c("a","baby")
visible[[84]]<-c("BOOK","BIRD","RATTLE","KITTY","BABY")

uttered[[85]]<-c("heres","the","moocow")
visible[[85]]<-c("RATTLE","PIG","COW")

uttered[[86]]<-c("theres","a","moocow")
visible[[86]]<-c("BOOK","PIG","COW")

uttered[[87]]<-c("theres","the","book")
visible[[87]]<-c("BOOK","PIG","COW")

uttered[[88]]<-c("thats","a","cow")
visible[[88]]<-c("BOOK","PIG","COW")

uttered[[89]]<-c("theres","a","kittycat")
visible[[89]]<-c("BOOK","KITTY","BABY")

uttered[[90]]<-c("reach","for","the","ring")
visible[[90]]<-c("RING","HAT")

uttered[[91]]<-c("oh","get","that","ring")
visible[[91]]<-c("RING","HAT")

uttered[[92]]<-c("there","went","the","cow")
visible[[92]]<-c("RATTLE","COW")

uttered[[93]]<-c("look","at","the","book")
visible[[93]]<-c("RATTLE","BOOK")

uttered[[94]]<-c("thats","like","alisons","hat")
visible[[94]]<-c("HAND","HAT")

uttered[[95]]<-c("piggie","goes","oink","oink")
visible[[95]]<-c("RING","PIG")

uttered[[96]]<-c("because","alison","likes","bigbird")
visible[[96]]<-c("BIRD","RATTLE")

uttered[[97]]<-c("oh","do","you","want","that","ring","back")
visible[[97]]<-c("RING")

uttered[[98]]<-c("can","you","put","it","on","the","ring")
visible[[98]]<-c("RING")

uttered[[99]]<-c("can","you","put","it","on","the","ring")
visible[[99]]<-c("RING")

uttered[[100]]<-c("you","want","to","get","the","little","sheep")
visible[[100]]<-c("SHEEP")

uttered[[101]]<-c("you","want","to","do","the","rattle","ahhah")
visible[[101]]<-c("RATTLE")

uttered[[102]]<-c("ahhah","you","going","to","talk","to","bigbird")
visible[[102]]<-c("BIRD")

uttered[[103]]<-c("here","the","birdie")
visible[[103]]<-c("RING","DUCK")

uttered[[104]]<-c("heres","the","birdie")
visible[[104]]<-c("RING","DUCK")

uttered[[105]]<-c("get","that","ring")
visible[[105]]<-c("RING","HAT")

uttered[[106]]<-c("maybe","the","pig")
visible[[106]]<-c("PIG","RING")

uttered[[107]]<-c("get","the","piggie")
visible[[107]]<-c("PIG","COW")

uttered[[108]]<-c("get","the","piggie")
visible[[108]]<-c("PIG","COW")

uttered[[109]]<-c("heres","moocow")
visible[[109]]<-c("RATTLE","PIG","COW")

uttered[[110]]<-c("heres","the","moocow")
visible[[110]]<-c("RATTLE","COW")

uttered[[111]]<-c("see","the","birdie")
visible[[111]]<-c("RATTLE","DUCK")

uttered[[112]]<-c("ahhah","oh","thats","a","little","sheep")
visible[[112]]<-c("SHEEP")

uttered[[113]]<-c("bigbird","talks","to","you","doesnt","he")
visible[[113]]<-c("BIRD")

uttered[[114]]<-c("two","piggies")
visible[[114]]<-c("HAND","PIG","PIG")

uttered[[115]]<-c("want","the","hand")
visible[[115]]<-c("BIRD","RING")

uttered[[116]]<-c("thats","a","hand")
visible[[116]]<-c("BIRD","RING")

uttered[[117]]<-c("thats","a","hand")
visible[[117]]<-c("BIRD","RING")

uttered[[118]]<-c("ah","orange","rings")
visible[[118]]<-c("BIRD","RING")

uttered[[119]]<-c("and","yellow","rings")
visible[[119]]<-c("RING","HAND")

uttered[[120]]<-c("and","green","rings")
visible[[120]]<-c("RING","HAND")

uttered[[121]]<-c("ah","blue","rings")
visible[[121]]<-c("RING","HAND")

uttered[[122]]<-c("mmm","can","momma","hug","bigbird","too")
visible[[122]]<-c("BIRD")

uttered[[123]]<-c("yeah","bigbirds","eyes")
visible[[123]]<-c("BIRD","RATTLE")

uttered[[124]]<-c("you","took","my","ring","mot")
visible[[124]]<-c("RING")

uttered[[125]]<-c("the","moocow","will","get","you")
visible[[125]]<-c("COW")

uttered[[126]]<-c("the","moocow","will","get","you")
visible[[126]]<-c("COW")

uttered[[127]]<-c("can","you","get","the","sheep")
visible[[127]]<-c("SHEEP")

uttered[[128]]<-c("you","want","the","little","sheep")
visible[[128]]<-c("SHEEP")

uttered[[129]]<-c("does","the","book","taste","good")
visible[[129]]<-c("BOOK")

uttered[[130]]<-c("how","about","back","to","bigbird")
visible[[130]]<-c("BIRD")

uttered[[131]]<-c("the","pig")
visible[[131]]<-c("PIG","RING")

uttered[[132]]<-c("you","want","the","sheep")
visible[[132]]<-c("SHEEP")

uttered[[133]]<-c("want","the","book","again")
visible[[133]]<-c("BOOK")

uttered[[134]]<-c("is","bigbird","getting","david")
visible[[134]]<-c("BIRD")

uttered[[135]]<-c("can","momma","see","bigbird")
visible[[135]]<-c("BIRD")

uttered[[136]]<-c("do","you","like","bigbird")
visible[[136]]<-c("BIRD")

uttered[[137]]<-c("tell","bigbird","a","story")
visible[[137]]<-c("BIRD")

uttered[[138]]<-c("yeah","wheres","bigbirds","eyes")
visible[[138]]<-c("BIRD")

uttered[[139]]<-c("ah","bigbird")
visible[[139]]<-c("BIRD","RING")

uttered[[140]]<-c("can","david","hug","bigbird")
visible[[140]]<-c("BIRD")

uttered[[141]]<-c("momma","hug","bigbird","aw")
visible[[141]]<-c("BIRD")

uttered[[142]]<-c("bigbirds","soft")
visible[[142]]<-c("BIRD","RATTLE")

uttered[[143]]<-c("theres","bigbird")
visible[[143]]<-c("BIRD","RATTLE")

uttered[[144]]<-c("heres","bigbird")
visible[[144]]<-c("BIRD","RATTLE")

uttered[[145]]<-c("its","a","pig")
visible[[145]]<-c("PIG")

uttered[[146]]<-c("its","a","pig")
visible[[146]]<-c("PIG")

uttered[[147]]<-c("thats","the","moocow")
visible[[147]]<-c("COW")

uttered[[148]]<-c("book","tastes","good")
visible[[148]]<-c("BOOK")

uttered[[149]]<-c("yeah","theres","bigbird")
visible[[149]]<-c("BIRD")

uttered[[150]]<-c("is","that","bigbird")
visible[[150]]<-c("BIRD")

uttered[[151]]<-c("tell","bigbird","more")
visible[[151]]<-c("BIRD")

uttered[[152]]<-c("theres","bigbirds","beak")
visible[[152]]<-c("BIRD")

uttered[[153]]<-c("you","like","bigbird")
visible[[153]]<-c("BIRD")

uttered[[154]]<-c("theres","bigbird")
visible[[154]]<-c("BIRD")

uttered[[155]]<-c("theres","bigbird")
visible[[155]]<-c("BIRD")

uttered[[156]]<-c("bigbird")
visible[[156]]<-c("BIRD","RATTLE")

