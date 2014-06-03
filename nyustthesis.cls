% author: Tz-Huan Huang [http://www.csie.ntu.edu.tw/~tzhuan]

% ----------------------------------------------------------------------------
% "THE CHOCOLATE-WARE LICENSE":
% Tz-Huan Huang wrote this file. As long as you retain this notice you
% can do whatever you want with this stuff. If we meet some day, and you think
% this stuff is worth it, you can buy me a chocolate in return Tz-Huan Huang
% ----------------------------------------------------------------------------

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{nyustthesis}[2014/02/12 Thesis template for National Yunlin University of Science and Technology]

% Derived from book class
\DeclareRobustCommand{\@typeen}{Master}
\DeclareRobustCommand{\@typezh}{碩士}
\DeclareRobustCommand{\@classen}{Thesis}
\DeclareRobustCommand{\@classzh}{論文}
\DeclareOption{phd}{\gdef\@typeen{Doctoral}\gdef\@typezh{博士}\gdef\@classen{Dissertation}}
\DeclareOption{proposal}{\gdef\@typeen{Proposal for Doctoral}\gdef\@typezh{博士論文計畫提案書}\gdef\@classen{Dissertation}\gdef\@classzh{}}
\DeclareRobustCommand{\@setspacing}{\doublespacing}
\DeclareOption{singlespacing}{\gdef\@setspacing{\singlespacing}}
\DeclareOption{onehalfspacing}{\gdef\@setspacing{\onehalfspacing}}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{book}}
\ProcessOptions\relax
\LoadClass[a4paper,12pt,oneside]{book}

% Required packages
\RequirePackage[top=3cm,left=3cm,bottom=3cm,right=3cm]{geometry}
\RequirePackage{xeCJK}
\RequirePackage{indentfirst}
\RequirePackage{setspace}
\RequirePackage{titlesec}
\RequirePackage{titletoc}
\RequirePackage{graphicx}
\RequirePackage{caption}
\RequirePackage[list=true]{subcaption}

