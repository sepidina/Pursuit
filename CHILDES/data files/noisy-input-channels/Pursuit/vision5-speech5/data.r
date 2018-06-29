
uttered<-list(NULL)
visible<-list(NULL)

gold<-function(x){
  if(x=="bowl"){return("BOWL")}
  if(x=="cup"){return("CUP")}
  if(x=="knife"){return("KNIFE")}
  if(x=="shampoo"){return("SHAMPOO")}
  if(x=="firstaid"){return("FIRSTAID")}
  if(x=="saucepan"){return("SAUCEPAN")}
  if(x=="wheel"){return("WHEEL")}
  if(x=="gamehandle"){return("GAMEHANDLE")}
  if(x=="sharpiebox"){return("SHARPIEBOX")}
  if(x=="barrel"){return("BARREL")}
  if(x=="plate"){return("PLATE")}
  else{return("NULL")}
}

goldlength<-11

uttered[[1]]<-c("bowl","next","to","cup")
visible[[1]]<-c("BOWL","CUP","KNIFE")

uttered[[2]]<-c("bowl","next","to","cup")
visible[[2]]<-c("BOWL","CUP")

uttered[[3]]<-c("look","bowl")
visible[[3]]<-c("BOWL","KNIFE")

uttered[[4]]<-c("cup","next","to","knife")
visible[[4]]<-c("BOWL","CUP","KNIFE")

uttered[[5]]<-c("look","cup")
visible[[5]]<-c("BOWL","CUP")

uttered[[6]]<-c("cup","next","to","shampoo")
visible[[6]]<-c("CUP","GAMEHANDLE")

uttered[[7]]<-c("knife","next","to","cup")
visible[[7]]<-c("BOWL","CUP","KNIFE")

uttered[[8]]<-c("look","knife")
visible[[8]]<-c("BOWL","GAMEHANDLE")

uttered[[9]]<-c("knife","next","to","cup")
visible[[9]]<-c("CUP","KNIFE")

uttered[[10]]<-c("shampoo","next","to","bowl")
visible[[10]]<-c("SHAMPOO","BOWL","CUP")

uttered[[11]]<-c("look","shampoo")
visible[[11]]<-c("SHAMPOO","CUP")

uttered[[12]]<-c("shampoo","next","to","bowl")
visible[[12]]<-c("UNKNOWN","BOWL")

uttered[[13]]<-c("look","firstaid")
visible[[13]]<-c("FIRSTAID","KNIFE","CUP")

uttered[[14]]<-c("firstaid","next","next","bowl")
visible[[14]]<-c("FIRSTAID","BOWL","CUP")

uttered[[15]]<-c("firstaid","next","to","cup")
visible[[15]]<-c("FIRSTAID","CUP")

uttered[[16]]<-c("look","saucepan")
visible[[16]]<-c("SAUCEPAN","SHAMPOO","BOWL")

uttered[[17]]<-c("saucepan","next","to","shampoo")
visible[[17]]<-c("SAUCEPAN","SHAMPOO")

uttered[[18]]<-c("saucepan","next","to","knife")
visible[[18]]<-c("SAUCEPAN","KNIFE")

uttered[[19]]<-c("wheel","next","to","bowl")
visible[[19]]<-c("WHEEL","SHAMPOO","BOWL")

uttered[[20]]<-c("wheel","next","to","shampoo")
visible[[20]]<-c("WHEEL","SHAMPOO")

uttered[[21]]<-c("look","wheel")
visible[[21]]<-c("WHEEL","BOWL")

uttered[[22]]<-c("gamehandle","next","to","knife")
visible[[22]]<-c("GAMEHANDLE","CUP","GAMEHANDLE")

uttered[[23]]<-c("gamehandle","next","to","cup")
visible[[23]]<-c("GAMEHANDLE","CUP")

uttered[[24]]<-c("look","gamehandle")
visible[[24]]<-c("GAMEHANDLE","KNIFE")

uttered[[25]]<-c("sharpiebox","next","to","cup")
visible[[25]]<-c("SHARPIEBOX","BOWL","CUP")

uttered[[26]]<-c("sharpiebox","next","to","bowl")
visible[[26]]<-c("SHARPIEBOX","BOWL")

uttered[[27]]<-c("look","sharpiebox")
visible[[27]]<-c("SHARPIEBOX","CUP")

uttered[[28]]<-c("look","barrel")
visible[[28]]<-c("BARREL","BOWL")

