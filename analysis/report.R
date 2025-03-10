library('ggplot2')
library('readr')

df_input <- read_csv(
  here::here("output", "dataset.csv.gz"),
  col_types = cols(patient_id = col_integer(),age = col_double())
)

plot_age <- ggplot(data=df_input, aes(df_input$age)) + geom_histogram()
plot_sex <- ggplot(data=df_input, aes(df_input$sex)) + geom_histogram(stat = "count")
ggsave(
  plot= plot_age,
  filename="report.png", path=here::here("output"),
)
ggsave(
  plot= plot_sex,
  filename="reports.png", path=here::here("output"),
)