% Declarations
\DeclareRobustCommand{\university}[2]{\gdef\@universityen{#1}\gdef\@universityzh{#2}}
\DeclareRobustCommand{\institute}[2]{\gdef\@instituteen{#1}\gdef\@institutezh{#2}}
\DeclareRobustCommand{\title}[2]{\gdef\@titleen{#1}\gdef\@titlezh{#2}}
\DeclareRobustCommand{\author}[2]{\gdef\@authoren{#1}\gdef\@authorzh{#2}}
\DeclareRobustCommand{\studentid}[1]{\gdef\@studentid{#1}}
\DeclareRobustCommand{\advisor}[2]{\gdef\@advisoren{#1}\gdef\@advisorzh{#2}}
\DeclareRobustCommand{\year}[2]{\gdef\@yearen{#1}\gdef\@yearzh{#2}}
\DeclareRobustCommand{\month}[2]{\gdef\@monthen{#1}\gdef\@monthzh{#2}}
\DeclareRobustCommand{\day}[1]{\gdef\@day{#1}}
\DeclareRobustCommand{\abstractname}[2]{\gdef\@abstractnameen{#1}\gdef\@abstractnamezh{#2}}
\DeclareRobustCommand{\acknowledgements}[2]{\gdef\@acknowledgementsen{#1}\gdef\@acknowledgementszh{#2}}

\abstractname{Abstract}{摘要}
\acknowledgements{Acknowledgements}{誌謝}

% Show subsection in TOC
\setcounter{tocdepth}{2}

% Chinese "Contents"
\renewcommand{\contentsname}{目錄}

% Chinese "List of Figures"
\renewcommand{\listfigurename}{圖目錄}

% Chinese "List of Tables"
\renewcommand{\listtablename}{表目錄}

% Chinese "Bibliography"
\renewcommand{\bibname}{參考文獻}

% Chinese "Figure" and "Table"
\renewcommand{\figurename}{圖}
\renewcommand{\tablename}{表}

% Chinese "Chapter" and format
\titlespacing{\chapter}{0cm}{-1.3cm}{1em}
\titleformat{\chapter}{\centering\Huge\bfseries}{\zhnumber{\thechapter}、}{0pt}{}

% Setting table of contents format
\titlecontents{chapter}[0em]{}{\zhnumber{\thecontentslabel}、}{}{\titlerule*[0.7pc]{.}\contentspage}[\vspace{-0.6cm}]
\titlecontents{section}[2em]{}{\makebox[3.0em][l]{\thecontentslabel}}{}{\titlerule*[0.7pc]{.}\contentspage}[\vspace{-0.6cm}]
\titlecontents{subsection}[4em]{}{\makebox[3.0em][l]{\thecontentslabel}}{}{\titlerule*[0.7pc]{.}\contentspage}[\vspace{-0.6cm}]

% Setting list of figure format
\titlecontents{figure}[0em]{}{\makebox[4.0em][l]{\figurename\thecontentslabel}}{}{\titlerule*[0.7pc]{.}\contentspage}[\vspace{-0.6cm}]
\titlecontents{subfigure}[2em]{}{\makebox[3.0em][l]{(\thecontentslabel)}}{}{\titlerule*[0.7pc]{.}\contentspage}[\vspace{-0.6cm}]

% Setting list of table format
\titlecontents{table}[0em]{}{\makebox[4.0em][l]{\tablename\thecontentslabel}}{}{\titlerule*[0.7pc]{.}\contentspage}[\vspace{-0.6cm}]
\titlecontents{subtable}[2em]{}{\makebox[3.0em][l]{(\thecontentslabel)}}{}{\titlerule*[0.7pc]{.}\contentspage}[\vspace{-0.6cm}]

% Space between lines
\linespread{1.5}\selectfont

% Space between paragraph
\setlength{\parskip}{0.5cm}

% Set first indent to twice the width of an character
\input{CJKindent.tex}

\DeclareRobustCommand{\keywordszh}[1]{\noindent{\textbf{關鍵字：}#1}}
\DeclareRobustCommand{\keywordsen}[1]{\noindent{\textbf{Keywords:} #1}}

\DeclareRobustCommand{\makecover}{
  \begin{titlepage}
    \vspace{1cm}
    \begin{singlespace}
    \begin{center}
      \fontsize{18}{27}\selectfont
      \@universityzh\@institutezh\par
        \@typezh{}\@classzh\par
      {\fontsize{18}{27}\selectfont
        \@instituteen\par}
      {\fontsize{18}{27}\selectfont
        \@universityen\par
        \@typeen{} \@classen\par}
      \vspace{\fill}
      \@titlezh\par
      \@titleen\par
      \vspace{\fill}
      \@authorzh\\
      \@authoren\par
      \vspace{2cm}
      指導教授：\@advisorzh\\
      Advisor: \@advisoren\par
      \vspace{1.5cm}
      中華民國 \@yearzh 年 \@monthzh 月\\
      \@monthen, \@yearen
    \end{center}
    \end{singlespace}
    \vspace{1cm}
  \end{titlepage}
}

%  stolen from CJKfntef
%
%  myCJKfilltwosides environment:
%    Align CJK characters to fill two sides.
%
%  Usage:
%    \begin{myCJKfilltwosides}{width}
%      first line \\
%      second line \\
%      ... \\
%      last line
%    \end{myCJKfilltwosides}
%
\newif\ifmyCJK@fillbegin@
\global\myCJK@fillbegin@false
\newif\ifmyCJK@filltwosides@
\global\myCJK@filltwosides@false

\newenvironment{myCJKfilltwosides}[1]{
  \leavevmode
  \vbox\bgroup
    \global\myCJK@filltwosides@true
    \global\let\myCJK@filltwosidesSymbol \CJKsymbol

    \def\myCJK@ftscr{
      \egroup
      \global\myCJK@fillbegin@false
      \hbox to #1\bgroup
        \ignorespaces}

    \let\\ \myCJK@ftscr

    \def\CJKsymbol##1{
      \ifmyCJK@fillbegin@
        \hfill
        \myCJK@filltwosidesSymbol{##1}
      \else
        \myCJK@filltwosidesSymbol{##1}
        \global\myCJK@fillbegin@true
      \fi}

    \hbox to #1\bgroup
      \ignorespaces
 }{
  \egroup
  \egroup

  \global\let\CJKsymbol \myCJK@filltwosidesSymbol
  \global\myCJK@fillbegin@false
  \global\myCJK@filltwosides@false}


\DeclareRobustCommand{\CJKmove}[1]{\raisebox{.35em}{#1}}
\DeclareRobustCommand{\makespine}{
  \noindent\rotatebox{-90}{
    \CJKfamily{sidepagefont}
    \begin{tabular}{m{3.5cm}m{0.1cm}m{2cm}m{0.1cm}m{10cm}m{1cm}m{2.5cm}m{0.1cm}m{1.5cm}}
      \fontsize{8}{6}\selectfont
      \begin{myCJKfilltwosides}{3cm}\CJKmove{\@universityzh}\end{myCJKfilltwosides}\newline
      \begin{myCJKfilltwosides}{3cm}\CJKmove{\@institutezh}\end{myCJKfilltwosides} & &
      \CJKmove{\@typezh\@classzh} & &
      {\fontsize{14}{14}\selectfont\CJKmove{\@titlezh}} & &
      {\fontsize{14}{14}\selectfont\CJKmove{\@authorzh{} 撰}} & &
      \raisebox{-0.25em}{\rotatebox{90}{\@yearzh{}} \rotatebox{90}{\hspace{0.25em}\@monthzh{}}}
    \end{tabular}}
}

\DeclareRobustCommand{\makecertification}{
  \if@openright\cleardoublepage\else\clearpage\fi
  \begin{singlespace}
  \begin{center}
    \fontsize{24}{36}\selectfont\@universityzh\@typezh{}學位\@classzh\\
    口試委員會審定書\par
    \vspace{0.5cm}
    {\fontsize{20}{30}\selectfont\@titlezh\par\@titleen\par}
  \end{center}
  \addcontentsline{toc}{chapter}{口試委員會審定書}
  \vspace{1cm}
  \fontsize{15}{24}\selectfont
\hspace{30pt}本論文係\@authorzh{}君 (\@studentid)
在\@universityzh\@institutezh{}完成之\@typezh{}學位\@classzh，%
於民國 \@yearzh 年 \@monthzh 月 \@day 日%
承下列考試委員審查通過及口試及格，特此證明\par
  \end{singlespace}
  \vspace{\fill}
  \begin{center}
  \begin{doublespace}
  \fontsize{15}{30}\selectfont
  \begin{tabular}{p{2.75cm}p{12.5cm}}
    \raisebox{30pt}{口試委員：} & \rule{11.5cm}{1pt} \\
    & \rule{5cm}{1pt}\hspace{1.5cm}\rule{5cm}{1pt} \\
    & \rule{5cm}{1pt}\hspace{1.5cm}\rule{5cm}{1pt} \\
    & \rule{5cm}{1pt}\hspace{1.5cm}\rule{5cm}{1pt} \\
    & \rule{5cm}{1pt}\hspace{1.5cm}\rule{5cm}{1pt} \\
    \raisebox{5pt}{所\hspace{15pt}長：} & \rule{8.5cm}{1pt}
  \end{tabular}
  \end{doublespace}
  \end{center}
  \vspace*{-1cm}
}

\newenvironment{quotationpage}[1]
  {\if@openright\cleardoublepage\else\clearpage\fi
   \chapter*{\centerline{#1}}
   \addcontentsline{toc}{chapter}{#1}
   \quotation}
  {\endquotation}

\newenvironment{abstracten}{\begin{quotationpage}{\@abstractnameen}}{\end{quotationpage}}
\newenvironment{abstractzh}{\begin{quotationpage}{\@abstractnamezh}}{\end{quotationpage}}
\newenvironment{acknowledgementsen}{\begin{quotationpage}{\@acknowledgementsen}}{\end{quotationpage}}
\newenvironment{acknowledgementszh}{\begin{quotationpage}{\@acknowledgementszh}}{\end{quotationpage}}

\setcounter{tocdepth}{2}
\pagestyle{plain}
\@setspacing
