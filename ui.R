#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)

shinyUI(
    navbarPage("Porko Pandiyan",
               tabPanel("Analysis",
                        fluidPage(
                            titlePanel("The relationship between variables and miles per gallon (MPG)"),
                            sidebarLayout(
                                sidebarPanel(
                                    selectInput("variable", "Variable:",
                                                c("Number of cylinders" = "cyl",
                                                  "Displacement (cu.in.)" = "disp",
                                                  "Gross horsepower" = "hp",
                                                  "Rear axle ratio" = "drat",
                                                  "Weight (lb/1000)" = "wt",
                                                  "1/4 mile time" = "qsec",
                                                  "V/S" = "vs",
                                                  "Transmission" = "am",
                                                  "Number of forward gears" = "gear",
                                                  "Number of carburetors" = "carb"
                                                )),

                                    checkboxInput("outliers", "Show BoxPlot's outliers", FALSE)
                                ),

                                mainPanel(
                                    h3(textOutput("caption")),

                                    tabsetPanel(type = "tabs",
                                                tabPanel("BoxPlot", plotOutput("mpgBoxPlot")),
                                                tabPanel("Regression model",
                                                         plotOutput("mpgPlot"),
                                                         verbatimTextOutput("fit")
                                                )
                                    )
                                )
                            )
                        )
               ),
               tabPanel("Data set Discription",

                        h3("It is a Regression Models Week4 project as a Part of Data Science Specilization from Coursera by John Hopkins Univ"),
                        h3("Important"),
                        p("This DS contaions 32 samples on 11 variables."),

                        a("https://class.coursera.org/regmods-008")
               ),
               tabPanel("Meta Data",
                        h2("mtcars dataset"),
                        hr(),
                        h3("Summary"),
                        helpText("The data was a part of analysis from Motor-Trend magazine based on US in 1974,",
                                 " and describes the fuel consumption and 10 other variables that corresponds to auto design and peak-perf",
                                 " for 32automobiles (1973-74 models)."),
                        h3("Data Frame Descrip"),
                        p("There are 32 samples and 11 variables"),

                        p("  [1]   mpg         Miles/(US) gallon"),
                        p("  [2]	 cyl	 Number of cylinders"),
                        p("  [3]	 disp	 Displacement (cu.in.)"),
                        p("  [4]	 hp	 Gross horsepower"),
                        p("  [5]	 drat	 Rear axle ratio"),
                        p("  [6]	 wt	 Weight (lb/1000)"),
                        p("  [7]	 qsec	 1/4 mile time"),
                        p("  [8]	 vs	 V/S"),
                        p("  [9]	 am	 Transmission (0 = automatic, 1 = manual)"),
                        p("  [10]	 gear	 Number of forward gears"),
                        p("  [11]	 carb	 Number of carburetors"),


               ),
               tabPanel("GIT Repo",
                        a("https://github.com/Porko-Pandiyan/Developing_data_products"),
                        hr(),
                        h4("How was the appliction ,pls give feedback and comments "),
                        h4("There are different repos which have n=been for Coursera project work")
               )
    )
)

