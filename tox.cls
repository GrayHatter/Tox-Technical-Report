\ProvidesClass{tox} 
\ProcessOptions\LoadClass[a4paper,oneside]{article} 

\RequirePackage{graphicx}
\IfFileExists{ifxetex.sty}{\usepackage{ifxetex}}{\newif\ifxetex\xetexfalse}
\ifxetex
    \usepackage{fontspec}
    \usepackage{polyglossia}
    \setmainlanguage{english}
\else
    \usepackage[english]{babel}
    \usepackage[utf8]{inputenc}
\fi

\usepackage{amsmath,amssymb,amsthm}
\usepackage{listings}

\lstset{
  language=C,                % choose the language of the code
}

\renewcommand\qedsymbol{$\blacksquare$} % redefine Q.E.D. so it is filled

\newcommand{\HRule}{\rule{\linewidth}{0.5mm}}

\def\abstract#1 {\gdef\@abstract{#1}}
\def\author#1   {\gdef\@author{#1}}

\renewcommand{\maketitle}{
	\begin{titlepage}
		\begin{center}
			\begin{figure}[ht]
				\begin{center}
					\leavevmode
					\includegraphics{ToxLogo.pdf}
				\end{center}
			\end{figure}

			\HRule \\[0.4cm]{
				\huge \bfseries \@title\\[0.5cm]
			}\vspace{0.7cm}
			
			\begin{minipage}{0.9\textwidth}
			    \begin{flushleft}
			        \large
			        \@abstract
			        \newline
			        \newline
			    \end{flushleft}
			\end{minipage}
			
			\HRule \\[0cm]
			
			\vfill
			\begin{minipage}{1.0\textwidth}
				\begin{center}
					\large
					\@author
				\end{center}
			\end{minipage}
		\end{center}
	\end{titlepage}

	\setcounter{page}{2}
}
