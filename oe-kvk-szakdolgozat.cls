\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{oe-kvk-szakdolgozat}[2013/07/29 v1.0 Kandós szakdolgozat sablon]

\renewcommand{\normalsize}{\fontsize{10pt}{12pt}\selectfont}
%\setlength{\textwidth}{210mm}
%\setlength{\textheight}{297mm}
%\setlength{\hoffset}{0mm}
\setlength{\parindent}{0mm}
\DeclareOption{a4paper}{
  \setlength\paperheight {297mm}%
    \setlength\paperwidth  {210mm}
}
\DeclareOption{landscape} {
	\setlength\@tempdima   {\paperheight}%
    \setlength\paperheight {\paperwidth}%
    \setlength\paperwidth  {\@tempdima}
}

%Default options for design
\ExecuteOptions{a4paper}
%Process user given options
\ProcessOptions
\RequirePackage[top=0mm, bottom=0mm, left=0mm, right=0mm, textwidth=210mm]{geometry}
%\@ptsize{2}

%\RequirePackage[top=0mm, bottom=0mm, left=0mm, right=0mm]{geometry}
%\usepackage[top=0mm, bottom=0mm, left=0mm, right=0mm]{geometry}
