%%
%% This is file `hustreport.cls',
%% generated with the docstrip utility.
%%
%% The original source files were:
%%
%% hustreport.dtx  (with options: `class')
%% 
%% This is a generated file.
%% 
%% Copyright (C) 2013-2014 by Xu Cheng <xucheng@me.com>
%%               2014-2016 by hust-latex <https://github.com/hust-latex>
%% 
%% This work may be distributed and/or modified under the
%% conditions of the LaTeX Project Public License, either version 1.3
%% of this license or (at your option) any later version.
%% The latest version of this license is in
%%   http://www.latex-project.org/lppl.txt
%% and version 1.3 or later is part of all distributions of LaTeX
%% version 2005/12/01 or later.
%% 
%% This work has the LPPL maintenance status `maintained'.
%% 
%% The Current Maintainer of this work is hust-latex Organization.
%% 
%% This work consists of the files hustreport.dtx,
%% hustreport.ins and the derived file hustreport.cls
%% along with its document and example files.
%% 
\NeedsTeXFormat{LaTeX2e}[1999/12/01]
\ProvidesClass{hustreport}
[2016/06/01 v1.1 A Report Template for Huazhong University of Science and Technology]
%% \CharacterTable
%% {Upper-case    \A\B\C\D\E\F\G\H\I\J\K\L\M\N\O\P\Q\R\S\T\U\V\W\X\Y\Z
%%  Lower-case    \a\b\c\d\e\f\g\h\i\j\k\l\m\n\o\p\q\r\s\t\u\v\w\x\y\z
%%  Digits        \0\1\2\3\4\5\6\7\8\9
%%  Exclamation   \!     Double quote  \"     Hash (number) \#
%%  Dollar        \$     Percent       \%     Ampersand     \&
%%  Acute accent  \'     Left paren    \(     Right paren   \)
%%  Asterisk      \*     Plus          \+     Comma         \,
%%  Minus         \-     Point         \.     Solidus       \/
%%  Colon         \:     Semicolon     \;     Less than     \<
%%  Equals        \=     Greater than  \>     Question mark \?
%%  Commercial at \@     Left bracket  \[     Backslash     \\
%%  Right bracket \]     Circumflex    \^     Underscore    \_
%%  Grave accent  \`     Left brace    \{     Vertical bar  \|
%%  Right brace   \}     Tilde         \~}
% \RequirePackage{booktabs}


\RequirePackage{ifthen}
\RequirePackage{xkeyval}
\newif\ifHUST@finalformat
\HUST@finalformattrue
\DeclareOptionX{format}[final]{
  \ifthenelse{\equal{#1}{final}}{
    \HUST@finalformattrue
  }{
    \ifthenelse{\equal{#1}{draft}}{
      \HUST@finalformatfalse
    }{
      \ClassError{hustreport}
      {Option format can only be 'final' or 'draft'}
      {Try to remove option format^^J}
    }
  }
}
\gdef\HUST@language{chinese}
\DeclareOptionX{language}[chinese]{
  \ifthenelse{\equal{#1}{chinese} \OR \equal{#1}{english}}{
    \gdef\HUST@language{#1}
  }{
    \ClassError{hustreport}
    {Option language can only be 'chinese' or 'english'}
    {Try to remove option language^^J}
  }
}
\gdef\HUST@degree{ms}
\DeclareOptionX{degree}[ms]{
  \ifthenelse{\equal{#1}{ms} \OR \equal{#1}{me} \OR \equal{#1}{phd}}{
    \gdef\HUST@degree{#1}
  }{
     \ClassError{hustreport}
      {Option degree can only be 'ms', 'me' or 'phd'}
      {Try to remove option degree^^J}
  }
}
\gdef\HUST@category{none}
\DeclareOptionX{category}[none]{
  \ifthenelse{\equal{#1}{none} \OR \equal{#1}{literature-survey} \OR \equal{#1}{thesis-proposal} \OR \equal{#1}{academic-report} \OR \equal{#1}{midterm-progress} \OR \equal{#1}{practice}}{
    \gdef\HUST@category{#1}
  }{
    \ClassError{hustreport}
    {Option category can only be 'none', 'literature-survey', 'thesis-proposal', 'academic-report', 'midterm-progress' or 'practice'}
    {Try to remove option category^^J}
  }
}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{book}}
\ProcessOptionsX
\LoadClass[12pt, a4paper, openany]{book}
\RequirePackage{iftex}
\ifXeTeX\else
  \ifLuaTeX\else
    \begingroup
      \errorcontextlines=-1\relax
      \newlinechar=10\relax
      \errmessage{^^J
      *******************************************************^^J
      * XeTeX or LuaTeX is required to compile this document.^^J
      * Sorry!^^J
      *******************************************************^^J
      }%
    \endgroup
  \fi
\fi
\ifthenelse{\equal{\HUST@language}{english}}{
    \RequirePackage{fontspec}
    \setmainfont[
      Ligatures={Common,TeX},
      Extension=.otf,
      UprightFont=*-regular,
      BoldFont=*-bold,
      ItalicFont=*-italic,
      BoldItalicFont=*-bolditalic]{texgyretermes}
    \setsansfont[Ligatures={Common,TeX}]{Droid Sans}
    \setmonofont{CMU Typewriter Text}
    \defaultfontfeatures{Mapping=tex-text}
    \let\HEI\relax
    \let\KAI\relax
    \let\FANGSONG\relax
    \newcommand{\hei}[1]{#1}
    \newcommand{\kai}[1]{#1}
    \newcommand{\fangsong}[1]{#1}
}{}
\ifthenelse{\equal{\HUST@language}{chinese}}{
    \ifXeTeX  % XeTeX下使用fontspec + xeCJK处理字体
      % 英文字体
      \RequirePackage{fontspec}
      \RequirePackage{xunicode}
      \setmainfont[
        Ligatures={Common,TeX},
        Extension=.otf,
        UprightFont=*-regular,
        BoldFont=*-bold,
        ItalicFont=*-italic,
        BoldItalicFont=*-bolditalic]{texgyretermes}
      \setsansfont[Ligatures={Common,TeX}]{Droid Sans}
      \setmonofont{CMU Typewriter Text}
      \defaultfontfeatures{Mapping=tex-text}
      % 中文字体
      \RequirePackage[CJKmath]{xeCJK}
      \setCJKmainfont[
       BoldFont={Adobe Heiti Std},
       ItalicFont={Adobe Kaiti Std}]{Adobe Song Std}
      \setCJKsansfont{Adobe Kaiti Std}
      \setCJKmonofont{Adobe Fangsong Std}
      \xeCJKsetup{PunctStyle=kaiming}

      \newcommand\ziju[2]{{\renewcommand{\CJKglue}{\hskip #1} #2}}
      \newCJKfontfamily\HEI{Adobe Heiti Std}
      \newCJKfontfamily\KAI{Adobe Kaiti Std}
      \newCJKfontfamily\FANGSONG{Adobe Fangsong Std}
      \newcommand{\hei}[1]{{\HEI #1}}
      \newcommand{\kai}[1]{{\KAI #1}}
      \newcommand{\fangsong}[1]{{\FANGSONG #1}}
    \else\fi
    \ifLuaTeX  % LuaTeX下使用luatex-ja处理字体 [推荐]
      \RequirePackage{luatexja-fontspec}
      % 英文字体
      \setmainfont[Ligatures={Common,TeX}]{Tex Gyre Termes}
      \setsansfont[Ligatures={Common,TeX}]{Droid Sans}
      \setmonofont{CMU Typewriter Text}
      \defaultfontfeatures{Mapping=tex-text,Scale=MatchLowercase}
      % 中文字体
      \setmainjfont[
       BoldFont={AdobeHeitiStd-Regular},
       ItalicFont={AdobeKaitiStd-Regular}]{AdobeSongStd-Light}
      \setsansjfont{AdobeKaitiStd-Regular}
      \defaultjfontfeatures{JFM=kaiming}

      \newcommand\ziju[2]{\vbox{\ltjsetparameter{kanjiskip=#1} #2}}
      \newjfontfamily\HEI{AdobeHeitiStd-Regular}
      \newjfontfamily\KAI{AdobeKaitiStd-Regular}
      \newjfontfamily\FANGSONG{AdobeFangsongStd-Regular}
      \newcommand{\hei}[1]{{\jfontspec{AdobeHeitiStd-Regular} #1}}
      \newcommand{\kai}[1]{{\jfontspec{AdobeKaitiStd-Regular} #1}}
      \newcommand{\fangsong}[1]{{\jfontspec{AdobeFangsongStd-Regular} #1}}
    \else\fi
    \RequirePackage{zhnumber}
    \def\CJKnumber#1{\zhnumber{#1}} % 兼容CJKnumb
}{}
\linespread{1.5}\selectfont
\RequirePackage{geometry}
\geometry{
  top=1.2in,
  bottom=1.2in,
  left=1in,
  right=1in,
  includefoot
}
\ifthenelse{\isundefined{\pagewidth}}{
  \pdfpagewidth=\paperwidth
  \pdfpageheight=\paperheight
}{
  \pagewidth=\paperwidth
  \pageheight=\paperheight
}
\RequirePackage{indentfirst}
\setlength{\parindent}{2em}
\setlength{\parskip}{0pt plus 2pt minus 1pt}
\RequirePackage{color}
\RequirePackage[table]{xcolor}
\RequirePackage[unicode]{hyperref}
\hypersetup{
  bookmarksnumbered=true,
  bookmarksopen=true,
  bookmarksopenlevel=1,
  breaklinks=true,
  colorlinks=true,
  allcolors=black,
  linktoc=all,
  plainpages=false,
  pdfpagelabels=true,
  pdfstartview={XYZ null null 1},
  pdfinfo={Template.Info={hustreport.cls v1.0 2013/07/01, Copyright (C) 2013-2014 by Xu Cheng 2014 by hust-latex, https://github.com/hust-latex/hustreport}}
}
\RequirePackage{bm}
\RequirePackage{amsmath,amssymb,amsfonts}
\RequirePackage[amsmath,amsthm,thmmarks,hyperref,thref]{ntheorem}
\RequirePackage{fancynum}
\setfnumgsym{\,}

\RequirePackage[lined,boxed,linesnumbered,ruled,vlined,algochapter,commentsnumbered]{algorithm2e}
\SetKwInOut{Input}{input}\SetKwInOut{Output}{output}

\RequirePackage{overpic}
\RequirePackage{graphicx,caption,subcaption}
\RequirePackage{array}
\RequirePackage{multirow,tabularx,ltxtable}
\newcolumntype{Y}{>{\centering\arraybackslash}X}

\RequirePackage{listings}
\RequirePackage[numbers,square,comma,super,sort&compress]{natbib}
\RequirePackage{titlesec}
\RequirePackage{titletoc}
\RequirePackage{tocvsec2}
\RequirePackage[inline]{enumitem}
\RequirePackage{fancyhdr}
\RequirePackage{afterpage}
\RequirePackage{datenumber}
\RequirePackage{etoolbox}
\RequirePackage{appendix}
\RequirePackage[titles]{tocloft}
\RequirePackage{xstring}
\RequirePackage{perpage}
\def\title#1{\gdef\HUST@title{#1}\hypersetup{pdftitle={#1}}}
\title{}
\def\author#1{\gdef\HUST@author{#1}\hypersetup{pdfauthor={#1}}}
\author{}
\def\major#1{\gdef\HUST@major{#1}}
\major{}
\def\advisor#1{\gdef\HUST@advisor{#1}}
\advisor{}
\def\mentor#1{\gdef\HUST@mentor{#1}}
\mentor{}
\def\department#1{\gdef\HUST@department{#1}}
\department{}
\def\stuno#1{\gdef\HUST@stuno{#1}}
\stuno{}
\def\categoryname#1{\gdef\HUST@categoryname{#1}}
\categoryname{}
\long\def\abstract#1{\long\gdef\HUST@abstract{#1}}
\abstract{}
\def\keywords#1{\gdef\HUST@keywords{#1}\hypersetup{pdfkeywords={#1}}}
\keywords{}
\ifthenelse{\equal{\HUST@language}{chinese}}{
    \def\indexname{索引}
    \def\figurename{图}
    \def\tablename{表}
    \AtBeginDocument{\def\listingscaption{代码}}
    \def\bibname{参考文献}
    \def\contentsname{目\hspace{1em}录}
    \def\contentsnamenospace{目录}
    \def\appendixname{附录}
    \def\HUST@listfigurename{插图索引}
    \def\HUST@listtablename{表格索引}
    \def\equationautorefname{公式}
    \def\footnoteautorefname{脚注}
    \def\itemautorefname~#1\null{第~#1~项\null}
    \def\figureautorefname{图}
    \def\tableautorefname{表}
    \def\appendixautorefname{附录}
    \expandafter\def\csname\appendixname autorefname\endcsname{\appendixname}
    \def\chapterautorefname~#1\null{第\zhnumber{#1}章\null}
    \def\sectionautorefname~#1\null{#1~小节\null}
    \def\subsectionautorefname~#1\null{#1~小节\null}
    \def\subsubsectionautorefname~#1\null{#1~小节\null}
    \def\FancyVerbLineautorefname~#1\null{第~#1~行\null}
    \def\pageautorefname~#1\null{第~#1~页\null}
    \def\lstlistingautorefname{代码}
    \def\assumptionautorefname{假设}
    \def\definitionautorefname{定义}
    \def\propositionautorefname{命题}
    \def\lemmaautorefname{引理}
    \def\theoremautorefname{定理}
    \def\axiomautorefname{公理}
    \def\corollaryautorefname{推论}
    \def\exerciseautorefname{练习}
    \def\exampleautorefname{例}
    \def\proofautorefname{证明}
    \SetAlgorithmName{算法}{算法}{算法索引}
    \SetAlgoProcName{过程}{过程}
    \SetAlgoFuncName{函数}{函数}
    \def\AlgoLineautorefname~#1\null{第~#1~行\null}
}{}
\ifthenelse{\equal{\HUST@language}{chinese}}{}{
    \def\HUST@listfigurename{List of Figures}
    \def\HUST@listtablename{List of Tables}
    \def\equationautorefname{Equation}
    \def\footnoteautorefname{Footnote}
    \def\itemautorefname{Item}
    \def\figureautorefname{Figure}
    \def\tableautorefname{Table}
    \def\appendixautorefname{Appendix}
    \expandafter\def\csname\appendixname autorefname\endcsname{\appendixname}
    \def\chapterautorefname{Chapter}
    \def\sectionautorefname{Section}
    \def\subsectionautorefname{Subsection}
    \def\subsubsectionautorefname{Sub-subsection}
    \def\FancyVerbLineautorefname{Line}
    \def\pageautorefname{Page}
    \def\lstlistingautorefname{Code Fragment}
    \def\assumptionautorefname{Assumption}
    \def\definitionautorefname{Definition}
    \def\propositionautorefname{Proposition}
    \def\lemmaautorefname{Lemma}
    \def\theoremautorefname{Theorem}
    \def\axiomautorefname{Axiom}
    \def\corollaryautorefname{Corollary}
    \def\exerciseautorefname{Exercise}
    \def\exampleautorefname{Example}
    \def\proofautorefname{Proof}
    \SetAlgorithmName{Algorithm}{Algorithm}{List of Algorithms}
    \SetAlgoProcName{Procedure}{Procedure}
    \SetAlgoFuncName{Function}{Function}
    \def\AlgoLineautorefname{Line}
}
\def\HUST@headcontent{华中科技大学\textperiodcentered{}管理学院}

\def\HUST@zhabstractname{摘\hspace{1em}要}
\def\HUST@zhabstractnamenospace{摘要}
\def\HUST@zhkeywordstitle{关键词：}
\def\HUST@enabstractname{Abstract}
\def\HUST@enkeywordstitle{Key words:}

\ifthenelse{\equal{\HUST@language}{chinese}}{
  \def\HUST@ackname{致\hspace{1em}谢}
  \def\HUST@acknamenospace{致谢}
  \def\HUST@publicationtitle{攻读学位期间发表的学术论文}
}{
  \def\HUST@ackname{Acknowledge}
  \def\HUST@acknamenospace{Acknowledge}
  \def\HUST@publicationtitle{Publication}
}

\ifthenelse{\equal{\HUST@category}{none}}{
  \categoryname{}
}{}
\ifthenelse{\equal{\HUST@category}{literature-survey}}{
  \ifthenelse{\equal{\HUST@language}{chinese}}
  {\categoryname{文献综述}}
  {\categoryname{Literature Survey}}
}{}
\ifthenelse{\equal{\HUST@category}{thesis-proposal}}{
  \ifthenelse{\equal{\HUST@language}{chinese}}
  {\categoryname{选题}}
  {\categoryname{Thesis Proposal}}
}{}
\ifthenelse{\equal{\HUST@category}{academic-report}}{
  \ifthenelse{\equal{\HUST@language}{chinese}}
  {\categoryname{学术报告}}
  {\categoryname{Academic Report}}
}{}
\ifthenelse{\equal{\HUST@category}{midterm-progress}}{
  \ifthenelse{\equal{\HUST@language}{chinese}}
  {\categoryname{论文中期进展}}
  {\categoryname{Midterm Progress Report}}
}{}
\ifthenelse{\equal{\HUST@category}{practice}}{
  \ifthenelse{\equal{\HUST@language}{chinese}}
  {\categoryname{实践环节}}
  {\categoryname{Practice Report}}
}{}

\ifthenelse{\equal{\HUST@language}{chinese}}{
  \hypersetup{pdfsubject={研究生{\HUST@categoryname}报告}}
}{
  \ifthenelse{\equal{\HUST@categoryname}{}}{
    \hypersetup{pdfsubject={Postgraduate~Report}}
  }{
    \hypersetup{pdfsubject={Postgraduate~\HUST@categoryname}}
  }
}

\newcommand{\textbu}[1]{\textbf{\textup{#1}}}

\def\listfigurename{\HUST@listfigurename}
\def\listtablename{\HUST@listtablename}
\allowdisplaybreaks[4]
\abovedisplayskip=0pt
\abovedisplayshortskip=0pt
\belowdisplayskip=0pt
\belowdisplayshortskip=0pt
% \abovedisplayskip=10bp plus 2bp minus 2bp
% \abovedisplayshortskip=10bp plus 2bp minus 2bp
% \belowdisplayskip=\abovedisplayskip
% \belowdisplayshortskip=\abovedisplayshortskip

\setlength{\abovecaptionskip}{0pt}
\setlength{\belowcaptionskip}{0pt}
\captionsetup{skip=0pt}

\numberwithin{equation}{chapter}
\theoremnumbering{arabic}
% \ifthenelse{\equal{\HUST@language}{chinese}}{
%   \theoremseparator{：}
% }{
%   \theoremseparator{:}
% }
\theoremseparator{:}
\theorempreskip{0ex}
\theorempostskip{0ex}
\theoremheaderfont{\normalfont\bfseries\HEI}
\theoremindent 2.0em
% \theoremsymbol{:}

\theoremstyle{definition}
\theorembodyfont{\normalfont}
\ifthenelse{\equal{\HUST@language}{chinese}}{
  \newtheorem{definition}{定义}[chapter]
}{
  \newtheorem{definition}{Definition}[chapter]
}

% \theoremstyle{plain}
% \theorembodyfont{\itshape}
\theoremstyle{definition}
\theorembodyfont{\normalfont}
\ifthenelse{\equal{\HUST@language}{chinese}}{
  \newtheorem{assumption}{假设}[chapter]
  \newtheorem{proposition}{命题}[chapter]
  \newtheorem{lemma}{引理}[chapter]
  \newtheorem{theorem}{定理}[chapter]
  \newtheorem{axiom}{公理}[chapter]
  \newtheorem{corollary}{推论}[chapter]
  \newtheorem{exercise}{练习}[chapter]
  \newtheorem{example}{例}[chapter]
  \def\proofname{\hei{证明}}
}{
  \newtheorem{assumption}{Assumption}[chapter]
  \newtheorem{proposition}{Proposition}[chapter]
  \newtheorem{lemma}{Lemma}[chapter]
  \newtheorem{theorem}{Theorem}[chapter]
  \newtheorem{axiom}{Axiom}[chapter]
  \newtheorem{corollary}{Corollary}[chapter]
  \newtheorem{exercise}{Exercise}[chapter]
  \newtheorem{example}{Example}[chapter]
  \def\proofname{\textbf{Proof}}
}
\setlength{\intextsep}{6pt plus 0.1\baselineskip minus 0.1\baselineskip}
\setlength{\textfloatsep}{0pt plus 0.1\baselineskip minus 0.2\baselineskip}
\renewcommand{\textfraction}{0.15}
\renewcommand{\topfraction}{0.85}
\renewcommand{\bottomfraction}{0.65}
\renewcommand{\floatpagefraction}{0.60}
\newcommand{\tabincell}[2]{\begin{tabular}{@{}#1@{}}#2\end{tabular}}
\def\@cline#1-#2\@nil{%
  \omit
  \@multicnt#1%
  \advance\@multispan\m@ne
  \ifnum\@multicnt=\@ne\@firstofone{&\omit}\fi
  \@multicnt#2%
  \advance\@multicnt-#1%
  \advance\@multispan\@ne
  \leaders\hrule\@height\arrayrulewidth\hfill
  \cr
  \noalign{\nobreak\vskip-\arrayrulewidth}}
\newif\ifHUST@useoldtabular
\HUST@useoldtabularfalse
\def\TurnOffTabFontSetting{\HUST@useoldtabulartrue}
\def\TurnOnTabFontSetting{\HUST@useoldtabularfalse}
\AtBeginEnvironment{tabular}{
  \ifHUST@useoldtabular\else
    \fontsize{11pt}{15.4pt}\selectfont
  \fi
}
\AtBeginEnvironment{tabularx}{
  \ifHUST@useoldtabular\else
    \fontsize{11pt}{15.4pt}\selectfont
  \fi
}
\AtBeginEnvironment{longtable}{
  \ifHUST@useoldtabular\else
    \fontsize{11pt}{15.4pt}\selectfont
  \fi
}
\DeclareCaptionFont{HUST@captionfont}{\fontsize{11pt}{14.3pt}\selectfont}
\DeclareCaptionLabelFormat{HUST@caplabel}{#1~#2}
\captionsetup{
  font=HUST@captionfont,
  labelformat=HUST@caplabel,
  format=hang,
  labelsep=quad,
  skip=12pt
}
\renewcommand{\thetable}{\arabic{chapter}.\arabic{table}}
\renewcommand{\thefigure}{\arabic{chapter}-\arabic{figure}}
\definecolor{HUST@lstgreen}{rgb}{0,0.6,0}
\definecolor{HUST@lstmauve}{rgb}{0.58,0,0.82}

\lstset{
  basicstyle=\footnotesize\ttfamily\linespread{1}\selectfont\FANGSONG,
  keywordstyle=\color{blue}\bfseries,
  commentstyle=\color{HUST@lstgreen}\itshape\KAI,
  stringstyle=\color{HUST@lstmauve},
  showspaces=false,
  showstringspaces=false,
  showtabs=false,
  numbers=left,
  numberstyle=\tiny\color{black},
  frame=lines,
  rulecolor=\color{black},
  breaklines=true
}
\setcounter{secnumdepth}{3}
\titleformat{\chapter}
  {
    \bfseries
    \HEI
    \centering
    \fontsize{18pt}{23.4pt}\selectfont
  }
  {
    \ifthenelse{\equal{\HUST@language}{chinese}}
    {\zhnumber{\thechapter}}
    {Chapter~\thechapter}
  }
  {1em}
  {}
\titlespacing*{\chapter}{0pt}{0pt}{20pt}
\titleformat*{\section}{\bfseries\HEI\fontsize{16pt}\baselineskip\selectfont}
\titlespacing*{\section}{0pt}{0pt}{0pt}
\titleformat*{\subsection}{\bfseries\HEI\fontsize{14pt}{14pt}\selectfont}
\titlespacing*{\subsection}{0pt}{0pt}{0pt}
\titleformat*{\subsubsection}{\bfseries\HEI\fontsize{13pt}{14pt}\selectfont}
\titlespacing*{\subsubsection}{0pt}{0pt}{0pt}
% \titleformat*{\subsection}{\bfseries\HEI\fontsize{14pt}{18.2pt}\selectfont}
% \titlespacing*{\subsection}{0pt}{12pt}{6pt}
% \titleformat*{\subsubsection}{\bfseries\HEI\fontsize{13pt}{16.9pt}\selectfont}
% \titlespacing*{\subsubsection}{0pt}{12pt}{6pt}
\setcounter{tocdepth}{1}
\contentsmargin{2.0em}
\newskip\HUST@oldcftbeforechapskip
\HUST@oldcftbeforechapskip=\cftbeforechapskip
\newskip\HUST@oldcftbeforesecskip
\HUST@oldcftbeforesecskip=\cftbeforesecskip
\let\HUST@oldl@chapter\l@chapter
\let\HUST@oldl@section\l@section
\let\HUST@oldl@subsection\l@subsection
\def\l@chapter#1#2{\HUST@oldl@chapter{#1}{#2}\cftbeforechapskip=3pt}
\def\l@section#1#2{\HUST@oldl@section{#1}{#2}\cftbeforechapskip=\HUST@oldcftbeforechapskip\cftbeforesecskip=3pt}
\def\l@subsection#1#2{\HUST@oldl@subsection{#1}{#2}\cftbeforesecskip=\HUST@oldcftbeforesecskip}
\renewcommand*\cftfigpresnum{\figurename~}
\newlength{\HUST@cftfignumwidth@tmp}
\settowidth{\HUST@cftfignumwidth@tmp}{\cftfigpresnum}
\addtolength{\cftfignumwidth}{\HUST@cftfignumwidth@tmp}
\renewcommand{\cftfigaftersnumb}{\quad~}
\renewcommand*\cfttabpresnum{\tablename~}
\newlength{\HUST@cfttabnumwidth@tmp}
\settowidth{\HUST@cfttabnumwidth@tmp}{\cfttabpresnum}
\addtolength{\cfttabnumwidth}{\HUST@cfttabnumwidth@tmp}
\renewcommand{\cfttabaftersnumb}{\quad~}
\let\ps@plain\ps@fancy
\pagestyle{fancy}
\fancyhf{}
\renewcommand{\headrulewidth}{0pt}
\renewcommand{\footrulewidth}{0pt}
\ifthenelse{\equal{\HUST@language}{english}}{
  \fancyfoot[C]{\thepage}
}{
  \ifHUST@finalformat
    \fancyfoot[C]{\thepage}
  \else
    \fancyhead[C]{
      \FANGSONG{\fontsize{14pt}{18.2pt}\selectfont\HUST@headcontent}
      \vskip 0.3\normalbaselineskip
      \hrule width \textwidth height 0.4pt
    }
    \fancyfoot[C]{
      \hrule width \textwidth height 0.4pt
      \vskip 0.3\normalbaselineskip
      \thepage
    }
  \fi
}
\setlist{noitemsep,partopsep=0pt,topsep=0ex}
\setlist[1]{labelindent=\parindent}
\setlist[enumerate,1]{label=\arabic*.,ref=\arabic*}
\setlist[enumerate,2]{label*=\arabic*,ref=\theenumi.\arabic*}
\setlist[enumerate,3]{label=\emph{\alph*}),ref=\theenumii\emph{\alph*}}
\setlist[description]{font=\bfseries\HEI}
\MakePerPage{footnote}
\def\frontmatter{
  \clearpage
  \@mainmatterfalse
  \pagenumbering{Roman}
}
\def\mainmatter{
  \clearpage
  \@mainmattertrue
  \pagenumbering{arabic}
}
\def\backmatter{
  \clearpage
  \@mainmatterfalse
  \settocdepth{chapter}
  \hypersetup{bookmarksopenlevel=0}
}

\renewcommand{\today}{\number\year 年 \number\month 月 \number\day 日}
\def\HUST@zhtitlepage{
  \begin{center}
  \null\vskip 1cm
  \includegraphics[width=.8\textwidth]{hust-title.pdf} \\[0.8cm]
  \parbox[t][][t]{\textwidth}{
    \centering
    \fontsize{22pt}{33.0pt}\selectfont
    \HEI
    % \ziju{8pt}{管理学院}
    \ziju{8pt}{2018年博士生“申请考核制”}
    % \ifthenelse{\equal{\HUST@categoryname}{}}{
    %   \ziju{8pt}{研究生（ ~\hspace{6em}~）报告}
    % }{
    %   \ziju{8pt}{研究生（ \HUST@categoryname）报告}
    % }
  }
  \vskip 0.8cm
  \parbox[t][][t]{\textwidth}{
    \centering
    \fontsize{20pt}{12.0pt}\selectfont
    \hei{管理科学与工程博士项目}
    % \ifthenelse{\equal{\HUST@title}{}}{
    %   \hei{题目：~\hspace{13em}}
    % }{
    %   \hei{题目：~\HUST@title}
    % }
  }
  \vfill
  \parbox[t][][t]{\textwidth}{
    \centering
    \TurnOffTabFontSetting
    \fontsize{16pt}{24.0pt}\selectfont
    \begin{tabular}{p{6em}@{\hspace{1em}}l}
      {{报}\hfill{名}\hfill{号}} & \makebox[10em][l]{\rule[-5.0pt]{10em}{1pt}\hspace{-10em}\hfill\HUST@stuno\hfill} \\[2ex]
      {{姓}\hfill{名}} & \makebox[10em][l]{\rule[-5.0pt]{10em}{1pt}\hspace{-10em}\hfill\HUST@author\hfill} \\[2ex]
      {{方}\hfill{向}} & \makebox[10em][l]{\rule[-5.0pt]{10em}{1pt}\hspace{-10em}\hfill\HUST@major\hfill} \\[2ex]
      {{指}\hfill{导}\hfill{教}\hfill{师}} & \makebox[10em][l]{\rule[-5.0pt]{10em}{1pt}\hspace{-10em}\hfill\HUST@advisor\hfill} \\[2ex]
      {{报}\hfill{考}\hfill{教}\hfill{师}} & \makebox[10em][l]{\rule[-5.0pt]{10em}{1pt}\hspace{-10em}\hfill\HUST@mentor\hfill}
    \end{tabular}
    \TurnOnTabFontSetting
  }
  \vskip 2cm
  \parbox[t][][t]{\textwidth}{
    \centering
    \fontsize{16pt}{24.0pt}\selectfont
    \today
  }
  \end{center}
}
\def\HUST@entitlepage{
  \begin{center}
  \null\vskip 1cm
  \parbox[t][][t]{\textwidth}{
    \centering
    \fontsize{20pt}{30.0pt}\selectfont
    \scshape
    Huazhong University of Science and Technology
  }
  \vskip 0.8cm
  \parbox[t][][t]{\textwidth}{
    \centering
    \fontsize{20pt}{30.0pt}\selectfont
    \scshape
    \ifthenelse{\equal{\HUST@categoryname}{}}{
      Postgraduate~\hspace{6em}~Report
    }{
      Postgraduate~\HUST@categoryname
    }
  }
  \vskip 0.8cm
  \parbox[t][][t]{\textwidth}{
    \centering
    \fontsize{18pt}{27.0pt}\selectfont
    \bfseries
    \ifthenelse{\equal{\HUST@title}{}}{
      Title:~\hspace{13em}
    }{
      Title:~\HUST@title
    }
  }
  \vfill
  \parbox[t][][t]{\textwidth}{
    \centering
    \TurnOffTabFontSetting
    \fontsize{16pt}{24.0pt}\selectfont
    \begin{tabular}{p{5em}@{~}l}
      {Student ID} & \makebox[16em][l]{\rule[-2.0pt]{16em}{1pt}\hspace{-16em}\hfill\HUST@stuno\hfill} \\[2ex]
      {Name} & \makebox[16em][l]{\rule[-2.0pt]{16em}{1pt}\hspace{-16em}\hfill\HUST@author\hfill} \\[2ex]
      {Major} & \makebox[16em][l]{\rule[-2.0pt]{16em}{1pt}\hspace{-16em}\hfill\HUST@major\hfill} \\[2ex]
      {Advisor} & \makebox[16em][l]{\rule[-2.0pt]{16em}{1pt}\hspace{-16em}\hfill\HUST@advisor\hfill} \\[2ex]
      {Department} & \makebox[16em][l]{\rule[-2.0pt]{16em}{1pt}\hspace{-16em}\hfill\HUST@department\hfill}
    \end{tabular}
    \TurnOnTabFontSetting
  }
  \vskip 2cm
  \parbox[t][][t]{\textwidth}{
    \centering
    \fontsize{16pt}{24.0pt}\selectfont
    Graduate School\\
    Huazhong University of Science~\char38~Technology
  }
  \end{center}
}
\def\HUST@zhnotepage{
  \null\vskip 1cm
  \begin{center}
    \ziju{1em}{\hei{\fontsize{18pt}{27.0pt}\selectfont 填表注意事项}}
  \end{center}
  \vskip 1.2ex
  \begingroup
  \fontsize{14pt}{21.0pt}\selectfont
  \ifthenelse{\equal{\HUST@category}{practice}}{
    \begin{enumerate}
      \renewcommand{\labelenumi}{\zhnumber{\theenumi}、}
      \item 本表适用于攻读专业硕士学位研究生实践环节报告，文献阅读与选题报告等。
      \item 以上各报告内容及要求由相关院（系、所）做具体要求。
      \item 以上各报告均须存入研究生个人学籍档案。
      \item 本表填写要求文句通顺、内容明确、字迹工整。
    \end{enumerate}
  }{
    \begin{enumerate}
      \renewcommand{\labelenumi}{\zhnumber{\theenumi}、}
      \item 本表适用于攻读硕士学位研究生选题报告、学术报告，攻读博士学位研究生文献综述、选题报告、论文中期进展报告、学术报告等。
      \item 以上各报告内容及要求由相关院（系、所）做具体要求。
      \item 以上各报告均须存入研究生个人学籍档案。
      \item 本表填写要求文句通顺、内容明确、字迹工整。
    \end{enumerate}
  }
  \endgroup
}
\def\HUST@ennotepage{
  \null\vskip 1cm
  \begin{center}
    \textbf{\fontsize{18pt}{27.0pt}\selectfont Note}
  \end{center}
  \vskip 1.2ex
  \begingroup
  \fontsize{14pt}{21.0pt}\selectfont
  \ifthenelse{\equal{\HUST@category}{practice}}{
    \begin{enumerate}
      \item This form is applicable for master student's practice report, literature survey and thesis proposal.
      \item The contents and the requirements of the above reports are specified in details by each department, respectively.
      \item All these reports will be filed into the graduate's academic archive.
      \item This form should be filled with correct grammar, clear text and neat handwriting.
    \end{enumerate}
  }{
    \begin{enumerate}
      \item This form is applicable for master student's thesis proposal, academic report, and also applicable for Ph.D. student's literature survey, thesis proposal, midterm progress report and academic report.
      \item The contents and the requirements of the above reports are specified in details by each department, respectively.
      \item All these reports will be filed into the graduate's academic archive.
      \item This form should be filled with correct grammar, clear text and neat handwriting.
    \end{enumerate}
  }
  \endgroup
}
\def\maketitle{
  \let\HUST@oldthepage\thepage
  \ifthenelse{\equal{\HUST@language}{chinese}}
  {\def\thepage{封面}}
  {\def\thepage{Titlepage}}
  \begin{titlepage}
    \thispagestyle{empty}
    \ifthenelse{\equal{\HUST@language}{chinese}}
    {\HUST@zhtitlepage}
    {\HUST@entitlepage}
  \end{titlepage}
  % \ifthenelse{\equal{\HUST@language}{chinese}}
  % {
  %   \def\thepage{注意事项}
  %   \thispagestyle{empty}
  %   \HUST@zhnotepage
  % }{
  %   \def\thepage{Note}
  %   \thispagestyle{empty}
  %   \HUST@ennotepage
  % }
  \clearpage
  \let\thepage\HUST@oldthepage
  \setcounter{page}{1}
}
\let\makecover\maketitle
\def\HUST@zhabstractpage{
  \chapter*{\HUST@zhabstractname}
  \begingroup
  \fontsize{12pt}{13.7pt}\selectfont
  \HUST@zhabstract \par
  \vskip 1.2ex
  \noindent\hei{\HUST@zhkeywordstitle}\hspace{.8em} \HUST@zhkeywords
  \endgroup
}
\def\HUST@enabstractpage{
  \chapter*{\textsf{\HUST@enabstractname}}
  \begingroup
  \fontsize{10.5pt}{13.7pt}\selectfont
  \HUST@enabstract \par
  \vskip 1.2ex
  \noindent\textbf{\HUST@enkeywordstitle}\hspace{.8em} \HUST@enkeywords
  \endgroup
}
\def\makeabstract{
  \phantomsection
  \ifthenelse{\equal{\HUST@language}{chinese}}{
    \let\HUST@zhabstract\HUST@abstract
    \let\HUST@zhkeywords\HUST@keywords
    \addcontentsline{toc}{chapter}{\HUST@zhabstractnamenospace}
    \HUST@zhabstractpage
    \clearpage
  }{
    \let\HUST@enabstract\HUST@abstract
    \let\HUST@enkeywords\HUST@keywords
    \addcontentsline{toc}{chapter}{\HUST@enabstractname}
    \HUST@enabstractpage
    \clearpage
  }
}
\let\HUST@tableofcontents\tableofcontents
\def\tableofcontents{
  \ifthenelse{\equal{\HUST@language}{chinese}}{
    \pdfbookmark{\contentsnamenospace}{\contentsnamenospace}
  }{
    \pdfbookmark{\contentsname}{\contentsname}
  }
  \HUST@tableofcontents
  \clearpage
}
\newenvironment{ack}{
  \clearpage
  \phantomsection
  \addcontentsline{toc}{chapter}{\HUST@acknamenospace}
  \chapter*{\HUST@ackname}
  \begingroup
  \fontsize{10.5pt}{13.7pt}\selectfont
}{
  \endgroup
}
\newenvironment{publications}{
  \clearpage
  \ifHUST@inappendix
    \chapter{\HUST@publicationtitle}
  \else
    \phantomsection
    \addcontentsline{toc}{chapter}{\HUST@publicationtitle}
    \chapter*{\HUST@publicationtitle}
  \fi
  \begin{enumerate}[labelindent=0pt,label={[\arabic*]},itemsep=0.5ex]
  \fontsize{10.5pt}{10.5pt}\selectfont
}{
  \end{enumerate}
}
\ifthenelse{\equal{\HUST@language}{chinese}}{
  \def\thudot{\unskip.}
  \def\thumasterbib{[Master Thesis]}
  \def\thuphdbib{[Doctor Thesis]}
  \bibliographystyle{thuthesis}
}{
  \bibliographystyle{IEEEtran}
}
\let\HUST@bibliography\bibliography
\def\bibliography#1{
  \clearpage
  \phantomsection
  \addcontentsline{toc}{chapter}{\bibname}
  \begingroup
  \fontsize{10.5pt}{10.5pt}\selectfont
  \setlength\bibsep{0.5ex}
  \ifthenelse{\equal{\HUST@language}{chinese}}{
    \HUST@bibliography{#1}
  }{
    \HUST@bibliography{IEEEabrv,#1}
  }
  \endgroup
}
\newif\ifHUST@inappendix
\HUST@inappendixfalse
\newif\ifHUST@appendix@resetmainmatter
\HUST@appendix@resetmainmatterfalse
\renewenvironment{appendix}{
  \if@mainmatter
    \HUST@appendix@resetmainmatterfalse
  \else
    \HUST@appendix@resetmainmattertrue
    \@mainmattertrue
  \fi
  \appendixtitletocon
  \appendices
  \titleformat{\chapter}
  {
    \bfseries\HEI
    \centering
    \fontsize{18pt}{23.4pt}\selectfont
  }
  {\appendixname}
  % {\appendixname\,\thechapter}
  {1em}
  {}
  \HUST@inappendixtrue
}{
  \endappendices
  \HUST@inappendixfalse
  \ifHUST@appendix@resetmainmatter
    \HUST@appendix@resetmainmatterfalse
    \@mainmatterfalse
  \else\fi
}
\let\HUST@listoffigures\listoffigures
\def\listoffigures{
  \clearpage
  \ifHUST@inappendix
    \addtocounter{chapter}{1}
    \def\listfigurename{\appendixname\,\thechapter\hspace{1em}\HUST@listfigurename}
  \else
    \def\listfigurename{\HUST@listfigurename}
  \fi
  \phantomsection
  \ifHUST@inappendix
    \addcontentsline{toc}{chapter}{\thechapter\hspace{1em}\HUST@listfigurename}
  \else
    \addcontentsline{toc}{chapter}{\listfigurename}
  \fi
  \HUST@listoffigures
  \def\listfigurename{\HUST@listfigurename}
}
\let\HUST@listoftables\listoftables
\def\listoftables{
  \clearpage
  \ifHUST@inappendix
    \addtocounter{chapter}{1}
    \def\listtablename{\appendixname\,\thechapter\hspace{1em}\HUST@listtablename}
  \else
    \def\listtablename{\HUST@listtablename}
  \fi
  \phantomsection
  \ifHUST@inappendix
    \addcontentsline{toc}{chapter}{\thechapter\hspace{1em}\HUST@listtablename}
  \else
    \addcontentsline{toc}{chapter}{\listtablename}
  \fi
  \HUST@listoftables
  \def\listtablename{\HUST@listtablename}
}
\def\HUST@backcoverpage{
  \ifthenelse{\equal{\HUST@category}{practice}}{
    \ifthenelse{\equal{\HUST@language}{chinese}}{
      \begin{center}
        \ziju{1em}{\hei{\fontsize{18pt}{27.0pt}\selectfont 导师评语}}
      \end{center}
      \vskip 1.5cm
      实践是专业硕士学位的重要环节，是一门必修课，8个学分，对于专业学位实践报告，要求字数5000以上，内容包括但不限于：参加实践的具体内容、完成的工作、收获和体会等，格式自定，但封面和封底需用“研究生实践环节报告”。
      \vfill
      \begin{flushleft}
      \fontsize{16pt}{24.0pt}\selectfont\HEI 导师评分：
      \end{flushleft}
      \vskip 2cm
    }{
      \begin{center}
        \textbf{\fontsize{18pt}{27.0pt}\selectfont Advisor Reviews}
      \end{center}
      \vskip 6ex
      Practice is an important part of a master's degree. It's a required course with eight credits. The practice report requires more than 5000 words. The content can be including but not limited to: the specific content during the participation in practice, the work which has been done, the harvesting or the experience. The format is not set, but the font and back cover are required from ``graduate practice report''.
      \vfill
      \begin{flushleft}
      \textbf{\fontsize{16pt}{24.0pt}\selectfont Score:}
      \end{flushleft}
      \vskip 2cm
    }
  }{\null\vfill}
  \begin{flushleft}
    \TurnOffTabFontSetting
    \fontsize{16pt}{24.0pt}\selectfont
    \bfseries
    \begin{tabular}{p{8em}@{\hspace{1em}}l}
    \ifthenelse{\equal{\HUST@language}{chinese}}{研究生签字}{Student Signature}
    & \makebox[10em][l]{\rule[-2.0pt]{10em}{1pt}} \\[2ex]
    \ifthenelse{\equal{\HUST@language}{chinese}}{指导教师签字}{Advisor Signature}
    & \makebox[10em][l]{\rule[-2.0pt]{10em}{1pt}} \\[2ex]
    \ifthenelse{\equal{\HUST@language}{chinese}}{院(系、所)领导签字}{Dean Signature}
    & \makebox[10em][l]{\rule[-2.0pt]{10em}{1pt}}
    \end{tabular}
    \TurnOnTabFontSetting
  \end{flushleft}
  \vskip 2cm
  \begin{flushright}
    \fontsize{16pt}{24.0pt}\selectfont
    \bfseries
    \ifthenelse{\equal{\HUST@language}{chinese}}{\hspace{2em}年\hspace{2em}月\hspace{2em}日}{Date:\hspace{8em}}
  \end{flushright}
  \vskip 6ex
}
\AtEndDocument{
  \clearpage
  \let\HUST@oldthepage\thepage
  \ifthenelse{\equal{\HUST@language}{chinese}}
  {\def\thepage{封底}}
  {\def\thepage{Back cover}}
  \thispagestyle{empty}
  % \HUST@backcoverpage
  \let\thepage\HUST@oldthepage
}
\def\email#1{
  \href{mailto:#1}{\texttt{#1}}
}
\endinput
%%
%% End of file `hustreport.cls'.
