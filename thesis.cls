% ***************** ���� ��� ��������� ������� *****************
% ************************ ��������� �.�. **********************
% **************** �� ����� ����� ������� �.�. ****************
% ************************* 25.05.14 ***************************
% ************************* 27.05.14 ***************************
% ************************* 29.05.14 ***************************

% �������� �������:
% \maketitlepage{ϲ�}{�����}{�������}{���������}{����}
% \assigment{���������}, �� ��������� �� �������� ������ ���� ������� ��������={��������}:
%	StudentName -- ��'� �������� � �������� ������
%	ThesisName -- ���� �������
%	AdvisorName -- ������ �� ��'� ��������
%	Order -- ���� �� ����� ������
%	ApplicationDate -- ���� ������� �������
%	InputData -- ������ ���� �������
%	Contents -- ���� �������
%	Graphics -- ������ ��������� ��������
%	AssigmentDate -- ���� ��������� ��������
%	Calendar -- �������� ������� ������� � ����������� ������
%	StudentPIB -- ������� �.�. �������� 
%	AdvisorPIB -- ������� �.�. ��������
% \annotation{���������}
% \tableofcontents
% \shortings
% \intro
% \conclusion
% \begin{thebibliography} .. \end{thebibliography}
% \append{�����}{�����}

% 1. ������������ ����
\ProvidesClass{thesis}[2014/05/29 v1.5 ���� ��� ��������� �������]
\NeedsTeXFormat{LaTeX2e} % �������� ������

% 2. ����������� "����������� ����"
\LoadClass[a4paper,14pt,ukrainian,oneside]{extreport}


% 3. ����������� ������
% ����� ������
\RequirePackage{cmap}% ��� ��������� ������ � pdf
\RequirePackage[T2A]{fontenc} % ����� ��� �������� ��������� ������
\RequirePackage[cp1251]{inputenc} % ����� ��� �������� Windows'�������� ��������� cp1251
\RequirePackage[russian,ukrainian]{babel} % ����� ��� �������� ��������� �� �������� ���
\RequirePackage{pscyr} % ����� �� ������� ���������� ��������
\RequirePackage{mathtext} % ������� ������� � ����� ������������ ������
\RequirePackage{amssymb,amsfonts,amsmath,amsthm} % ������� ������� � ����� ������������ ������
\RequirePackage{textcomp} % ������� ������� � ����� ������������ ������
\RequirePackage{upgreek} % ����� ��� ������ �������� ����

% �������� ������
\RequirePackage{graphicx} % �������� ����� ��� ������� �������
\RequirePackage{subfig} % ����� ��� ������� ���������
\RequirePackage{flafter} % ����� �������, �� ������� �� ������� ������ �� �'�������� ������ ��������� �� ���� ����
\RequirePackage{caption} % ����� ��� ������������� ��������� ������� �� �������
\RequirePackage{xtab} % ����� ��� ������ �������
\RequirePackage{longtable} % ����� ��� ������ �������
\RequirePackage{multirow} % ����� ��� ��'������� ����� �������

% ������ ��� ������������ ������� �� ����
\RequirePackage[top=2cm, bottom=2cm, left=3cm, right=2cm]{geometry} % ������ ���� �������
\RequirePackage{indentfirst} % ������ ��� ������� ����� ������
\RequirePackage{hanging} % ������ ��� ��� ����� ����� ������
\RequirePackage{enumitem}	% ����� ��� ������������ ������
\RequirePackage{setspace}	% ����� ��� ����, ��� ����� ���� ������ ���������� ��������
\RequirePackage{fancyhdr} % ����� �������� ��� ����������� ������� ������ �������
\RequirePackage{etoolbox} % ����� ��� ���������� �������� ������� � ����������

% ���� ��������� �� �����
\RequirePackage[rm,small,raggedright]{titlesec} % ����� ��� ������� ��������� ������ ���������
\RequirePackage[titles,subfigure]{tocloft} % ����� ��� ������� ��������� ������ �����

% ����� ��� ���������� ������������� ��������-�������� � "��������"
\RequirePackage{url}

