## Exams-Paket laden
library("exams")

## Vektor mit den Aufgaben erstellen
myexam <- c("ZRr_01_zinsJahr","ZRr_02_zinsMonat")

## Erzeugung der PDFs und dazugehöriger Lösungen
exams2pdf(myexam, n = 3, name = c("PDF-Aufgabenblatt", "PDF-Loesungen"),
  encoding = "UTF-8",
  dir = "C:/aufgabenpool/output",
  edir = "C:/aufgabenpool/exercises",
  template = c("C:/aufgabenpool/templates/exam.tex", "C:/aufgabenpool/templates/solution.tex"),
  header = list(
    Date = "2015-07-21",
    ID = function(i) formatC(i, width = 5, flag = "0")
  ))


## Weitere Exportmoeglichkeiten (mit diesen Aufgaben nicht getestet): weitere Informationen: https://cran.r-project.org/web/packages/exams/index.html
## generate a single PDF exam (shown in PDF viewer)
exams2pdf(myexam, n = 1,
          encoding = "UTF-8",
          edir = "C:/aufgabenpool/exercises",
          template = "C:/aufgabenpool/templates/exam.tex")



## generate a single HTML exam (shown in browser)
exams2html(myexam, n = 1,
           encoding = "UTF-8",
           edir = "C:/aufgabenpool/exercises",
           template = "C:/aufgabenpool/templates/plain.html")

## generate three HTML exams without solutions in output directory
exams2html(myexam, n = 3, name = "html-demo", solution = FALSE,
           encoding = "UTF-8",
           dir = "C:/aufgabenpool/output",
           edir = "C:/aufgabenpool/exercises",
           template = "C:/aufgabenpool/templates/plain.html")

## generate Moodle exam with three replications per question
exams2moodle(myexam, n = 1, name = "moodle-demo",
  encoding = "UTF-8",
  dir = "C:/aufgabenpool/output",
  edir = "C:/aufgabenpool/exercises")


