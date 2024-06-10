# Olah Data Semarang
# WhatsApp : +6285227746673
# IG : @olahdatasemarang_
# UPGMA (Unweighted Pair Group Method with Arithmetic Mean) Use phangorn With R Software
install.packages("ape")
install.packages("phangorn")
library(ape)
library(phangorn)
UPGMA = read.csv("https://raw.githubusercontent.com/timbulwidodostp/UPGMA/main/UPGMA/UPGMA.csv",sep = ";")
# Estimation UPGMA (Unweighted Pair Group Method with Arithmetic Mean) Use phangorn With R Software
UPGMA<-as.phyDat(UPGMA)
dm  <- dist.ml(UPGMA)
treeUPGMA  <- upgma(dm)
treeNJ  <- NJ(dm)
plot(treeUPGMA, main="UPGMA")
plot(treeNJ, "unrooted", main="NJ")
fun <- function(x) upgma(dist.ml(x))
bs_upgma <- bootstrap.phyDat(UPGMA, fun)
bs_upgma <- bootstrap.phyDat(UPGMA, \(x){dist.ml(x) |> upgma})
plotBS(treeUPGMA, bs_upgma, main="UPGMA")
# UPGMA (Unweighted Pair Group Method with Arithmetic Mean) Use phangorn With R Software
# Olah Data Semarang
# WhatsApp : +6285227746673
# IG : @olahdatasemarang_
# Finished