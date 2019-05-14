%%
%% This is file `cls/HUBerlin-letter.cls',
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
  fontsize=11pt,
  version=last,
  DIN,
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
\setkomavar{backaddressseparator}{~\textbar~}
\KOMAoptions{%
locfield=wide,          % Breite Absenderergänzung (location)
fromalign=left,         % Ausrichtung des Briefkopfes
numericaldate=false,
refline=nodate,
backaddress=plain,
}

\setkomavar{location}{%
  \raggedright
  \footnotesize{%
  \begingroup
  \color{black!50}
   \ifkomavarempty{institute.logo}
    {\usekomavar{institute}}
    {\usekomavar{institute.logo}}\\%
  \usekomavar{institute.head.position}\\%
  \usekomavar*{institute.head}\space\usekomavar{institute.head}\\%
  \endgroup
  \vspace*{.5cm}
  {\bfseries%
  \usekomavar{fromname.position}\\
  \usekomavar{fromname}}\\
  \vspace*{.5\baselineskip}
  \usekomavar{fromaddress}
  \vspace*{.5\baselineskip}\\
  \usekomavar*{local}\space\usekomavar{local}\\
  \usekomavar*{fromphone}\usekomavar{fromphone}
  \ifkomavarempty{fromfax}{}{\usekomavar*{fromfax}\usekomavar{fromfax}}
  \vspace*{.5\baselineskip}\\
  \ifkomavarempty{institute.head.mail}{}{\usekomavar{institute.head.mail}}
  \usekomavar{fromemail}
  \usekomavar{fromurl}\\
  \vspace*{.5\baselineskip}
  \usekomavar{date}}%
}
\setkomavar{firsthead}{%
  \parbox{\linewidth}{%
 \includegraphics[width=.8\linewidth]{HUBerlin-logo.png}
  }%
}

 \@setplength{locheight}{length }
 \@setplength{lochpos}{length }
 \@setplength{locvpos}{length }
 \@setplength{locwidth}{length }

\setkomavar{title}{}
\setkomavar{date}{\today}
\newkomavar{institute}%
\newkomavar{institute.head}%
\newkomavar{institute.head.position}%
\newkomavar{institute.head.mail}%
\newkomavar{institute.logo}%
\newkomavar{fromname.position}
\newkomavar[Sitz:]{local}
\newkomavar[Verkehrsverbindungen]{connections}
%% 
%% Copyright (C) 2019
%%
%% End of file `cls/HUBerlin-letter.cls'.
