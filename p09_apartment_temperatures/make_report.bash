#!/bin/bash

source activate py35

cd /home/curtis/github/dSci-Projects/p09_apartment_temperatures/

Rscript -e "rmarkdown::render('generate_plot.Rmd')"

git add . 
git commit -m "Update chart"
git push
