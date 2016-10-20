########
# Init #
########

if (!exists('c_project_setup')) {
  cat('Doing project setup ...\n')
  c_project_setup = TRUE

  # Project path
  v_paths_relative <- list()
  v_paths_relative$project <-  'C:/Temp/MyProject'
  # v_paths_relative$project <- svDialogs::dlgDir()$res

  if (file.exists(v_paths_relative$project)) {
    setwd(v_paths_relative$project)
    if (file.exists(file.path(v_paths_relative$project,
                              'project_config.RData'))) {
      load(file.path(v_paths_relative$project,
                     'project_config.RData'))  # automatic setup
    } else {
      # Define names for sub directories
      data          <- 'data'             # data to be loaded into or
                                          # saved from R
      documentation <- 'documentation'    # explanatory material for results
                                          # (e. g. knitR documents)
      fundamentals  <- 'fundamentals'     # background knowledge
      input         <- 'data/input'       # input data eventually manually
                                          # revised for import
      master        <- 'data/master'      # master data (e. g. lookup tables)
      output        <- 'data/output'
      raw           <- 'data/raw'         # a copy of all input data never
                                          # touched for safety reasons and
                                          # not read by R
      program       <- 'program'          # all scripts and runnable files
      gather        <- 'program/gather'   # scripts to gather data
      import        <- 'program/import'   # scripts for data import
      clean         <- 'program/clean'    # scripts for data cleaning
      prepare       <- 'program/prepare'  # scripts for data prep
      merge         <- 'program/merge'    # scripts for data merging
      analyse       <- 'program/analyse'  # scripts for data analysis
      present       <- 'program/present'  # scripts for data presentation
      modules       <- 'program/modules'  # project specific packages, files
                                          # or functions in separate files as
                                          # well as all other sub routines to
                                          # be sourced or loaded
      results       <- 'results'          # container for all resulting data
                                          # in an aggregated form
      graphics      <- 'results/graphics'
      tables        <- 'results/tables'
      presentations <- 'results/presentations'
      temp          <- 'temp'

      v_paths_relative <- list(
        project       = v_paths_relative$project,
        documentation = documentation,
        fundamentals  = fundamentals,
        input         = input,
        master        = master,
        output        = output,
        raw           = raw,
        program       = program,
        gather        = gather,
        import        = import,
        clean         = clean,
        prepare       = prepare,
        merge         = merge,
        analyse       = analyse,
        present       = present,
        modules       = modules,
        graphics      = graphics,
        tables        = tables,
        presentations = presentations,
        temp          = temp
        )

      v_project_dir = v_paths_relative$project
      v_paths_full      <- list(
        project       = file.path(v_project_dir),
        documentation = file.path(v_project_dir, documentation),
        fundamentals  = file.path(v_project_dir, fundamentals),
        data          = file.copy(v_project_dir, data),
        input         = file.path(v_project_dir, input),
        master        = file.path(v_project_dir, master),
        output        = file.path(v_project_dir, output),
        raw           = file.path(v_project_dir, raw),
        program       = file.path(v_project_dir, program),
        gather        = file.path(v_project_dir, gather),
        import        = file.path(v_project_dir, import),
        clean         = file.path(v_project_dir, clean),
        prepare       = file.path(v_project_dir, prepare),
        merge         = file.path(v_project_dir, merge),
        analyse       = file.path(v_project_dir, analyse),
        present       = file.path(v_project_dir, present),
        modules       = file.path(v_project_dir, modules),
        results       = file.path(v_project_dir, results),
        graphics      = file.path(v_project_dir, graphics),
        tables        = file.path(v_project_dir, tables),
        presentations = file.path(v_project_dir, presentations),
        temp          = file.path(v_project_dir, temp)
        )

      rm(v_project_dir,
           documentation, fundamentals,
           data, input, master, output, raw,
           program, gather, import, clean, prepare,
           merge, analyse, present, modules,
           results, graphics, tables, presentations,
           temp)
      }

  # Toolbox path
  v_toolbox = file.path(
    'H:/2016/Programming/R-Project/r_toolbox/',
    'r_toolbox.R'
  )
  source(v_toolbox)
  cat('Done.\n\n')
}

if (!exists('c_constants')) {
  c_constants = TRUE
  cat('Creating constants ...\n')

  c_value_label_separator <- '__'

  c_today        <- Sys.Date()
  c_data_gatherd <- as.Date('2016-07-26')  # date of data gathering
  c_data_created <- as.Date('2016-07-26')  # fixed data for reproducible
                                           # programming

  c_filename_master_data <- file.path(
    'H:/2016/Analysen/Master_Data/',
    '2016-08-01_SAP-ERP_Meta_Data.xlsx'
  )

  cat('Done.\n')
  }
}

# EOF .