uttered[[29]]<-c("barrel","next","to","cup")
visible[[29]]<-c("BARREL","BOWL","CUP")

uttered[[30]]<-c("barrel","next","sharpiebox","knife")
visible[[30]]<-c("BARREL","KNIFE","BOWL")

uttered[[31]]<-c("plate","next","to","bowl")
visible[[31]]<-c("PLATE","CUP","KNIFE","BOWL")

uttered[[32]]<-c("plate","next","barrel")
visible[[32]]<-c("BOWL","FIRSTAID","SHARPIEBOX")

uttered[[33]]<-c("look","plate")
visible[[33]]<-c("PLATE","BARREL")

uttered[[34]]<-c("bowl","next","to","cup")
visible[[34]]<-c("BOWL","CUP","KNIFE")

uttered[[35]]<-c("bowl","next","to","cup")
visible[[35]]<-c("BOWL","CUP")

uttered[[36]]<-c("look","bowl")
visible[[36]]<-c("BOWL","KNIFE")

uttered[[37]]<-c("cup","next","to","knife")
visible[[37]]<-c("BOWL","CUP","KNIFE")

uttered[[38]]<-c("look","cup")
visible[[38]]<-c("BOWL","CUP")

uttered[[39]]<-c("cup","next","to","knife")
visible[[39]]<-c("CUP","KNIFE")

uttered[[40]]<-c("knife","next","to","cup")
visible[[40]]<-c("BOWL","CUP","KNIFE")

uttered[[41]]<-c("look","knife")
visible[[41]]<-c("BOWL","KNIFE")

uttered[[42]]<-c("knife","next","to","cup")
visible[[42]]<-c("CUP","KNIFE")

uttered[[43]]<-c("shampoo","next","to","bowl")
visible[[43]]<-c("SHAMPOO","BOWL","CUP")

uttered[[44]]<-c("look","shampoo")
visible[[44]]<-c("SHAMPOO","CUP")

uttered[[45]]<-c("shampoo","next","to","bowl")
visible[[45]]<-c("SHAMPOO","BOWL")

uttered[[46]]<-c("look","firstaid")
visible[[46]]<-c("FIRSTAID","KNIFE","CUP")

uttered[[47]]<-c("firstaid","next","to","bowl")
visible[[47]]<-c("FIRSTAID","BOWL","CUP")

uttered[[48]]<-c("firstaid","next","to","cup")
visible[[48]]<-c("FIRSTAID","CUP")

uttered[[49]]<-c("sharpiebox","saucepan")
visible[[49]]<-c("SAUCEPAN","SHAMPOO","BOWL")

uttered[[50]]<-c("gamehandle","next","to","shampoo")
visible[[50]]<-c("SAUCEPAN","SHAMPOO")

uttered[[51]]<-c("saucepan","next","to","knife")
visible[[51]]<-c("SAUCEPAN","KNIFE")

uttered[[52]]<-c("wheel","next","to","bowl")
visible[[52]]<-c("WHEEL","SHAMPOO","BOWL")

uttered[[53]]<-c("wheel","next","to","shampoo")
visible[[53]]<-c("WHEEL","SHAMPOO")

uttered[[54]]<-c("look","wheel")
visible[[54]]<-c("WHEEL","BOWL")

uttered[[55]]<-c("gamehandle","next","to","knife")
visible[[55]]<-c("GAMEHANDLE","CUP","KNIFE")

uttered[[56]]<-c("gamehandle","next","to","cup")
visible[[56]]<-c("GAMEHANDLE","CUP")

uttered[[57]]<-c("look","gamehandle")
visible[[57]]<-c("GAMEHANDLE","KNIFE")

uttered[[58]]<-c("sharpiebox","next","to","cup")
visible[[58]]<-c("SHARPIEBOX","BOWL","CUP")

uttered[[59]]<-c("sharpiebox","unknown","to","bowl")
visible[[59]]<-c("SHARPIEBOX","BOWL")

uttered[[60]]<-c("look","shampoo")
visible[[60]]<-c("SHARPIEBOX","CUP")

uttered[[61]]<-c("look","barrel")
visible[[61]]<-c("BARREL","BOWL")

uttered[[62]]<-c("barrel","next","to","cup")
visible[[62]]<-c("BARREL","BOWL","BOWL")

uttered[[63]]<-c("barrel","next","to","knife")
visible[[63]]<-c("BARREL","KNIFE","BOWL")

