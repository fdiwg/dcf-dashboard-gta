server <- function(input, output,session) {

  #dashboard call
  #---------------------------------------------------------------------------------------
  dcf.dashboard::dcf_dashboard_server(
    input = input, output = output, session = session,
    tasks =  list(
      list(
        id = "task_i",
        label = "Task I: Nominal catches",
        formats = list(
          list(
            id = "generic",
            label="Generic",
            ref= "https://raw.githubusercontent.com/fdiwg/fdi-formats/main/cwp_rh_generic_gta_taskI.json"
          )
        )
      ),
        list(
          id = "task_ii",
          label = "Task II: Catches",
          formats = list(
            list(
              id = "generic",
              label="Generic",
              ref= "https://raw.githubusercontent.com/fdiwg/fdi-formats/main/cwp_rh_generic_gta_taskII.json"
            )
          )
        )
      ),
    reporting_entity = c("RFMOs" = "source_authority"),
    ref_reporting_entities = "https://raw.githubusercontent.com/fdiwg/fdi-codelists/main/global/firms/gta/cl_tuna_rfmos.csv",
    allow_download = TRUE
  )

}
