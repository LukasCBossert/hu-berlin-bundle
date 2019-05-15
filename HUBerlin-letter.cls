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
  [\Version\space Humboldt-Universität zu Berlin - letter documentclass]
\ClassInfo{HUBerlin}{* * * HUBerlin * * *\MessageBreak
    Part of the HUBerlin Bundle }
\RequirePackage{xkeyval}
\DeclareOptionX*{\OptionNotUsed}
\ProcessOptionsX\relax
\LoadClass[%
  fontsize=10pt,
  version=last,
  visualize
]{scrlttr2}

\RequirePackage{ifluatex,luatex85}
\ifluatex
\else
\GenericError{HUBerlin}%
 {Please use `LuaLaTeX' as Compiler.^^J I abort here.}
\fi
\RequirePackage[ngerman]{babel}
\RequirePackage{graphicx}
\RequirePackage{xcolor}
\RequirePackage{fontspec}
\RequirePackage{geometry}
\geometry{%
   a4paper
  ,left=25mm
  % ,right=15mm
  ,bottom=16mm
  ,foot=4mm
  ,top=77mm
  ,nohead
  ,textwidth=117mm
  ,marginparsep=0mm
  ,marginparwidth=0mm
}
\setkomavar{backaddressseparator}{~\textbar~}
\KOMAoptions{%
numericaldate=true,
refline=nodate,
backaddress=plain,
parskip=half-
}
\newkomavar{faculty}%
\newkomavar{institute}%
\newkomavar{institute.head}%
\newkomavar{institute.head.position}%
\newkomavar{institute.head.mail}%
\newkomavar{institute.logo}%
\newkomavar{fromname.position}
\newkomavar[\textbf{Sitz:}]{local}
\newkomavar[\textbf{Verkehrsverbindungen:}]{connections}
\setkomavar{location}{%
  \raggedright
  \fontsize{8.5}{10}\selectfont%
\ifkomavarempty{faculty}
 {}
 {{\bfseries%
   \usekomavar{faculty}}\par}
 \ifkomavarempty{institute.logo}
    {\usekomavar{institute}}
    {\usekomavar{institute.logo}}\par%
  {\bfseries%
   \usekomavar*{institute.head}\space\usekomavar{institute.head}}\\%
  \usekomavar{institute.head.position}\\
  \fontsize{7}{8.5}\selectfont
  \vspace*{4\baselineskip}
  \usekomavar*{date}\space\usekomavar{date}\par
  \textbf{\usekomavar{fromname}}\\
  \usekomavar{fromname.position}\par
\ifkomavarempty{myref}
 {}
 {{\bfseries%
   \usekomavar*{myref}:}\\\usekomavar{myref}\par}
  %%
  %%
  \usekomavar[\textbf{Postanschrift:}\\]{fromaddress}
  \vspace*{.5\baselineskip}\\
  \usekomavar*{local}\\
  \usekomavar{local}\par
  \usekomavar*{fromphone}\usekomavar{fromphone}
  \ifkomavarempty{fromfax}{}{\usekomavar*{fromfax}\usekomavar{fromfax}}
  \vspace*{.5\baselineskip}\\
\ifkomavarempty{institute.head.mail}
  {}
  {\usekomavar{institute.head.mail}}
  \usekomavar{fromemail}
  \usekomavar{fromurl}\\
\vfill
  \textbf{\usekomavar*{connections}}\\
  \usekomavar{connections}
}

\setkomavar{firsthead}{%
 \includegraphics[width=148mm]{HUBerlin-logo.png}%
}
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
\AtBeginDocument{
\removereffields
\@setplength{refvpos}{113mm}
\@setplength{refaftervskip}{0pt}
\@setplength{toaddrhpos}{25mm}
\@setplength{firstheadhpos}{\useplength{toaddrhpos}}
\@setplength{lochpos}{15mm}
\@setplength{locvpos}{\useplength{toaddrvpos}}
\@addtoplength{locvpos}{.75\baselineskip}
\@setplength{locwidth}{45mm}
\@setplength{locheight}{232mm}
}
\setkomavar{date}{\today}
\setkomavar{place}{Berlin} % Ort
\renewcaptionname{ngerman}{\myrefname}{Geschäftszeichen}
%% 
%% Copyright (C) 2019
%%
%% End of file `HUBerlin-letter.cls'.
