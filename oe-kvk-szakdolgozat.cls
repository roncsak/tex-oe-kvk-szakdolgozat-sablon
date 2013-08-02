\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{oe-kvk-szakdolgozat}[2013/07/29 v1.0 Kandós szakdolgozat sablon]

\usepackage[utf8]{inputenc}
\usepackage{amsmath}
\usepackage{amsfonts}
\usepackage{amssymb}
\usepackage{graphicx}
\usepackage{lipsum}
\usepackage{ifthen}

\renewcommand{\normalsize}{\fontsize{10pt}{12pt}\selectfont}
\newcommand\thepage{\arabic{page}}
\newif\ifrtp
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
\DeclareOption{rtp} {
	\rtptrue			% set rtp to true
	\@twosidetrue		% set twoside to true
}
\DeclareOption{oneside}{\@twosidefalse}
\DeclareOption{twoside}{\@twosidetrue}
\DeclareOption*{
	\ClassWarning{oe-kvk-szakdolgozat}{Unknown option '\CurrentOption'}
}

%Default options for design
\ExecuteOptions{a4paper}
%Process user given options
\ProcessOptions
% \RequirePackage[top=20mm, bottom=45mm, left=30mm, right=30mm,showframe]{geometry}
\RequirePackage[top=20mm, bottom=25mm, left=30mm, right=30mm]{geometry}
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
	\setlength{\headheight}{20mm}					% make height of header to 20mm
	\fancyhead[C]{\raisebox{20mm}{\thepage. oldal}}	% push first line to top
	\addtolength{\textheight}{-20mm}				% subtract 20 mm from document height
	\if@twoside										% if the document two sided
		\addtolength{\oddsidemargin}{-5mm}
		\addtolength{\evensidemargin}{5mm}
	\fi
	\renewcommand{\headrulewidth}{0mm}				% hide ruler from header
}
\pagestyle{normal}
%\AtBeginDocument{\thispagestyle{firstpage}}
%\@ptsize{2}