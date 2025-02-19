# MORGAN SZIRAKI

## Link to my most current and up to date version of my CV in 
- [PDF format](https://raw.githubusercontent.com/morganism/cv/master/CV.pdf)

- [MarkDown format](https://github.com/morganism/cv/blob/master/CV.md)

### How does this work ?

- [md2pdf](https://github.com/morganism/cv/blob/master/bin/md2pdf.rb)

This a ruby application that requires ```pandoc``` and ```latex``` to create a PDF file from a MarkDown file.

- [github-actions.yml](https://github.com/morganism/cv/blob/master/.github/workflows/github-actions.yml)

This is a Github Action that implements an ```on push``` trigger when a new version of [CV.md](https://github.com/morganism/cv/blob/master/CV.md) gets pushed to the repo. This action sets up all dependencies using apt and pulls down [md2pdf](https://github.com/morganism/cv/blob/master/bin/md2pdf.rb) and executes:

[md2pdf](https://github.com/morganism/cv/blob/master/bin/md2pdf.rb) [CV.md](https://github.com/morganism/cv/blob/master/CV.md) [CV.pdf](https://github.com/morganism/cv/blob/master/CV.md)
 
