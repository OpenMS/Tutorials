\NeedsTeXFormat{LaTeX2e} \ProvidesClass{myNotes}[10/06/2005 class for my notes]

\RequirePackage{setspace}
\newif\ifsinglesp@
\newif\ifdoublesp@
\doublesp@false

\DeclareOption{singlespace}{\singlesp@true}
\DeclareOption{doublespace}{\doublesp@true}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}

\ProcessOptions

\LoadClass[a4paper]{article}

\hoffset0cm
\oddsidemargin0cm
\evensidemargin0cm
\textwidth16.7cm

% \oddsidemargin 8.6truemm \evensidemargin 0truemm
% \marginparwidth 40pt \marginparsep 10pt
% \topmargin 0truemm \headsep 10truemm
% \textheight 224truemm \textwidth 150truemm

\brokenpenalty=10000

\AtBeginDocument{%
\ifdoublesp@%
  \doublespacing%
\else\ifsinglesp@%
  \singlespacing%
\else%
  \onehalfspacing%
\fi%
\fi
}

\def\date#1{\gdef\@date{#1}}
\def\town#1{\gdef\@town{#1}}
\def\abstract#1{\gdef\@abstract{#1}}

\def\theequation{\arabic{section}.\arabic{equation}}

\newcommand {\Zb} {\mathbb{Z}} % integer numbers
\newcommand {\Qb} {\mathbb{Q}} % rartional numbers
\newcommand {\Rb} {\mathbb{R}} % real numbers
\newcommand {\Cb} {\mathbb{C}} % complex numbers
\newcommand {\Nb} {\mathbb{N}} % natural numbers
\newcommand {\Db} {\mathbb{D}}
\newcommand {\Eb} {\mathbb{E}}
\newcommand {\Fb} {\mathbb{F}}
\newcommand {\Gb} {\mathbb{G}}
\newcommand {\Hb} {\mathbb{H}}
\newcommand {\Jb} {\mathbb{J}}
\newcommand {\Kb} {\mathbb{K}}
\newcommand {\Lb} {\mathbb{L}}
\newcommand {\const} {\operatorname{const.}}
\newcommand {\tr} {\operatorname{tr}}
\newcommand {\ord} {\mathcal{O}}
\newcommand {\Lag} {\mathcal{L}}
\newcommand {\QCD} {\operatorname{QCD}}
\newcommand {\BRS} {\operatorname{BRS}}
\newcommand {\YM} {\operatorname{YM}}
\newcommand {\kin} {\operatorname{kin}}
\newcommand {\inv} {\operatorname{inv}}
\newcommand {\GF} {\operatorname{GF}}
\newcommand {\FP} {\operatorname{FP}}
\newcommand {\Res}[1] {\operatorname{Res} \Big|_{#1}}
\newcommand {\I} {\operatorname{I}}
\newcommand {\II} {\operatorname{II}}
\newcommand {\III} {\operatorname{III}}
\newcommand {\id} {\mathbf{1}} %identity
% collides with menukeys
%\newcommand {\shift} {\hspace{3mm}}
\newcommand {\nshift} {\hspace{-3mm}}
\newcommand {\rct} {\tilde{r}_c}
\newcommand {\mirror} {\operatorname{mirror}}
\newcommand {\vp} {\varphi}

\def\titlepage{
    \thispagestyle{empty}
	    \begin{center}
			\textsc{\LARGE Fundamentals of \\ Proteome Bioinformatics Revisited \\
			\Large presented at GCB 2015 \\
        	\large German Conference on Bioinformatics 2015}\\[2cm]
			\includegraphics[width=0.7\textwidth]{./graphics/blackbox.png}\\[3cm]
			\includegraphics[height=2.5cm]{./graphics/GCB_logo.png}\hspace{1cm}
			\includegraphics[height=2.5cm]{./graphics/assets/OpenMS_logo.png}\hspace{1cm}
			\includegraphics[height=2.5cm]{./graphics/mpc_logo.png}\hspace{1cm}
			\includegraphics[height=2.5cm]{./graphics/BMBF_with_FKZ.png}
		\end{center}
		\newpage
    \thispagestyle{empty}
		\vfill
		\begin{center}
		\textsc{\Large created by:}\\[1cm]
		Michael Turewicz,  Michael Kohl, Julian Uszkoreit,\\  
		Julianus Pfeuffer, Timo Sachsenberg\\
		Martin Eisenacher, Oliver Kohlbacher, Knut Reinert\\[2cm]
%                \textsc{\Large License}\\[1cm]
\vfill
		\textbf{Creative Commons Attribution 4.0 International (CC BY 4.0)}\\
		\end{center}
		\newpage}

\def\firstpages{
        \pagenumbering{arabic}
        \pagestyle{plain}
        \titlepage
        \tableofcontents
	\newpage
	\pagestyle{plain}}
