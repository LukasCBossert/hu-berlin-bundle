%%
%% This is file `hu-berlin-letter.cls',
%% generated with the docstrip utility.
%%
%% The original source files were:
%%
%% hu-berlin-bundle.dtx  (with options: `cls,letter')
%% ----------------------------------------------------------------
%% hu-berlin-bundle
%% Author:  Lukas C. Bossert
%% E-mail:  lukas@texografie.de
%% License: Released under the LaTeX Project Public License v1.3c or later
%% See:     http://www.latex-project.org/lppl.txt
%% Various parts my have a different licence,
%% please consider and respect them carefully.
%% ----------------------------------------------------------------
%% 
\def\Version{2021/01/31 v1.1.1}
\NeedsTeXFormat{LaTeX2e}[2005/12/01]
\ProvidesClass{hu-berlin-letter}
  [\Version\ Humboldt-Universit"at zu Berlin - letter documentclass]
\ClassInfo{hu-berlin}{* * * hu-berlin * * *\MessageBreak
    Part of the hu-berlin Bundle }
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{scrlttr2}}
\DeclareOption{english}{\PassOptionsToPackage{ngerman,main=english}{babel}}
\DeclareOption{ngerman}{\PassOptionsToPackage{ngerman}{babel}}
\ExecuteOptions{ngerman}
\ProcessOptions\relax
\LoadClass[%
  fontsize=10pt,
  version=last,
  % visualize
]{scrlttr2}
\RequirePackage{hu-berlin-base}
\RequirePackage{scrlayer-scrpage}
\clearpairofpagestyles
\DeclareNewLayer[
 foreground,
 voffset=\useplength{firstheadvpos},
 hoffset=\useplength{firstheadhpos},
 width=\useplength{firstheadwidth},
 mode=picture,
 contents=\putUL{\raisebox{-\height}{\usekomavar{firsthead}}}
]{likefirstpage.head}
\AddLayersToPageStyle{scrheadings}{likefirstpage.head}
\DeclareNewLayer[
 foreground,
 align=r,
 voffset=\useplength{locvpos},
 hoffset=\paperwidth-\useplength{lochpos},
 width=\useplength{locwidth},
 height=\useplength{locheight},
 contents=\usekomavar{nextlocation},
 %pretocontents=\layercontentsmeasure% to show the position of the layer
]{likefirstpage.loc}
\AddLayersToPageStyle{scrheadings}{likefirstpage.head,likefirstpage.loc}
\newkomavar{nextlocation}
\setkomavar{nextlocation}{%
  \raggedright
  \fontsize{7}{8.5}\selectfont
  \pagemark
}
\RequirePackage{geometry}
\geometry{%
  a4paper
 ,left           =25mm
 ,bottom         =16mm
 ,foot           =4mm
 ,top            =77mm
 ,headheight     =15pt
 ,textwidth      =117mm
 ,marginparsep   =0mm
 ,marginparwidth =0mm
}
\renewcommand*{\raggedsignature}{\raggedright}
\raggedright
\def\stopletter{}
\let\enclold\encl
\renewcommand\encl[1]{\vskip0ptplus1filll\enclold{#1}}
\providecaptionname{english}{\hubCCseparator}{Copy to}
\providecaptionname{english}{\hubEnclSeparator}{Attachment}
\providecaptionname{english}{\hubMyRef}{Reference:}
\providecaptionname{english}{\hubFromName}{Clerk:}
\providecaptionname{english}{\hubDate}{Date:}
\providecaptionname{english}{\hubAddress}{Postal address:}
\providecaptionname{english}{\hubConnections}{Public transport:}
\providecaptionname{english}{\hubOffice}{Office:}
\providecaptionname{english}{\hubBank}{Bank:}
\providecaptionname{english}{\hubOfficeHours}{Consultation hours:}
\providecaptionname{english}{\hubAccessibility}{Entrance:}
\providecaptionname{ngerman}{\hubCCseparator}{Kopie an}
\providecaptionname{ngerman}{\hubEnclSeparator}{Anlage}
\providecaptionname{ngerman}{\hubMyRef}{Geschäftszeichen:}
\providecaptionname{ngerman}{\hubFromName}{Bearbeiter:}
\providecaptionname{ngerman}{\hubDate}{Datum:}
\providecaptionname{ngerman}{\hubAddress}{Postanschrift:}
\providecaptionname{ngerman}{\hubConnections}{Verkehrsverbindungen:}
\providecaptionname{ngerman}{\hubOffice}{Sitz:}
\providecaptionname{ngerman}{\hubBank}{Bank:}
\providecaptionname{ngerman}{\hubOfficeHours}{Sprechzeiten:}
\providecaptionname{ngerman}{\hubAccessibility}{Eingang:}
\newkomavar{faculty}
\newkomafont{faculty}{\bfseries\fontsize{8.5}{10}\selectfont}
\newkomavar{institute}
\newkomafont{institute}{\fontsize{8.5}{10}\selectfont}
\newkomavar{institute.additional}
\newkomafont{institute.head}{\bfseries}
\newkomavar{institute.head}%
\newkomavar{institute.head.mail}%
\newkomavar{office}
\setkomavar*{office}{\hubOffice}
\newkomavar{connections}
\setkomavar*{connections}{\hubConnections}
\newkomavar{officehours}
\setkomavar*{officehours}{\hubOfficeHours}
\newkomavar{accessibility}
\setkomavar*{accessibility}{{\large\reflectbox{\Wheelchair}} \hubAccessibility}
\newkomavar{bank}
\setkomavar*{bank}{\hubBank}
\setkomavar{bank}{Deutsche Bank PGK AG}
\newkomavar{IBAN}
\setkomavar{IBAN}{\mbox{IBAN DE95 1007 0848 0512 6206 01}}
\newkomavar{BIC}
\setkomavar{BIC}{BIC DEUTDEDB110}
\setkomavar{location}{%
  \raggedright
  \fontsize{7}{8.5}\selectfont
\begin{minipage}[t][64mm]{\useplength{locwidth}}
\Ifkomavarempty{faculty}
  {\hspace*{1em}}
  {\usekomafont{faculty}%
   \usekomavar{faculty}\\[1\baselineskip]}
\Ifkomavarempty{institute}
  {}
  {\usekomafont{institute}\usekomavar{institute}\\[1\baselineskip]}
\Ifkomavarempty{institute.additional}
  {}
  {\usekomavar{institute.additional}\\[1\baselineskip]}
\Ifkomavarempty{institute.head}
 {}
 {{\usekomafont{institute.head}%
  \usekomavar{institute.head}}\\%
 \usekomavar*{institute.head}}
 \end{minipage}
  \textbf{\usekomavar*{date}}\\
  \usekomavar{date}\par
\Ifkomavarempty{fromname}
 {}
 {\textbf{\usekomavar*{fromname}}\\
  \usekomavar{fromname}\par}
\Ifkomavarempty{myref}
 {}
 {\textbf{\usekomavar*{myref}}\\
  \usekomavar{myref}\par}
\Ifkomavarempty{yourref}
 {}
 {\textbf{\usekomavar*{yourref}}\\
  \usekomavar{yourref}\par}
\Ifkomavarempty{yourmail}
 {}
 {\textbf{\usekomavar*{yourmail}}\\
  \usekomavar{yourmail}\par}
\Ifkomavarempty{customer}
 {}
 {\textbf{\usekomavar*{customer}}\\
  \usekomavar{customer}\par}
\Ifkomavarempty{invoice}
 {}
 {\textbf{\usekomavar*{invoice}}\\
  \usekomavar{invoice}\par}
  \textbf{\usekomavar*{fromaddress}}\\
  \usekomavar{fromaddress}
  \Ifkomavarempty{fromphone}
    {\par}
    {\\\usekomavar*{fromphone}\usekomavar{fromphone}
     \Ifkomavarempty{fromfax}
    {\par}
    {\\}}
  \Ifkomavarempty{fromfax}
    {}
    {\usekomavar*{fromfax}\usekomavar{fromfax}\par}
\Ifkomavarempty{institute.head.mail}
  {}
  {\usekomavar{institute.head.mail}
  \Ifkomavarempty{fromemail}
  {\Ifkomavarempty{fromurl}
   {\par}
   {\\}}
  {\\}}
\Ifkomavarempty{fromemail}
  {}
  {\usekomavar{fromemail}
  \Ifkomavarempty{fromurl}
  {\par}
  {\\}}
\Ifkomavarempty{fromurl}
  {}
  {\usekomavar{fromurl}\par}
\Ifkomavarempty{office}
  {}
  {\textbf{\usekomavar*{office}}\\
  \usekomavar{office}\par}
\vfill
\Ifkomavarempty{connections}
  {}
  {\textbf{\usekomavar*{connections}}\\
  \usekomavar{connections}\par}
\Ifkomavarempty{officehours}
  {}
  {\textbf{\usekomavar*{officehours}}\\
  \usekomavar{officehours}\par}
\Ifkomavarempty{accessibility}
  {}
  {\textbf{\usekomavar*{accessibility}}\\
  \usekomavar{accessibility}\par}
\Ifkomavarempty{bank}
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
\setplength{refvpos}{110mm}
\setplength{refaftervskip}{0pt}
\setplength{toaddrhpos}{25mm}
\setplength{firstheadhpos}{\useplength{toaddrhpos}}
\setplength{lochpos}{15mm}
\setplength{locvpos}{\useplength{toaddrvpos}}
\addtoplength{locvpos}{.75\baselineskip}
\setplength{locwidth}{45mm}
\setplength{locheight}{232mm}
\setkomavar{firsthead}{%
\IfFileExists{hu-berlin-logo.pdf}
  {\includegraphics[width=145mm]{hu-berlin-logo.pdf}}
  {{\vspace*{2em}\hfil\scshape [humboldt-universität zu berlin]}}%
}
\setkomavar{backaddressseparator}{~\textbar~}
\setkomavar{fromphone}{0000}
\setkomavar*{fromphone}{Telefon +49 [30] 2093–}
\setkomavar{fromfax}{0000}
\setkomavar*{fromfax}{Telefax +49 [30] 2093–}
\setkomavar*{fromaddress}{\hubAddress}
\setkomavar{fromaddress}{%
  Humboldt-Universität zu Berlin\\
  Unter den Linden 6\\
  D-10099 Berlin}
\setkomavar{backaddress}{%
  Humboldt-Universität zu Berlin\\
  UdL 6\\
  D-10099 Berlin}
\setkomavar*{date}{\hubDate}
\setkomavar*{fromname}{\hubFromName}
\setkomavar*{myref}{\hubMyRef}
\setkomavar*{enclseparator}{\hubEnclSeparator}
\setkomavar*{ccseparator}{\hubCCseparator}
%% 
%% Copyright (C) 2019-2020
%%
%% End of file `hu-berlin-letter.cls'.
