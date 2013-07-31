\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{oe-kvk-szakdolgozat}[2013/07/29 v1.0 Kandós szakdolgozat sablon]

\usepackage[utf8]{inputenc}
\usepackage{amsmath}
\usepackage{amsfonts}
\usepackage{amssymb}
\usepackage{graphicx}
\usepackage{lipsum}

\renewcommand{\normalsize}{\fontsize{10pt}{12pt}\selectfont}
\newcommand\thepage{\arabic{page}}
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
% \RequirePackage[top=20mm, bottom=45mm, left=25mm, right=25mm,showframe]{geometry}
\RequirePackage[top=20mm, bottom=25mm, left=25mm, right=25mm]{geometry}
\RequirePackage{fancyhdr}
% \fancypagestyle{firstpage}{%
	% \fancyhf{} % this clears all six fields (left, center, right in header and footer)
	% \renewcommand{\headrulewidth}{0mm}
	% \renewcommand{\footrulewidth}{0mm}
% }
\fancypagestyle{normal}{
	\fancyhf{} % this clears all six fields (left, center, right in header and footer)
	% E - Even page
	% O - Odd page
	% L - Left field
	% C - Center field
	% R - Right field
	% H - Header
	% F - Footer
	\headheight 20mm								% make height of header to 20mm
	\fancyhead[C]{\raisebox{20mm}{\thepage. oldal}}	% push first line to top
	\addtolength{\textheight}{-20mm}				% subtract 20 mm from document height
	\renewcommand{\headrulewidth}{0mm}				% hide ruler from header
}
\pagestyle{normal}
%\AtBeginDocument{\thispagestyle{firstpage}}
%\@ptsize{2}

%\RequirePackage[top=0mm, bottom=0mm, left=0mm, right=0mm]{geometry}
%\usepackage[top=0mm, bottom=0mm, left=0mm, right=0mm]{geometry}
