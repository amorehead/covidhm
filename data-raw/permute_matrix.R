# Load original AM dataframes from a single file
load("data-raw/am_7 and am_16.RData")

# Permute AM dataframes row-wise
am_7_permuted <- am_7[sample(nrow(am_7)),]
am_16_permuted <- am_16[sample(nrow(am_16)),]

# Save permuted AM dataframes in a single file
save(am_7_permuted, am_16_permuted, file="data-raw/am_7_and_am_16_permuted.RData")
