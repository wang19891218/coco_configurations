\NeedsTeXFormat{LaTeX2e}[1994/12/01]
\ProvidesClass{coco-normal}

\newcommand{\ptsize}{}

% Declare text size options so that 12pt can be made the default option
\DeclareOption{10pt}{\renewcommand{\ptsize}{10pt}}
\DeclareOption{11pt}{\renewcommand{\ptsize}{11pt}}
\DeclareOption{12pt}{\renewcommand{\ptsize}{12pt}}
% PassOptionToClass
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
% Make 12pt and Journal the default options
\ExecuteOptions{12pt}
\ProcessOptions\relax
%
\LoadClass[oneside,onecolumn,final,\ptsize]{article}[1994/12/09]
% LLT: Force the PDF to be really letterpaper or a4paper.
\RequirePackage[letterpaper, margin = 1.0in]{geometry}
% Messages displayed on the screen:
\typeout{(1) A "CoCo" style manuscript will be produced}
%
\RequirePackage{lineno}
\linenumbers%
\setlength{\linenumbersep}{0.3in}%
\RequirePackage{setspace}
\doublespacing
\RequirePackage{amsfonts}
\RequirePackage{amsmath}
\RequirePackage{graphicx}
\RequirePackage{mathptmx}
\RequirePackage{natbib}
\RequirePackage{hyperref}
\RequirePackage{sourcecodepro}
\RequirePackage[T1]{fontenc}
\RequirePackage[affil-it]{authblk}
\RequirePackage{wrapfig} % Text around figure
\RequirePackage{titlesec} % Text around figure
\RequirePackage{bm}
\RequirePackage{caption}
\RequirePackage{subcaption}
\RequirePackage{multirow} % Multi row in table
\RequirePackage{arydshln} % Dashed line in table
\RequirePackage{todonotes} % Todo list 

\renewcommand\Authfont{\fontsize{12}{14.4}\selectfont}
\renewcommand\Affilfont{\fontsize{9}{10.8}\itshape}
\renewcommand{\familydefault}{\rmdefault}


\hypersetup{
    colorlinks = true,
    urlcolor = blue,
    citecolor = blue,
    pdfborder = {0 0 0},   
}
\def\linenumberfont{\normalfont\small\rmfamily}
\let\Standardequation\equation
\let\Standardendequation\endequation

\renewenvironment{equation}
{\linenomathNonumbers\Standardequation}
{\Standardendequation\endlinenomath}

\renewcommand{\refname}{References}
\def\@biblabel#1{}
\bibindent=1.0em
\renewenvironment{thebibliography}[1]
     {\par%
      \list{[\arabic{enumiv}]}%
          {\setlength{\labelwidth}{0em}
            \leftmargin\labelwidth
            \setlength{\labelsep}{0.in}
            \advance\leftmargin\labelsep
            \advance\leftmargin\bibindent
            \itemindent -\bibindent
            \listparindent \itemindent
            \setlength{\itemsep}{0ex}%
            \setlength{\topsep}{0ex}%
            \parsep \z@
            \usecounter{enumiv}%
            \let\p@enumiv\@empty
            \renewcommand{\theenumiv}{\arabic{enumiv}}}%
      \sloppy\clubpenalty4000\widowpenalty4000%
      \sfcode`\.=\@m}
      \endlist
\renewcommand{\newblock}{}

\AtEndOfClass
{\bibliographystyle{apalike}}
