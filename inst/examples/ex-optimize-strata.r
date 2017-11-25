data <- to_lodes(as.data.frame(Titanic), axes = 1:4)
ggplot(data,
       aes(x = x, stratum = stratum, alluvium = alluvium, weight = Freq)) +
  geom_alluvium() + geom_stratum()

count_perms <- optimize_strata(
  data,
  key = "x", value = "stratum", id = "alluvium",
  free.strata = TRUE,
  objective = "count", method = "exhaustive"
)

count_perms <- optimize_strata(
  data,
  key = "x", value = "stratum", id = "alluvium",
  free.strata = TRUE,
  objective = "count", method = "heuristic"
)

weight_perms <- optimize_strata(
  data,
  key = "x", value = "stratum", id = "alluvium",
  weight = "Freq",
  free.strata = TRUE,
  objective = "weight", method = "exhaustive"
)

weight_perms <- optimize_strata(
  data,
  key = "x", value = "stratum", id = "alluvium",
  weight = "Freq",
  free.strata = TRUE,
  objective = "weight", method = "heuristic"
)


reorder_strata <- function(data, perms) {
  
}
