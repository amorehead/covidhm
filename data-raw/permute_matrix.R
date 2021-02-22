# Load original AM dataframes from a single file
load("data-raw/am_list_original.RData")
# load("data-raw/am_7 and am_16_original.RData")

# Permute AM dataframes row-wise
# AM shuffling
All <- am_list[[1]][sample(nrow(am_list[[1]])),]
Thurs <- am_list[[2]][sample(nrow(am_list[[2]])),]
Fri <- am_list[[3]][sample(nrow(am_list[[3]])),]
Sat <- am_list[[4]][sample(nrow(am_list[[4]])),]
am_list = list(All, Thurs, Fri, Sat)
names(am_list) = c("All", "Thurs", "Fri", "Sat")

# AM 7-16 shuffling
# am_7 <- am_7[sample(nrow(am_7)),]
# am_16 <- am_16[sample(nrow(am_16)),]

# Save permuted AM dataframes in a single file
save(am_list, file="data-raw/am_list.RData")
# save(am_7, am_16, file="data-raw/am_7 and am_16.RData")
