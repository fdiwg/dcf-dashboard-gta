server <- function(input, output,session) {

  #dashboard call
  #---------------------------------------------------------------------------------------
  dcf.dashboard::dcf_dashboard_server(
    input = input, output = output, session = session,
    tasks = c(
      "Task I: Nominal catches"="task_i",
      "Task II: Catches"="task_ii"
    ),
    reporting_entity = c("RFMOs" = "source_authority"),
    ref_reporting_entities = "https://raw.githubusercontent.com/fdiwg/fdi-codelists/main/global/firms/gta/cl_tuna_rfmos.csv"
  )

}
