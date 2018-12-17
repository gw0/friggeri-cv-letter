\ProvidesClass{friggeri-letter}[2015/10/31 Cover letter class]
\NeedsTeXFormat{LaTeX2e}

\DeclareOption{print}{\def\@cv@print{}}
\DeclareOption*{%
  \PassOptionsToClass{\CurrentOption}{letter}%
}
\ProcessOptions\relax
\LoadClass{letter}

\newcommand*{\header}[3]{
  \def\firstname{#1}
  \def\lastname{#2}
  \def\subtitle{#3}
}


%%%%%%%%%%
% Colors %
%%%%%%%%%%

\RequirePackage{xcolor}

\definecolor{white}{RGB}{255,255,255}

\definecolor{darkgray}{HTML}{333333}
\definecolor{gray}{HTML}{4D4D4D}
\definecolor{lightgray}{HTML}{999999}

\definecolor{green}{HTML}{C2E15F}
\definecolor{orange}{HTML}{FDA333}
\definecolor{purple}{HTML}{D3A4F9}
\definecolor{red}{HTML}{FB4485}
\definecolor{blue}{HTML}{6CE0F1}

\ifdefined\@cv@print
  \colorlet{green}{gray}
  \colorlet{orange}{gray}
  \colorlet{purple}{gray}
  \colorlet{brown}{gray}
  \colorlet{red}{gray}
  \colorlet{blue}{gray}
  \colorlet{fillheader}{white}
  \colorlet{fromcolor}{blue}
  \colorlet{header}{gray}
\else
  \colorlet{fillheader}{gray}
  \colorlet{fromcolor}{red}
  \colorlet{header}{white}
\fi
\colorlet{textcolor}{gray}
\colorlet{headercolor}{gray}


%%%%%%%%%
% Fonts %
%%%%%%%%%

\RequirePackage[quiet]{fontspec}
\RequirePackage[math-style=TeX,vargreek-shape=unicode]{unicode-math}

% Roboto font
% \newfontfamily\headerboldfont[Path=fonts/Roboto/]{Roboto-Regular.ttf}
% \newfontfamily\headerthinfont[Path=fonts/Roboto/]{Roboto-Thin.ttf}
% \newfontfamily\headingfont[Path=fonts/Roboto/]{Roboto-Medium.ttf}
% \newfontfamily\positionfont[Path=fonts/Roboto/]{Roboto-LightItalic.ttf}

% \defaultfontfeatures{Mapping=tex-text}
% \setmainfont[Mapping=tex-text, Color=textcolor, Path=fonts/Roboto/, BoldFont=Roboto-Bold.ttf, ItalicFont=Roboto-Italic.ttf, BoldItalicFont=Roboto-BoldItalic.ttf]{Roboto-Regular.ttf}

% Source Sans Pro
\newfontfamily\headerboldfont[Path=fonts/SourceSansPro/]{SourceSansPro-Semibold.ttf}
\newfontfamily\headerthinfont[Path=fonts/SourceSansPro/]{SourceSansPro-ExtraLight.ttf}
\newfontfamily\headingfont[Path=fonts/SourceSansPro/]{SourceSansPro-Bold.ttf}
\newfontfamily\positionfont[Path=fonts/SourceSansPro/]{SourceSansPro-It.ttf}

\defaultfontfeatures{Mapping=tex-text}
\setmainfont[Mapping=tex-text, Color=textcolor, Path=fonts/SourceSansPro/, BoldFont=SourceSansPro-Semibold.ttf, ItalicFont=SourceSansPro-It.ttf, BoldItalicFont=SourceSansPro-SemiboldIt.ttf]{SourceSansPro-Regular.ttf}

%\setmathfont{XITS Math}


%%%%%%%%%%
% Header %
%%%%%%%%%%

\RequirePackage{tikz}

\newcommand{\rolefont}{%
  \fontsize{14pt}{24pt}\selectfont%
  \positionfont%
  \color{white}%
}

%The letter template changes where current page.north is
%let's reset it
\setlength\headheight{0\p@}



\renewcommand*{\opening}[1]{
\begin{tikzpicture}[remember picture,overlay]
  \node [rectangle, fill=fillheader, anchor=north, minimum width=\paperwidth, minimum height=4cm] (box) at (current page.north){};
  \node [anchor=center] (name) at (box) {%
    \fontsize{40pt}{72pt}\color{header}%
    {\headerthinfont \firstname}{\headerboldfont \lastname}
  };
  \node [anchor=north] at (name.south) {%
    \fontsize{14pt}{24pt}\color{header}%
    \headerthinfont \subtitle%
  };
\end{tikzpicture}
%\vspace{2.5cm}
\vspace{-2\parskip}
  %\def\rectshift{0cm}
  %\vspace{-\rectshift}
  %\begin{tikzpicture}[remember picture,overlay]
%    \node [rectangle, fill=fillheader, anchor=north, minimum width=\paperwidth, minimum height=4cm] (box) at (current page.north) {};

  %\ifx\@empty\fromaddress
 % \thispagestyle{firstpage}%
%    {\raggedleft\@date\par}%
 % \else  % home address
%    %\thispagestyle{empty}%
%    \node [anchor=east,text=fromcolor,align=left] at (box.east) [text=red] {%
%      \fromaddress%
%    };
%  \fi
 % \end{tikzpicture}
 % \vspace{\rectshift}
 % \vspace{-2\parskip}
 % \vspace{2\parskip}%
  \ifx\@empty\fromaddress
    \thispagestyle{firstpage}%
    {\raggedleft\@date\par}%
  \else  % home address
    \thispagestyle{empty}%
    {\raggedleft\begin{tabular}{l@{}}\ignorespaces
    \fromaddress \\*[2\parskip]%
    \@date \end{tabular}\par}%
  \fi
  {\raggedright \toname \\ \toaddress \par}%
  \vspace{2\parskip}%\\
  #1\par\nobreak}

%\pagestyle{empty}