% ����� ��� ���������� ������ ���� ��� � ���������� ������
\RequirePackage{icomma}

% ����� ��� ����������� ������������ �������� ����
% \RequirePackage{listings}

% ����� ��� ������������� ������
\RequirePackage{xkeyval}

% 4. ������� �������
\linespread{1.5} % �������� "1,5"
\renewcommand{\rmdefault}{ftm} % ������ ����� �� ������������ --- "Times New Roman" �� ������ pscyr

\newcommand{\setfontsize}[1]{\fontsize{#1pt}{#1pt}\selectfont} % ������� ��� ��������� ������ ������
\newcommand{\invcommas}[1]{\guillemotleft #1\guillemotright} % ������� ��� ����������� ������� �����

% ����� ������������ ���� ���� � ������, �� � �������� �����
\urlstyle{same}

% ����� ������� ��� ������� ������ �������
\fancypagestyle{plain}{
    \fancyhf{}
    \rhead{\thepage}
		\renewcommand{\headrulewidth}{0pt}
		\renewcommand{\footrulewidth}{0pt}
}

% ������� ��� �������� ������� ������ � ���������� ����
\binoppenalty=10000
\relpenalty=10000

% ������� ��� ��������� �������������� ������, ���� ��� �� ����� ���������� � ����
\newcommand{\uchapter}[1]{\chapter*{#1}\addcontentsline{toc}{chapter}{#1}} 

% ��� ��������� ������ ����������� ������� \uchapter
\newcommand{\intro}{\uchapter{�����}}

% ��� ��������� �������� ����������� ������� \uchapter
\newcommand{\conclusion}{\uchapter{��������}}

% ��� ��������� ������ ������� ��������� ����������� ������� \shortings
\newcommand{\shortings}{\uchapter{������ ������� ���������, ��������� � �������}}

% ����� ������� ��� ��������� �������
\newcommand{\append}[2]{
\titleformat{\chapter}{\centering\normalsize}{\hspace{1cm}\thechapter}{0.5em}{}
\titlespacing{\chapter}{0pt}{0pt}{0pt}
\chapter*{������� #1}
\begin{center}
#2
\end{center}
\addcontentsline{toc}{chapter}{������� #1 #2}
\titlespacing{\chapter}{0pt}{0pt}{49pt}
\titleformat{\chapter}{\centering\normalsize\MakeUppercase}{\hspace{1cm}\thechapter}{0.5em}{}
}

% ������ �������� ���� ���������
% �������� --- ��� ������
\titleformat{\chapter} % �������, �� ���������� ���� �����
			{\centering\normalsize\MakeUppercase} % ������� ������ ����� (������, "�� �����")
			{\hspace{1cm}\thechapter} % ������� ������ ������ ������: �� ���� ������ �����, ��� ������
			{0.5em} % ������� �� ������� � ������
			{} % �����, �� ������ ����
	
% ����� --- ��� ��������
\titleformat{\section} % �������, �� ���������� ���� �������
			{\normalsize} % ������� ������ ����� (������)
			{\thesection} % ������� ������ ������ ������: �� ���� ������ �����, ��� ������
			{0.5em} % ������� �� ������� � ������
			{} % �����, �� ������ ����

% ����� --- ��� �������� �� ������� ����
\titleformat{\subsection} % �������, �� ���������� ���� ������� �������� ����
			{\normalsize} % ������� ������ ����� (������)
			{\thesubsection} % ������� ������ ������ ������: �� ���� ������ �����, ��� ������
			{0.5em} % ������� �� ������� � ������
			{} % �����, �� ������ ����
			
% ����� ������ ������� ��� ��������� ������
\titlespacing{\chapter} % �������, �� ���������� ���� �����
			{0pt} % ������ ����
			{0pt} % ������ ������ (����)
			{49pt} % ������ ����� (2 �����)

% ����� ������ ������� ��� ��������� ��������			
\titlespacing{\section} % �������, �� ���������� ���� �������
			{\parindent} % ������ ����
			{49pt} % ������ ������ (2 �����)
			{49pt} % ������ ����� (2 �����)
			
% ����� ������ ������� ��� ��������� �������� �� ������� ����
\titlespacing{\subsection} % �������, �� ���������� ���� ������� �������� ����
			{\parindent} % ������ ����
			{49pt} % ������ ������ (2 �����)
			{49pt} % ������ ����� (2 �����)
			
% ����������� ����
\makeatletter
\renewcommand{\tableofcontents}{
	\clearpage
	\thispagestyle{empty}

	\begin{center}
	  ����
	\end{center}
	
	\@starttoc{toc}
}
\makeatother

% ��������� ������ ����� � �������
\renewcommand{\arraystretch}{1.2}

% ������� ������ ��������� ������
\renewcommand{\theequation}{\arabic{chapter}.\arabic{equation}}

% ��� ����������� ��� ������
\renewcommand{\theenumi}{\arabic{enumi})}
\renewcommand{\theenumii}{\arabic{enumii})}
\renewcommand\labelenumi{\theenumi}
\renewcommand\labelenumii{\theenumii}

% ������ �������� ������, � ����������� ���������
% ����������� ������� ����
\newcounter{No}
\renewenvironment{enumerate}[1][\asbuk{No})]
 	{\begin{list}{#1}{
 		  \setlength\partopsep{0pt}
		  \setlength\parskip{0pt}
		  \setlength\parsep{0pt}
		  \setlength\topsep{0pt}
		  \setlength\itemsep{0pt}
		  \setlength{\itemindent}{1.9cm}
		  \setlength{\leftmargin}{0pt}
		  \usecounter{No}
		}
	}
	{\end{list}}

% ������������� ������� ����
\renewenvironment{itemize}[1][{-}]
	{\begin{list}{#1}{
		\setlength\partopsep{0pt}
	  \setlength\parskip{0pt}
	  \setlength\parsep{0pt}
	  \setlength\topsep{0pt}
	  \setlength\itemsep{0pt}
	  \setlength{\itemindent}{1.7cm}
	  \setlength{\leftmargin}{0pt}
		}
  }
  {\end{list}}
  
% ����������� ������� ����
\newcounter{NoEnum2}
\newenvironment{enumerate2}[1][\arabic{NoEnum2})]
 	{\begin{list}{#1}{
 		  \setlength\partopsep{0pt}
		  \setlength\parskip{0pt}
		  \setlength\parsep{0pt}
		  \setlength\topsep{0pt}
		  \setlength\itemsep{0pt}
		  \setlength{\itemindent}{2.6cm}
		  \setlength{\leftmargin}{0pt}
		  \usecounter{NoEnum2}
		}
	}
	{\end{list}}
	
% ��������� ������� ����
\newcounter{NoItem2}
\newenvironment{itemize2}[1][\arabic{NoItem2})]
 	{\begin{list}{#1}{
 		  \setlength\partopsep{0pt}
		  \setlength\parskip{0pt}
		  \setlength\parsep{0pt}
		  \setlength\topsep{0pt}
		  \setlength\itemsep{0pt}
		  \setlength{\itemindent}{2.35cm}
		  \setlength{\leftmargin}{0pt}
		  \usecounter{NoItem2}
		}
	}
	{\end{list}}

% ����� ��������� ������
% ������ ������� �� �������
\renewcommand{\cftchapdotsep}{1}
\renewcommand{\cftsecdotsep}{1}
\renewcommand{\cftsubsecdotsep}{1}

% ������ ����� ����, �� ���������� �� ����� �������
\cftsetpnumwidth{1em}

% ������ ������� �� ������� � ����
\setlength\cftbeforechapskip{0pt}

% ��������� ��������
\renewcommand{\cftchapaftersnum}{} % �� ���� �������� ���� ������ ������ (������)
\renewcommand{\cftchapindent}{0cm} % ������ ������ ������ �� ����� ����
\renewcommand{\cftchapnumwidth}{1em} % ����� ����, �� ���������� �� ����� ������
\renewcommand{\cftchappagefont}{\mdseries} % ����� ������ ������� (���������, 14pt)
\renewcommand{\cftchapfont}{\mdseries} % ����� ��������� (���������)
\renewcommand{\cftchapleader}{\cftdotfill{\cftchapdotsep}} % ��� ����������� ������� �� ��������� �� ������ ������� (�������)

% ����� ��������� ����������
\renewcommand{\cftsecaftersnum}{} % �� ���� �������� ���� ������ �������� (������)
\renewcommand{\cftsecindent}{1em} % ������ ������ �������� �� ����� ����
\renewcommand{\cftsecnumwidth}{2em} % ����� ����, �� ���������� �� ����� ��������
\renewcommand{\cftsecpagefont}{\mdseries} % ����� ������ ������� (���������, 14pt)
\renewcommand{\cftsecfont}{\mdseries} % ����� ��������� (���������)
\renewcommand{\cftsecleader}{\cftdotfill{\cftsecdotsep}} % ��� ����������� ������� �� ��������� �� ������ ������� (�������)

% ����� ��������� ���������� �� ������� ����
\renewcommand{\cftsubsecaftersnum}{} % �� ���� �������� ���� ������ �������� �������� ���� (������)
\renewcommand{\cftsubsecindent}{3em} % ������ ������ �������� �������� ���� �� ����� ����
\renewcommand{\cftsubsecnumwidth}{2.5em} % ����� ����, �� ���������� �� ����� �������� �������� ����
\renewcommand{\cftsubsecpagefont}{\mdseries} % ����� ������ ������� (���������, 14pt)
\renewcommand{\cftsubsecfont}{\mdseries} % ����� ��������� (���������)
\renewcommand{\cftsubsecleader}{\cftdotfill{\cftsubsecdotsep}} % ��� ����������� ������� �� ��������� �� ������ ������� (�������)

% ��������� ������� � �������
\DeclareCaptionLabelFormat{tablecap}{������� #2} % ������ �� ������������ "����." �� ��������
\DeclareCaptionLabelFormat{figurecap}{������� #2} % ������ �� ������������ "���." �� ��������
\DeclareCaptionLabelSeparator{dash}{~--~} % ������� � ������� ����� ������� ����, � �� �������

\captionsetup[table]{singlelinecheck=false, justification=raggedright, labelsep=dash, labelformat=tablecap, font = {stretch = 1.5}} % ������ ��� �������
\captionsetup[figure]{justification=centering, labelsep=dash, labelformat=figurecap, font = {stretch = 1.5}} % ������ ��� �������

% �������, �� ����� �������� ����� �� �������� � ����������
\renewcommand{\thesubfigure}{\asbuk{subfigure}}

% ���� �������� ��� ������ �������
\renewenvironment{table}[4]{
	\begin{center}
	\begin{longtable}{#1}
	\kill
	\caption{#2}\label{#3}\\
	#4
	\endfirsthead
	\kill
	\caption*{����������� ������� \thetable}\\
	#4
	\endhead
	\hline
	\endfoot
}
	{%
	\end{longtable}
	\end{center}	
}
\setlength{\LTpre}{-14pt}
\setlength{\LTpost}{-14pt}
\setlength{\LTcapwidth}{0pt}

% �������� ������� �� ��������� � ����������
\patchcmd{\thebibliography}
  {\advance\leftmargin\labelsep}
  {\leftmargin=0pt\itemindent=1.9cm\advance\itemindent\labelsep}
  {}{}

% ������� ������ ������ ��� ������ ������ (����� + ������)
\makeatletter
\renewcommand{\@biblabel}[1]{#1.}
\makeatother

% ������� ���������� ��������, ������� ������� ������ ������ ������ � ����
\let\tempbib\thebibliography
\let\tempbibend\endthebibliography
\renewenvironment{thebibliography}{
	\renewcommand{\bibname}{����˲� ��������}% ������� ���������
	\tempbib{99.}% ����������� �������� ����� ������� --- 99
	% ��� �������� ������� �� ���������
	\setlength\partopsep{0pt}
	\setlength\parskip{0pt}
	\setlength\parsep{0pt}
	\setlength\topsep{0pt}
	\setlength\itemsep{0pt}
	\addcontentsline{toc}{chapter}{������ ��������}% ������ � ����
	}
	{
	\tempbibend
}

% ���� ������� ��� ���������� ������
% ����� �������� � ����� ���������� � ���������� �������������
\newcommand{\maketitlepage}[5]{
	  \thispagestyle{empty}
	  \setlength{\parindent}{0cm}
		\begin{center} % �����������
			\MakeUppercase{������������ ��������� ����������� ������}
			
			\MakeUppercase{\invcommas{�������� ������������ ��������}}

			��������� ��������� ����������
			
			������� ��������� ����������
			
			\addvspace{6pt} % ��������� ������
		
			\begin{flushright}
				\renewcommand{\arraystretch}{0.8}
				\begin{tabular}{l}
				
					\invcommas{�� ������� ��������} \\
					�������� ������� ���\\
					\_\_\_\_\_\_\_\_\_\_\_\_\_~�.�.~�������� \\
					\invcommas{\_\_\_\_}~\_\_\_\_\_\_\_\_\_\_\_\_\_~\the\year~�. \\
				
				\end{tabular}
			\end{flushright}

			\vfill 
			
			\MakeUppercase{�������� ������}

			�������-��������������� ���� \invcommas{��������}

			� �������� ��������� 6.040301 \invcommas{��������� ����������}

			�� ����:

			#5
			
		\end{center}

		\addvspace{6pt} % ��������� ������

		{\renewcommand{\arraystretch}{0.8}
		\begin{tabular}{lll}
			������� & & \\[3pt]
			������� ����� {#2} & {#1} & \_\_\_\_\_\_\_\_\_\_\_\_\_\\[6pt]
			������� & {#3} & \_\_\_\_\_\_\_\_\_\_\_\_\_\\[6pt]
			������������: & & \\[3pt]
			-- � ������� ����� & ��. �������� ���~�.�. & \_\_\_\_\_\_\_\_\_\_\_\_\_\\[3pt]
			-- � ������������� & ��. �������� ���������~�.�. & \_\_\_\_\_\_\_\_\_\_\_\_\_\\[6pt]
			��������� & {#4} & \_\_\_\_\_\_\_\_\_\_\_\_\_\\
		\end{tabular}}
		
		\vfill % ����������� ���������� �������
		
		\begin{flushright}
			\renewcommand{\arraystretch}{0.8}
			\begin{tabular}{l}
				��������, �� � ��� ��������� �����\\
				���� ���������� � ����� ����� ������\\
				��� ��������� ��������.\\
				�������~\_\_\_\_\_\_\_\_\_\_\_\_\_
			\end{tabular}
		\end{flushright}
		
		\vfill

		\begin{center}
			��� --- \the\year
		\end{center}
		
		\clearpage % �������� � ���� �������

		\setcounter{page}{2} % ����� ������� ���� 2
		
		\setlength{\parindent}{1.25cm} % ������ ������ ������� ����� ������ (5 �����, ��� 1,25 ��)
		
		% ������� ����� �� �� ���� �������
		\setlength{\belowdisplayskip}{14pt}
		\setlength{\abovedisplayskip}{14pt}
		\setlength{\belowdisplayshortskip}{14pt}
		\setlength{\abovedisplayshortskip}{14pt}
}

% ���� ������� ��� ��������
\newcommand{\annotation}[1]{\chapter*{#1}\thispagestyle{empty}\renewcommand{\baselinestretch}{1.5}\setfontsize{14pt}}

% ���� ������� ��� �������� ��������
\makeatletter
\define@cmdkey[Thesis]{Assigment}{StudentName}{}
\define@cmdkey[Thesis]{Assigment}{ThesisName}{}
\define@cmdkey[Thesis]{Assigment}{AdvisorName}{}
\define@cmdkey[Thesis]{Assigment}{Order}{}
\define@cmdkey[Thesis]{Assigment}{ApplicationDate}{}
\define@cmdkey[Thesis]{Assigment}{InputData}{}
\define@cmdkey[Thesis]{Assigment}{Contents}{}
\define@cmdkey[Thesis]{Assigment}{Graphics}{}
\define@cmdkey[Thesis]{Assigment}{AssigmentDate}{}
\define@cmdkey[Thesis]{Assigment}{Calendar}{}
\define@cmdkey[Thesis]{Assigment}{StudentPIB}{}
\define@cmdkey[Thesis]{Assigment}{AdvisorPIB}{}
\newcommand{\assigment}[1]{
	  \setkeys[Thesis]{Assigment}{#1}
	  \pagestyle{empty}
	  \setlength{\parindent}{0cm}
		\begin{center} % �����������
			\MakeUppercase{������������ ��������� ����������� ������}
			
			\MakeUppercase{\invcommas{�������� ������������ ��������}}

			��������� ��������� ����������
			
			������� ��������� ����������

			������ ���������: 6.040301 \invcommas{��������� ����������}
			
			\addvspace{12pt} % ��������� ������
			
			\begin{flushright}
				\renewcommand{\arraystretch}{0.8}
				\begin{tabular}{l}
					
					\MakeUppercase{����������} \\
					�������� ������� ���\\
					\_\_\_\_\_\_\_\_\_\_\_\_\_~�.�.~�������� \\
					\invcommas{\_\_\_\_}~\_\_\_\_\_\_\_\_\_\_\_\_\_~\the\year~�. \\
					
				\end{tabular}
			\end{flushright}

			\vfill 
			
			\MakeUppercase{��������}

			�� �������� ������ �������� 

			\cmdThesis@Assigment@StudentName

		\end{center}

		1. ���� ������ \cmdThesis@Assigment@ThesisName 

		������� ������ \cmdThesis@Assigment@AdvisorName,

		����������� ������� �� ������������ �� \cmdThesis@Assigment@Order

		2. ����� ������� ��������� ������: \cmdThesis@Assigment@ApplicationDate

		3. ������� ���� �� ������: 

		\cmdThesis@Assigment@InputData

		4. ���� ������������-������������ ������� (������ �������, �� ������� ���������):

		\cmdThesis@Assigment@Contents

		5. ������ ���������� �������� (� ������ ����������� ����'������� ��������):

		\cmdThesis@Assigment@Graphics

		6. ������������ ������ ������:

		\addvspace{12pt}
		%\renewcommand{\arraystretch}{0.8}
		\begin{tabular}{|c|c|c|c|}
			\hline
			����� & �������, �������� �� ������ & \multicolumn{2}{c|}{ϳ����, ����} \\ \cline{3-4}
			& ������������ & \parbox[t]{4em}{\centering{}��������\\�����} & \parbox[t]{4em}{\centering{}��������\\�������} \\
			\hline
			������� ����� & ��� �.�., ��. �������� & & \\
			\hline
			������������� & ��������� �.�., ��. �������� & & \\
			\hline
		\end{tabular}

		\addvspace{12pt}

		7. ���� ������ ��������: \cmdThesis@Assigment@AssigmentDate
		
		\begin{center}
			����������� ����

			\addvspace{12pt}

			\begin{tabular}{|c|c|c|c|}
			\hline
			\No �/� & \parbox[t]{12em}{\centering{}����� ����� ���������\\�������� ������} & \parbox[t]{10em}{\centering{}����� ���������\\����� ������} & ������� \\
			\hline
			\cmdThesis@Assigment@Calendar
			\hline
			\end{tabular}
			
		\end{center}
		
		\begin{tabular*}{\textwidth}{@{\extracolsep{\fill}}lrl}
		������� &  \_\_\_\_\_\_\_\_\_\_\_\_\_ & \cmdThesis@Assigment@StudentPIB \\

		������� ������ & \_\_\_\_\_\_\_\_\_\_\_\_\_ & \cmdThesis@Assigment@AdvisorPIB \\
		\end{tabular*}

		\clearpage

		\pagestyle{plain}

		\setlength{\parindent}{1.25cm}
}
\makeatother