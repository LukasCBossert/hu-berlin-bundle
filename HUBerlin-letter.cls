%%
%% This is file `HUBerlin-letter.cls',
%% generated with the docstrip utility.
%%
%% The original source files were:
%%
%% HUBerlin-bundle.dtx  (with options: `cls,letter')
%% ----------------------------------------------------------------
%% HUBerlin-bundle
%% Author:  Lukas C. Bossert
%% E-mail:  lukas@texografie.de
%% License: Released under the LaTeX Project Public License v1.3c or later
%% See:     http://www.latex-project.org/lppl.txt
%% Various parts my have a different licence,
%% please consider and respect them carefully.
%% ----------------------------------------------------------------
%% 
\def\Version{\the\year/\the\month/\the\day\ v0.0.1}
\NeedsTeXFormat{LaTeX2e}[2005/12/01]
\ProvidesClass{HUBerlin-letter}
  [\Version\space Humboldt-Universit"at zu Berlin - letter documentclass]
\ClassInfo{HUBerlin}{* * * HUBerlin * * *\MessageBreak
    Part of the HUBerlin Bundle }
\LoadClass[%
  fontsize=10pt,
  version=last,
  % visualize
]{scrlttr2}
\RequirePackage{ifluatex,luatex85}
\ifluatex
\else
\GenericError{HUBerlin}%
 {Please use `LuaLaTeX' as Compiler.^^J I abort here.}
\fi
\RequirePackage[english,ngerman]{babel}
\RequirePackage{graphicx}
\RequirePackage{fontspec}
\setmainfont{Verdana}
\RequirePackage{marvosym}
\RequirePackage{scrlayer-scrpage}
\DeclareNewLayer[
  foreground,
  textarea,
  voffset=\useplength{firstheadvpos},
  hoffset=\useplength{firstheadhpos},
  width=\useplength{firstheadwidth},
  mode=picture,
  contents=\putUL{\raisebox{\dimexpr-\height}{\usekomavar{firsthead}}\hfill\thepage}
]{likefirstpage.head}
\AddLayersToPageStyle{scrheadings}{likefirstpage.head}
\clearpairofpagestyles
\RequirePackage{geometry}
\geometry{%
   a4paper
  ,left           =25mm
  ,bottom         =16mm
  ,foot           =4mm
  ,top            =77mm
  ,nohead
  ,textwidth      =117mm
  ,marginparsep   =0mm
  ,marginparwidth =0mm
}
\renewcommand*{\raggedsignature}{\raggedright}
\raggedright
\newkomavar{faculty}
\newkomafont{faculty}{\bfseries\fontsize{8.5}{10}\selectfont}
\newkomavar{institute}
\newkomafont{institute}{\fontsize{8.5}{10}\selectfont}
\newkomavar{institute.additional}
\newkomafont{institute.head}{\bfseries}
\newkomavar{institute.head}%
\newkomavar{institute.head.mail}%
\newkomavar{local}
\setkomavar*{local}{Sitz:}
\newkomavar{connections}
\setkomavar*{connections}{Verkehrsverbindungen:}
\newkomavar{officehours}
\setkomavar*{officehours}{Sprechzeiten:}
\newkomavar{accessibility}
\setkomavar*{accessibility}{{\large\reflectbox{\Wheelchair}} Eingang:}
\newkomavar{bank}
\setkomavar*{bank}{Bankverbindung:}
\setkomavar{bank}{Deutsche Bank PGK AG}
\newkomavar{IBAN}
\setkomavar{IBAN}{\mbox{IBAN DE95 1007 0848 0512 6206 01}}
\newkomavar{BIC}
\setkomavar{BIC}{BIC DEUTDEDB110}
\setkomavar{location}{%
  \raggedright
  \fontsize{7}{8.5}\selectfont
\begin{minipage}[t][64mm]{\useplength{locwidth}}
  {\usekomafont{faculty}%
   \usekomavar{faculty}\\[1\baselineskip]}
  {\usekomafont{institute}\usekomavar{institute}\\[1\baselineskip]}
\ifkomavarempty{institute.additional}
  {}
  {\usekomavar{institute.additional}\\[1\baselineskip]}
\ifkomavarempty{institute.head}
 {}
 {{\usekomafont{institute.head}%
  \usekomavar{institute.head}}\\%
 \usekomavar*{institute.head}}
 \end{minipage}
  \textbf{\usekomavar*{date}}\\
  \usekomavar{date}\par
\ifkomavarempty{fromname}
 {}
 {\textbf{\usekomavar*{fromname}}\\
  \usekomavar{fromname}\par}
\ifkomavarempty{myref}
 {}
 {\textbf{\usekomavar*{myref}}\\
  \usekomavar{myref}\par}
\ifkomavarempty{yourref}
 {}
 {\textbf{\usekomavar*{yourref}}\\
  \usekomavar{yourref}\par}
\ifkomavarempty{yourmail}
 {}
 {\textbf{\usekomavar*{yourmail}}\\
  \usekomavar{yourmail}\par}
\ifkomavarempty{customer}
 {}
 {\textbf{\usekomavar*{customer}}\\
  \usekomavar{customer}\par}
\ifkomavarempty{invoice}
 {}
 {\textbf{\usekomavar*{invoice}}\\
  \usekomavar{invoice}\par}
  \textbf{\usekomavar*{fromaddress}}\\
  \usekomavar{fromaddress}
  \ifkomavarempty{fromphone}
    {\par}
    {\\\usekomavar*{fromphone}\usekomavar{fromphone}
     \ifkomavarempty{fromfax}
    {\par}
    {\\}}
  \ifkomavarempty{fromfax}
    {}
    {\usekomavar*{fromfax}\usekomavar{fromfax}\par}
\ifkomavarempty{institute.head.mail}
  {}
  {\usekomavar{institute.head.mail}
  \ifkomavarempty{fromemail}
  {\ifkomavarempty{fromurl}
   {\par}
   {\\}}
  {\\}}
\ifkomavarempty{fromemail}
  {}
  {\usekomavar{fromemail}
  \ifkomavarempty{fromurl}
  {\par}
  {\\}}
\ifkomavarempty{fromurl}
  {}
  {\usekomavar{fromurl}\par}
\ifkomavarempty{local}
  {}
  {\textbf{\usekomavar*{local}}\\
  \usekomavar{local}\par}
\vfill
\ifkomavarempty{connections}
  {}
  {\textbf{\usekomavar*{connections}}\\
  \usekomavar{connections}\par}
\ifkomavarempty{officehours}
  {}
  {\textbf{\usekomavar*{officehours}}\\
  \usekomavar{officehours}\par}
\ifkomavarempty{accessibility}
  {}
  {\textbf{\usekomavar*{accessibility}}\\
  \usekomavar{accessibility}\par}
\ifkomavarempty{bank}
  {}
  {\textbf{\usekomavar*{bank}}\\
  \usekomavar{bank}\\
  \usekomavar{IBAN}\\
  \usekomavar{BIC}
  }
}
\KOMAoptions{%
   numericaldate =true
  ,refline       =nodate
  ,backaddress   =plain
  ,parskip       =half-
}
\removereffields
\AtBeginDocument{
\@setplength{refvpos}{110mm}
\@setplength{refaftervskip}{0pt}
\@setplength{toaddrhpos}{25mm}
\@setplength{firstheadhpos}{\useplength{toaddrhpos}}
\@setplength{lochpos}{15mm}
\@setplength{locvpos}{\useplength{toaddrvpos}}
\@addtoplength{locvpos}{.75\baselineskip}
\@setplength{locwidth}{45mm}
\@setplength{locheight}{232mm}
}
\setkomavar{firsthead}{%
 \includegraphics[width=148mm]{HUBerlin-logo.png}%
}
\setkomavar{backaddressseparator}{~\textbar~}
\setkomavar{fromphone}{0000}
\setkomavar*{fromphone}{Telefon +49 [30] 2093–}
\setkomavar{fromfax}{0000}
\setkomavar*{fromfax}{Telefax +49 [30] 2093–}
\setkomavar*{fromaddress}{Postanschrift:}
\setkomavar{fromaddress}{%
  Humboldt-Universität zu Berlin\\
  Unter den Linden 6\\
  D-10099 Berlin}
\setkomavar*{date}{Datum:}
\setkomavar*{fromname}{Bearbeiter:}
\setkomavar*{myref}{Geschäftszeichen:}
\setkomavar*{enclseparator}{Anlage}
\setkomavar*{ccseparator}{Kopie an}
%% 
%% Copyright (C) 2019
%%
%% End of file `HUBerlin-letter.cls'.
