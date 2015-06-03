Bibliography style name：RefWithChSty
File name: RefWithChSty.bst
Author: Stick Cui
E-mail: Stick_Cui@hotmail.com

Copyright (c) 2015 Stick Cui.

写在前面：

RefWithChSty是基于plain风格所写的，保留了原有的plain风格。
要使用中国风格则在对应参考文献内多加一个lang={Chinese}，反之，要使用plain风格则直接正常使用即可。

使用方法：
\phantomsection%生成该页的链接
\addcontentsline{toc}{section}{\refname} 将参考文献加入到目录中{以及生成的PDF书签中[如果引用了hyperref包]}
%注：以上两个指令如非必需，可不使用
\bibliographystyle{RefWithChSty}%设置参考文献风格
\bibliography{reference}%在正文中必须引用reference（可自己命名自己的*.bib文件）中的参考文献，才能在正文中显示对应的参考文献列表

编译方法(以XeLaTeX为例)：
XeLaTeX 编译一次（说明：除了正文内容外，主要是为了告诉BibTeX引用了哪些文献）
BibTeX 编译一次（说明：根据所引用的内容，生成参考文献列表）
XeLaTeX 编译一次（说明：除了正文内容外，显示BibTeX所生成的参考文献列表）
XeLaTeX 编译一次（说明：在正文引用出显示出对应参考文献的编号）

bib文件写作格式（参考，只列出中国参考文献风格必须的）
1、期刊
@Article{Art,
author = {作者1，作者2，作者3等},
title = {文献名},
journal = {期刊名},
year = {2015},
volume = {23},
number = {9},
pages = {1-13},
lang = {Chinese}
}

2、专著
@Book{Boo,
author = {作者1，作者2，作者3等},
title = {书名},
publisher = {出版社},
year = {2015},
address = {出版地},
edition = {},
month = {5},
note = {},
lang = {Chinese}
}

3、专著（带页码）
@InBook{Inboo,
author = {作者1，作者2，作者3等},
title = {书名},
publisher = {出版社},
year = {2015},
address = {出版地},
edition = {},
month = {5},
pages = {2-13},
lang = {Chinese}
}

4、论文集
@InCollection{Incol,
author = {作者1，作者2，作者3等},
title = {篇名},
booktitle = {论文集名},
pages = {24-57},
editor = {编辑/主编},
publisher = {出版社},
year = {2015},
address = {出版地},
month = {},
lang = {Chinese}
}

5、硕士、博士等学位论文
硕士（页码项为本风格中中文风格独有）
@MastersThesis{MT,
author = {作者1，作者2，作者3等},
title = {论文名},
school = {保存者（一般是学校）},
year = {2015},
address = {保存者地址},
month = {},
lang = {Chinese},
pages = {2-13}
}

博士（页码项为本风格中中文风格独有）
@PhdThesis{PhD,
author = {作者1，作者2，作者3等},
title = {论文名},
school = {保存者（一般是学校）},
year = {2015},
address = {保存者地址},
month = {},
lang = {Chinese},
pages = {2-13}
}

6、报告（页码项为本风格中中文风格独有）
@TechReport{TechR,
author = {作者1，作者2，作者3等},
title = {报告名},
institution = {机构},
year = {2015},
address = {机构地址},
month = {},
lang = {Chinese},
pages = {3-13}
}

7、网络文献（百度百科、博客等，此风格plain无）
@network{Net,
author = {新浪微博},
title = {I-am-13},
url = {http://weibo.com/StickCui},
year = {2015},
month = {5},
day = {7}
}

8、译著（此风格plain无）
@trans{Trans,
author = {Author1，Author2，Author3等（原作者）},
title = {译著名},
publisher = {出版社},
year = {2015},
address = {出版地},
translator = {作者1，作者2，作者3等（译者）},
month = {5},
pages = {3-13}
}


写在后面：

参考文献库样例见：RefFile.bib文件

使用过程中，如有任何问题请联系本人！
