# CUMCMThesis #
**This is a model of CUMCM thesis.**

## Introduction ##

- **Package name：**CUMCMpackage

- **File name:** CUMCMpackage.sty

- **Author:** Stick Cui

- **E-mail:** Stick_Cui@hotmail.com

---

Copyright (c) 2015 Stick Cui.
---

## 写在前面：##


**Ⅰ.** 宏包CUMCMpackage为XeLaTeX环境下的宏包；使用时，请务必使用XeLaTex编译；否则会报错，导致无法使用！！！

**Ⅱ.** 本宏包为CTeX套装下定义，该套装下可正常使用；如为TeXLive版本用户，使用本模板时请添加TeXLive控制命令，否则会报错。

- 说明：TeXLive下并无较大差别，仅仅是大标题非中文编号（一、二、三等），而是阿拉伯数字编号。【原因是TeXLive下的xeCJK貌似不支持\CJKnumber{}命令】

**Ⅲ.**本模板还在plain的基础上，定义了中文文献参考格式RefWithChSty，详情请阅读Readme for RefWithChSty.txt

此外，推荐使用编辑器：Texmaker，不推荐使用winedt【可能会出现各种字体不兼容问题】

## 引用本宏包编译方法： ##

**(A).** 如果先考文献使用的是已定义类型（如plain，ieeetr等）

**例：**

	\bibliographystyle{plain}%plain ieeetr
	\bibliography{RefFile}

**编译方法：**

XeLaTeX 编译一次（说明：除了正文内容外，主要是为了告诉BibTeX引用了哪些文献）

BibTeX 编译一次（说明：根据所引用的内容，生成参考文献列表）

XeLaTeX 编译一次（说明：除了正文内容外，显示BibTeX所生成的参考文献列表）

XeLaTeX 编译一次（说明：在正文引用出显示出对应参考文献的编号）



**(B).** 如果使用的是自定义参考文献类型

**例：**

	\begin{thebibliography}{}

	\bibitem{RefJ}
	%% 期刊引用格式
    作者. 标题[J].期刊名, 发表年份,  卷号(期号), 页码
    
	\end{thebibliography}

**编译方法：**

XeLaTeX 编译一次（说明：除了正文内容外，显示BibTeX所生成的参考文献列表）

XeLaTeX 编译一次（说明：在正文引用出显示出对应参考文献的编号）



## 使用说明： ##

**1、宏包引用（article类似的文档类型）**

将CUMCMpackage.sty文件与自己所写的论文TeX源文件放到同一目录下；同时推荐在该目录下建立Code、Image两个文件夹。

	\usepackage[control code]{CUMCMpackage}

其中control code包括：nolinenum，TeXLive

	nolinenum：插入代码时不要自动添加行号。
	TeXLive：TeXLive用户必选，否则，会报错。

**2、宏包title项设置：**

	\problem{} %选题	
	\teamNum{} %参赛队编号	
	\Myschool{} %参赛学校	
	\Mymember{}{}{} %参赛队员姓名	
	\supervisor{} %参赛指导老师	
	\title{} %论文名

**3、实用环境类**

- 使用方法：

		\begin{环境名}
		    
		\end{环境名}

- 环境名及其介绍：

		keywords ：关键词

	注：以上环境必须用在abstract之内！！！


		abstract ：摘要

	注：以上环境必须用在\maketitle之前！！！
		
		theorem 定理		
		definition 定义		
		lemma 引理		
		corollary 推论		
		proposition 性质		
		example 例		
		remark 注		
		
		appendices 附录		
		subappendixbox 子附录【需用在appendices 环境内部】



**4、其它指令**

	\codetitle{} 代码标题；插入代码时，可在要插入的代码前使用。

	\lstinputlisting[language=Matlab]{./Code/AHPtest.m}  插入代码示例.
目前本宏包仅仅加入支持C,C++,Java,Matlab,Mathematica,R. 如需其他代码需求可自行根据lstinputlisting要求添加


**注：**可能是LaTex本身问题，代码环境对中文支持的很不给力，为了防止乱序（中英文之间），请务必在注释中的英文后面加空格【即符合英文写作习惯】


**5、字号**

	\chuhao	%初号 	
	\xiaochuhao	%小初号	
	\yihao	%一号 	
	\erhao	%二号 	
	\xiaoerhao	%小二号	
	\sanhao	%三号 	
	\sihao	%四号	
	\xiaosihao	%小四号	
	\wuhao	%五号 	
	\xiaowuhao	%小五号	
	\liuhao	%六号	
	\qihao	%七号


**6、表格使用参数**

	L{自定义宽度}	%左对齐显示	
	C{自定义宽度}	%居中显示	
	R{自定义宽度}	%右对齐显示

**7、写在最后**

具体使用样例，可以参考example.tex文件；预览文件见example.pdf

使用过程中，出现任何问题，可以给本人发邮件！！！

**注：**预览文件example.pdf在GitHub上直接预览会乱码（原因不详），可下载下来预览。
