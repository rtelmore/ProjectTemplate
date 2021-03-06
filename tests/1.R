library('testthat')

library('ProjectTemplate')

create.project('test_project')

expect_that(file.exists(file.path('test_project')), is_true())
expect_that(file.exists(file.path('test_project', 'cache')), is_true())
expect_that(file.exists(file.path('test_project', 'config')), is_true())
expect_that(file.exists(file.path('test_project', 'config', 'global.yaml')), is_true())
expect_that(file.exists(file.path('test_project', 'data')), is_true())
expect_that(file.exists(file.path('test_project', 'diagnostics')), is_true())
expect_that(file.exists(file.path('test_project', 'doc')), is_true())
expect_that(file.exists(file.path('test_project', 'fig')), is_true())
expect_that(file.exists(file.path('test_project', 'lib')), is_true())
expect_that(file.exists(file.path('test_project', 'lib', 'utilities.R')), is_true())
expect_that(file.exists(file.path('test_project', 'logs')), is_true())
expect_that(file.exists(file.path('test_project', 'profiling')), is_true())
expect_that(file.exists(file.path('test_project', 'profiling', '1.R')), is_true())
expect_that(file.exists(file.path('test_project', 'reports')), is_true())
expect_that(file.exists(file.path('test_project', 'src')), is_true())
expect_that(file.exists(file.path('test_project', 'src', 'do.R')), is_true())
expect_that(file.exists(file.path('test_project', 'src', 'scratch.R')), is_true())
expect_that(file.exists(file.path('test_project', 'src', 'functions.R')), is_true())
expect_that(file.exists(file.path('test_project', 'src', 'load.R')), is_true())
expect_that(file.exists(file.path('test_project', 'tests')), is_true())
expect_that(file.exists(file.path('test_project', 'tests', '1.R')), is_true())
expect_that(file.exists(file.path('test_project', 'README')), is_true())
expect_that(file.exists(file.path('test_project', 'TODO')), is_true())

setwd('test_project')

load.project()
run.tests()

setwd('..')

unlink('test_project', recursive = TRUE)