uttered[[64]]<-c("to","next","to","bowl")
visible[[64]]<-c("PLATE","CUP","KNIFE","BOWL")

uttered[[65]]<-c("plate","next","barrel")
visible[[65]]<-c("PLATE","BARREL","SHARPIEBOX")

uttered[[66]]<-c("look","plate")
visible[[66]]<-c("PLATE","BARREL")

uttered[[67]]<-c("bowl","next","to","cup")
visible[[67]]<-c("BOWL","CUP","KNIFE")

uttered[[68]]<-c("bowl","next","to","cup")
visible[[68]]<-c("BOWL","CUP")

uttered[[69]]<-c("look","bowl")
visible[[69]]<-c("BOWL","KNIFE")

uttered[[70]]<-c("cup","next","to","knife")
visible[[70]]<-c("BOWL","CUP","KNIFE")

uttered[[71]]<-c("look","cup")
visible[[71]]<-c("BOWL","CUP")

uttered[[72]]<-c("cup","next","to","knife")
visible[[72]]<-c("CUP","KNIFE")

uttered[[73]]<-c("knife","next","to","next")
visible[[73]]<-c("BOWL","CUP","KNIFE")

uttered[[74]]<-c("look","knife")
visible[[74]]<-c("BOWL","KNIFE")

uttered[[75]]<-c("knife","next","to","cup")
visible[[75]]<-c("CUP","KNIFE")

uttered[[76]]<-c("shampoo","next","to","bowl")
visible[[76]]<-c("SHAMPOO","BOWL","CUP")

uttered[[77]]<-c("look","shampoo")
visible[[77]]<-c("SHAMPOO","CUP")

uttered[[78]]<-c("shampoo","next","to","bowl")
visible[[78]]<-c("SHAMPOO","BOWL")

uttered[[79]]<-c("look","firstaid")
visible[[79]]<-c("FIRSTAID","KNIFE","CUP")

uttered[[80]]<-c("firstaid","next","to","bowl")
visible[[80]]<-c("FIRSTAID","BOWL","CUP")

uttered[[81]]<-c("firstaid","next","to","cup")
visible[[81]]<-c("FIRSTAID","CUP")

uttered[[82]]<-c("look","wheel")
visible[[82]]<-c("SAUCEPAN","SHAMPOO","BOWL")

uttered[[83]]<-c("saucepan","next","to","shampoo")
visible[[83]]<-c("SAUCEPAN","SHAMPOO")

uttered[[84]]<-c("saucepan","next","to","knife")
visible[[84]]<-c("SAUCEPAN","KNIFE")

uttered[[85]]<-c("wheel","next","to","bowl")
visible[[85]]<-c("WHEEL","SHAMPOO","BOWL")

uttered[[86]]<-c("wheel","next","to","shampoo")
visible[[86]]<-c("WHEEL","SHAMPOO")

uttered[[87]]<-c("look","wheel")
visible[[87]]<-c("WHEEL","BOWL")

uttered[[88]]<-c("gamehandle","next","to","knife")
visible[[88]]<-c("GAMEHANDLE","CUP","KNIFE")

uttered[[89]]<-c("gamehandle","next","to","knife")
visible[[89]]<-c("GAMEHANDLE","CUP")

uttered[[90]]<-c("look","gamehandle")
visible[[90]]<-c("GAMEHANDLE","KNIFE")

uttered[[91]]<-c("sharpiebox","next","to","cup")
visible[[91]]<-c("WHEEL","BOWL","CUP")

uttered[[92]]<-c("sharpiebox","next","to","bowl")
visible[[92]]<-c("SHARPIEBOX","BOWL")

uttered[[93]]<-c("look","sharpiebox")
visible[[93]]<-c("SHARPIEBOX","CUP")

uttered[[94]]<-c("look","barrel")
visible[[94]]<-c("BARREL","BOWL")

uttered[[95]]<-c("barrel","next","to","gamehandle")
visible[[95]]<-c("BARREL","BOWL","CUP")

uttered[[96]]<-c("barrel","next","to","knife")
visible[[96]]<-c("BARREL","KNIFE","BOWL")

uttered[[97]]<-c("plate","next","to","bowl")
visible[[97]]<-c("PLATE","CUP","KNIFE","BOWL")

uttered[[98]]<-c("plate","next","to")
visible[[98]]<-c("PLATE","BARREL","SHARPIEBOX")

uttered[[99]]<-c("look","plate")
visible[[99]]<-c("PLATE","BARREL")

