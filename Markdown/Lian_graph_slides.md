---
### ------------------- 幻灯片还是普通网页
marp: true
#marp: false

### ------------------- 幻灯片尺寸，宽版：4:3
size: 16:9
#size: 4:3

### ------------------- 是否显示页码
paginate: true  
#paginate: false

### ------------------- 页眉 (备选的用 '#' 注释掉)
# header: lianxh.cn
#header: '[连享会](https://www.lianxh.cn)'
#header: '[lianxh.cn](https://www.lianxh.cn/news/46917f1076104.html)'

### ------------------- 页脚 (备选的用 '#' 注释掉)
#footer: 'lianx.cn Marp 模板'
footer: '连享会&nbsp;|&nbsp;[lianxh.cn](https://www.lianxh.cn)&nbsp;|&nbsp;[Video](https://lianxh-class.cn/)'
#footer: '![20230202003318](https://fig-lianxh.oss-cn-shenzhen.aliyuncs.com/20230202003318.png)'
---

<!-- 
Notes: 
1. 选中一段文本，按快捷键 'Ctrl+/' 可以将其注释掉；再次操作可以解除 
2. header, footer 后面的文本需要用单引号引起来，否则会有语法错误
3. '#size: 16:9' 不能写为 'size:16:9'，即 'size:' 后要有一个空格
-->



<!-- Global style: 设置标题字号、颜色 -->
<!-- Global style: 正文字号、颜色 -->
<style>
/*一级标题局中*/
section.lead h1 {
  text-align: center; /*其他参数：left, right*/
  /*使用方法：
  <!-- _class: lead -->
  */
}
section {
  font-size: 22px; 
}
h1 {
  color: blackyellow;
}
h2 {
  color: green;
}
h3 {
  color: darkblue;
}
h4 {
  color: brown;
  /*font-size: 28px; */
}
/* 右下角添加页码 */
section::after {
  /*font-weight: bold; */
  /*text-shadow: 1px 1px 0 #fff; */
/*  content: 'Page ' attr(data-marpit-pagination) ' / ' attr(data-marpit-pagination-total); */
  content: attr(data-marpit-pagination) '/' attr(data-marpit-pagination-total); 
}
header,
footer {
  position: absolute;
  left: 50px;
  right: 50px;
  height: 25px;
}
</style>

<!--顶部文字-->
[lianxh.cn](https://www.lianxh.cn/news/46917f1076104.html) 

<br>

<!--封面图片-->
![bg right:56% brightness:. sepia:50% w:700](https://fig-lianxh.oss-cn-shenzhen.aliyuncs.com/B208-陈卓然-因果推断经典图形-Kleven2019AEAAEA2.png) 

<!-- backgroundColor: #FFFFF9 -->
## 实证分析可视化  <!--幻灯片标题-->

<br>

##### 连玉君 (中山大学)
arlionn@163.com

<br>

> :dog: 课件：<https://gitee.com/arlionn/graph>





--- - --
<!-- backgroundColor: #C1CDCD -->

## 1. 感受可视化


--- - --
<!-- backgroundColor: #FFFFF9 -->
> 2021 年蒙特卡洛大师赛-八强赛：卢布列夫 v.s. 纳达尔

- 卢布列夫：不断用正拍攻击纳达尔威胁性较低的反拍
- 纳达尔：全身的重心时刻预备着防范卢布列夫可能的下一球对角正拍
- 卢布列夫：运用重复路线打回马枪
- 纳达尔：望球兴叹

![h:400](https://fig-lianxh.oss-cn-shenzhen.aliyuncs.com/20220722113618.png)


--- - --

> Source: [dsbook](http://rafalab.dfci.harvard.edu/dsbook/introduction-to-data-visualization.html)

![gapminder-dsbook-R](https://fig-lianxh.oss-cn-shenzhen.aliyuncs.com/gapminder-dsbook-R.gif)

--- - --

![w:600](https://fig-lianxh.oss-cn-shenzhen.aliyuncs.com/071632_bb2d5064_1522177.gif)



> Source: ：[连享会：空间计量](https://www.lianxh.cn/blogs/29.html) &rarr; [空间计量溢出效应的动态GIF演示](https://www.lianxh.cn/news/0b822f835c9d5.html)

--- - --

![bg left:55% w:600](https://fig-lianxh.oss-cn-shenzhen.aliyuncs.com/Animation-of-DID-01.gif)

$$
\begin{aligned}
Y_{it} &= \alpha + \beta_1 Treat_{it} + \beta_2 After_{it} + \\
&\quad {\color{blue}{\gamma}}\,Treat_{it}\times After_{it} + u_{it}
\end{aligned}
$$


> Source:   
> [NickCH-K](https://github.com/NickCH-K) &rarr; [causalgraphs](https://nickchk.com/causalgraphs.html) &rarr; [github](https://github.com/NickCH-K/causalgraphs)
- 采用动图呈现了常用的因果推断模型的核心思想，包括 IV, DID, FE, RDD, PSM 等


--- - --

### 劳动力市场中的性别不平等

> Kleven, Henrik, Camille Landais, and Jakob Egholt Søgaard. 2019. "Children and Gender Inequality: Evidence from Denmark." *American Economic Journal: Applied Economics*, 11 (4): 181-209. [-Link-](https://www.aeaweb.org/articles?id=10.1257/app.20180010), [-PDF-](https://pubs.aeaweb.org/doi/pdfplus/10.1257/app.20180010),[-cited-](https://scholar.google.com/scholar?cites=167605246068571565&as_sdt=2005&sciodt=0,5&hl=en), [-Appendix-](https://www.aeaweb.org/content/file?id=10629), [-Replication-](https://www.openicpsr.org/openicpsr/project/116366/version/V1/view)

- 丹麦的数据，孩子出生对劳动力市场性别不平等的影响。
- 发现：孩子的到来导致了长期的性别差距：工资差距大概 20%。
  - 这种差距在最近的 30-40 年中越来越显著。
  - 这种差距是由每周工作的小时数、参与率以及工资率等造成的。

> 更多顶刊可视化: [论文写作](https://www.lianxh.cn/blogs/31.html) &rarr; [论文中因果推断的经典图形](https://www.lianxh.cn/news/0593e9487d93e.html)


--- - --

<!-- backgroundColor: #FFFFF9 -->

![bg left:45% w:600](https://fig-lianxh.oss-cn-shenzhen.aliyuncs.com/B208-陈卓然-因果推断经典图形-Kleven2019AEAAEA2.png)

![w:800](https://fig-lianxh.oss-cn-shenzhen.aliyuncs.com/B208-陈卓然-因果推断经典图形-Kleven2019AEAAEB.png)

--- - --
### 信息技术与一价定律

> Jensen, R., The digital provide: Information (technology), market performance, and welfare in the South Indian fisheries sector. **Quarterly Journal of Economics**, 2007, 122 (3): 879-924. [-Link-](https://academic.oup.com/qje/article/122/3/879/1879540?login=true),[-PDF-](https://sci-hub.mksa.top/10.1162/qjec.122.3.879) [-cited-](https://scholar.google.com/scholar?cites=14479768387379224975&as_sdt=2005&sciodt=0,5&hl=en).

- 信息成本高 &rarr; 套利活动受阻 &rarr; **一价定律** ${\color{red}{??}}$
- 手机 &rarr; 信息技术进步 &rarr; 市场效率提高 &rarr; 社会福利增加
- **Data:** 
  - 印度南部的一个以渔业为主的州: Kerala
  - 1997-2001 年，陆续引入移动手机 &rarr; 海鲜价格波动 
- **发现：** 移动手机引入后，价格波动大幅降低 &rarr; **一价定律** ${\color{blue}{\text{OK}}}$




--- - --

![w:900](https://fig-lianxh.oss-cn-shenzhen.aliyuncs.com/20220626191325.png)

--- - --

![w:900](https://fig-lianxh.oss-cn-shenzhen.aliyuncs.com/20220626191935.png)

--- - --
<!-- backgroundColor: #C1CDCD -->

## 2. 为什要可视化 ？

<!-- 
### 大咖怎么看？

<br>

> A picture is worth a thousand words. —— Barnard (1927)  

> Graphs are essential to good statistical analysis. —— Anscombe (1973)

> The greatest value of a graph is when it forces us to see what we never expected. —— Tukey (1977)

> A picture may be worth a thousand words, but it may take a hundred words to do it. —— Tukey (1986)

> Visualization is critical to data analysis. —— Cleveland (1993) -->

<!-- 
![h:640](https://fig-lianxh.oss-cn-shenzhen.aliyuncs.com/20220630010015.png)
-->

<!-- 
--- - --


##### Table 2. Graphical Analyses in Top Manag Journals (Starr, [2020](https://doi.org/https://doi.org/10.1002/smj.3199), [PDF](http://sci-hub.ren/https://doi.org/10.1002/smj.3199)) 

&\text { Table 2. Graphical Analyses in Top Management Journals } \\
$$
\begin{aligned}

&\begin{array}{lrr}
\hline \textbf { Panel A. Graphs in the manuscripts } & \text { Mean } & N \\ 
\text { Was there a graph at all in the manuscript? } & 46 \% & 100 \\
\text { Was the distribution of a variable graphically shown? } & 2 \% & 100 \\
\text { Was the relationship between } x \text { and } y \text { shown at all? } & 35 \% & 100 \\ \newline
\textbf {Panel B. Graphing the Relationship of Interest } & & \\ 
\text { Was a scatter plot between } x \text { and } y \text { shown? } & 4 \% & 100 \\
\text { Were the fitted values from the estimated model graphed? } & 27 \% & 100 \\
\text { Was the raw data shown, after conditioning out observables? } & 1 \% & 100 \\
\text { Was the relationship between } x \text { and y shown in any other way? } & 10 \% & 100 \\ \newline
\textbf {Panel C. Interaction or Subgroup Analyses } \\
\text { Was there an interaction hypothesis? } & 63 \% & 100 \\
\text { Were the interaction results displayed graphically? } & 49 \% & 63 \\
\text { Were the fitted values for the interaction model graphed? } & 48 \% & 63 \\ \newline
\textbf {Panel D. Outliers and Functional Forms } & & \\
\text { Were any the independent variables of interest continuous? } & 94 \% & 100 \\
\text { How many functional forms were examined for these variables? } & 1.07 & 94 \\
\text { Was sensitivity to outliers explored? } & 18 \% & 94 \\
\hline
\end{array}
\end{aligned}
$$ -->

--- - --

### Why ？
<!-- backgroundColor: #FFFFF9 -->

<br>

- **直观**：快速了解信息
- **视觉冲击力**：印象深刻
- **不得不**：
  - 分布 (密度函数、直方图等)
  - 地图
  - 三维图
- **场景**：Seminar, 会议，答辩，group Pre

--- - --

### Why 01 ： 数据长啥样 ?
- 在正式回归分析之前，务必多做一些描述性统计分析
- 绘制散点图有助于识别如下问题： ([Source: Anscombe, 1973, p.17](https://www.sjsu.edu/faculty/gerstman/StatPrimer/anscombe1973.pdf))

  - $(x, y)$ 的散点基本上处于一条直线上
  - $(x, y)$ 的散点分布于一条平滑的曲线，而非直线上
  - $y$ 集中于某一点，基本上与 $x$ 无关
  - 常规 (幸运) 情形：介于以上几种情形之间
  - 多数点都正常，但有个别 **离群值** 


--- - --

![bg left:71% w:890](https://fig-lianxh.oss-cn-shenzhen.aliyuncs.com/Anscombe1973_Figs.png)

> Source: [Anscombe, 1973, p.17](https://www.sjsu.edu/faculty/gerstman/StatPrimer/anscombe1973.pdf)

--- - --
<!-- backgroundColor: #e6e6fa -->
```stata
clear
input x      y1    y2    y3   x4    y4 
     10.0  8.04  9.14  7.46  8.0  6.58 
      8.0  6.95  8.14  6.77  8.0  5.76 
     13.0  7.58  8.74 12.74  8.0  7.71 
      9.0  8.81  8.77  7.11  8.0  8.84 
     11.0  8.33  9.26  7.81  8.0  8.47 
     14.0  9.96  8.10  8.84  8.0  7.04 
      6.0  7.24  6.13  6.08  8.0  5.25 
      4.0  4.26  3.10  5.39 19.0 12.50 
     12.0 10.84  9.13  8.15  8.0  5.56 
      7.0  4.82  7.26  6.42  8.0  7.91 
      5.0  5.68  4.74  5.73  8.0  6.89
end 
label data "Anscombe (1973), The American Statistician, 27(1): 17-21, Table 1"
save "$data/Anscombe1973", replace 
```

--- - --
<!-- backgroundColor: #e6e6fa -->
```stata
ssc install cleanplots  // 安装绘图模板
set scheme cleanplots

global opt "legend(off) lc(green*2)"
tw scatter y1 x  || lfit y1 x , $opt xtitle("Fig 1")

graph save "Anscombe1973_1_temp.gph", replace 
tw scatter y2 x  || lfit y2 x , $opt xtitle("Fig 2")

graph save "Anscombe1973_2_temp.gph", replace
tw scatter y3 x  || lfit y3 x , $opt xtitle("Fig 3")

graph save "Anscombe1973_3_temp.gph", replace
tw scatter y4 x4 || lfit y4 x4, $opt xtitle("Fig 4")

graph save "Anscombe1973_4_temp.gph", replace

*-combine
graph combine "Anscombe1973_1_temp.gph" "Anscombe1973_2_temp.gph" ///
              "Anscombe1973_3_temp.gph" "Anscombe1973_4_temp.gph", xcommon ycommon

graph export "$fig/Anscombe1973_Figs.png", replace width(1200)
```

--- - --
<!-- backgroundColor: #FFFFF9 -->
### Why 02 ：辅助学习

--- - --

### OLS 的无偏性：模拟分析 - 01

<br>

- 单次抽样具有随机性 (原因？)
- 然而，如果抽样很多次，如 $K=1000$ 次，取它们的均值，$E[\hat{\beta}]$，可以很大程度上消除随机误差的影响
  
- 这个均值应该接近真实值：$E[\hat{\beta}]={\beta}_0$

--- - --

### OLS 的无偏性：模拟分析 - 02

**MC-DGP 过程**
- **S1:** 随机生成一个包含 $N=100000$ 个观察值的样本 (视为 “总体”，Population), 记为 $S_{0}$ 。
  - 数据生成过程 (DGP) 为 $y=10+0.5 x+e$, 
  - 其中, $x$ 和 $e$ 均来自标准正态分布, 彼此独立。
- **S2:** 从 $S_{0}$ 中随机抽取 $n=50$ 个观察值, 形成一组抽样样本 (Sample), 
  - 执行 OLS 估计, 记录 $\hat{\beta}$ 和 $\small\operatorname{se}(\hat{\beta})$
  
- **S3:** 重复第二步 $K=1000$ 次，得到 $\hat{\boldsymbol{\beta}}_j = \{\hat{\beta}_1, \hat{\beta}_2, \cdots, \hat{\beta}_K\}$。

--- - --
<!-- backgroundColor: #e6e6fa -->
```stata
clear 
set seed 1357
set obs 100000

gen x = rnormal(0,1)
gen y = 10 + 0.5*x + rnormal()
gen b = .
gen b_se = .
local  n = 50       // 每次抽样的样本数
global K = 1000     // 模拟次数
gen id = _n in 1/$K // 样本序号
forvalues j =1/$K {
   preserve
     qui sample `n', count
     qui reg y x 
   restore
   qui replace    b = _b[x]  in `j'
   qui replace b_se = _se[x] in `j'
   dis "." _c
}
```

--- - --

```stata
*-图示系数估计值
  kdensity b, xline(0.5, lp(dash) lc(red) noextend)
```

![w:700](https://fig-lianxh.oss-cn-shenzhen.aliyuncs.com/OLS_unbias_b_density.png)


--- - --

```stata
*-图示 t-value
  gen t = b/b_se
  kdensity t, xline(1.96, lp(dash) lc(red) ///
     noextend) normal title(" ") ///
     legend(order(1 "b_j den" 2 "Normal den") ring(0) pos(3))
```

![w:700](https://fig-lianxh.oss-cn-shenzhen.aliyuncs.com/OLS_t_value_kden.png)

--- - --
![](https://fig-lianxh.oss-cn-shenzhen.aliyuncs.com/OLS_unbias_b.png)

--- - --
<!-- backgroundColor: #FFFFF9 -->
### OLS 估计的一致性 - 01

<br>

所谓估计量的「一致性」,  
是指当样本数 $n \rightarrow \infty$ 时, 估计值无限接近于真实值, 表示为 

$$\hat{\beta} \stackrel{p}{\longrightarrow} \beta$$ 

或 

$$\hat{\beta}=\beta+o_{p}(1)$$

--- - --
<!-- backgroundColor: #FFFFF9 -->
### OLS 估计的一致性 - 02

<br>

**MC 模拟分析：**
- (1) 随机生成一个包含 $N=$ 100000 个观察值的样本 (视为 “总体”), 记为 $S_{0}$ 。数据生成过程 (DGP) 为 $y=10+0.5 x+e$, 其 中, $x$ 和 $e$ 均来自标准正态分布, 彼此独立。
- (2) 从 $S_{0}$ 中随机抽取 $n=10$ 个观察值, 视为一组抽样样本 (sample), 执行 OLS 估计, 记录 $\hat{\beta}$ 和 $\operatorname{se}(\hat{\beta})$ 。
- (3) 重复第二步, 但每次抽取的样本数 $n$ 不断增加，$n=10, 20, ..., 30000$。

--- - --
<!-- backgroundColor: #e6e6fa -->
```stata
*-MC，OLS 估计的一致性：
* 随着样本数的增大，OLS 估计值趋向于真实值，方差趋近于 0
clear 
set seed 13579
set obs 100000
gen x = rnormal(0,1)
gen y = 10 + 0.5*x + rnormal()
local j = 1
gen n = .
gen b = .
gen b_se = .
foreach i of numlist 10(10)1000 1100(100)30000{
   preserve
     qui sample `i', count
     qui reg y x 
   restore
   qui replace    n = e(N)   in `j'
   qui replace    b = _b[x]  in `j'
   qui replace b_se = _se[x] in `j++'
   dis "." _c
}
```

--- - --

```stata
tw (line b n) (line b_se n), yline(0.5, lp(dash)) ///
   ylabel(0(0.1)0.8) xlabel(10 50 100 400 1000 5000 30000) ///
   xscale(log) legend(ring(0) pos(2)) //scheme(tufte)
```

![w:700](https://fig-lianxh.oss-cn-shenzhen.aliyuncs.com/OLS_consis_b_se.png)


--- - --
<!-- backgroundColor: #FFFFF9 -->
### Why 03 ：参透计量原理

<br>

> 例：何谓固定效应 ？何谓组内去心？

<br>

$$
\begin{aligned}
y_{i t} &= {\color{red}{\alpha_{i}}}+x_{i t} \beta+\varepsilon_{i t} \\
&=\sum_{i}^{N} \alpha_{i} D_{i}+x_{i t} \beta+\varepsilon_{i t}
\end{aligned}
$$

--- - --
<!-- backgroundColor: #FFFFF9 -->
**Raw:** $\small\qquad\qquad\quad y_{it} = \alpha_i + x_{it}\beta + \varepsilon_{it}$ 
 <!--$D_i = 1\ \text{for firm}\ i$ and $0$ otherwise-->

**De-meaned:** $y_{it} -\bar{y}_i= (x_{it}-\bar{x}_i)\beta + (\varepsilon_{it}-\bar{\varepsilon}_i)$

![w:750](https://fig-lianxh.oss-cn-shenzhen.aliyuncs.com/Fig_OLS_FE_01.png)

--- - --

### FE：de-meaned 正式表述
$$
\begin{aligned}
y_{i t} &=x_{i t} \beta+ {\color{red}{\alpha_{i}}}+\varepsilon_{i t} \qquad (1) \\
\bar{y}_{i} &=\bar{x}_{i} \beta+{\color{red}{\alpha_{i}}}+\bar{\varepsilon}_{i} \\
\left(y_{i t}-\bar{y}_{i}\right) &=\left(x_{i t}-\bar{x}\right) \beta+\left({\color{red}{\alpha_{i}}}-{\color{red}{\alpha_{i}}}\right)+\left(\varepsilon_{i t}-\bar{\varepsilon}_{i}\right) \\
\ddot{y}_{i t} &=\ddot{x}_{i t} \beta+\ddot{\varepsilon}_{i t} \qquad\qquad\ (2)
\end{aligned}
$$

> (1) 式和 (2) 式中 $\beta$ 的 OLS 估计是等价的

--- - --
<!-- backgroundColor: #e6e6fa -->
#### 数据生成过程 (DGP)
```stata
clear
set obs 60
set seed 13599

egen id= seq(), from(1) to(3) block(20)
bysort id : gen t = _n + 1990

gen x1 = 3*rnormal() 
gen  e = 1*rnormal()
gen y = .

gen     x = x1 + 0
replace x = x1 + 4 if 1.id
replace x = x1 - 5 if 3.id

replace y = 6  + 0.4*x + e if id==1
replace y = 10 + 0.4*x + e if id==2
replace y = 15 + 0.4*x + e if id==3

bysort id: center y x, prefix(c_)  // De-mean

save "FWL_sim_data_FE", replace 
```

--- - --
#### 绘图1：手动
```stata
use "FWL_sim_data_FE", clear
#delimit ;
  twoway (scatter y x     if id==1, mcolor(green) msymbol(+)) 
         (scatter y x     if id==2, mc(red)  ms(oh))
         (scatter y x     if id==3, mc(blue) ms(dh))
         (lfit    y x,    lcolor(purple) lw(*1.5))    
         (lfit    y x     if id==1, lc(gray) lw(*1))
         (lfit    y x     if id==2, lc(gray) lw(*1))
         (lfit    y x     if id==3, lc(gray) lw(*1))
         (scatter c_y c_x if id==1, mcolor(green) msymbol(+)) 
         (scatter c_y c_x if id==2, mc(red)  ms(oh))
         (scatter c_y c_x if id==3, mc(blue) ms(dh))
         (lfit    c_y c_x,lcolor(purple) lw(*1.5))    
         (lfit    c_y c_x if id==1, lc(gray) lw(*1))
         (lfit    c_y c_x if id==2, lc(gray) lw(*1))
         (lfit    c_y c_x if id==3, lc(gray) lw(*1))
         , 
         yline(5, lp(longdash) lc(blue*1.5%30))
         ylabel(,angle(0))
         text(15.5 9.4 "Raw") text( 4 8.8   "De-mean")
         legend(off)  ;
#delimit cr
```

--- - --

#### 绘图 2：使用 `binscatter2` 命令

```stata
  use "FWL_sim_data_FE", clear

  global legend "legend(ring(0) pos(2) col(1))"
  global scheme "scheme(white_tableau)"
  global scheme "scheme(tufte)"
  
  binscatter2 y x, n(60) by(id)            /// // Raw
              $legend $scheme  

  binscatter2 y x, n(60) by(id) absorb(id) /// // De-mean
              $legend $scheme
```

--- - --

- $\tilde{y}_{it} = y_{it} - \bar{y}_{i.} + {\color{red}{\bar{\!{\bar{y}}}_{..}}}$ &emsp; 命令： `binscatter2 ...`
- $\ddot{y}_{it} = y_{it} - \bar{y}_{i.}$ &emsp; &emsp; &emsp; 命令：`binscatter2 ..., noaddmean`
  
![h:500](https://fig-lianxh.oss-cn-shenzhen.aliyuncs.com/20220703002127.png)

--- - --
<!-- backgroundColor: #FFFFF9 -->
### 挑战

<br>

- 数据量大 &rarr; 可视化不容易做 &rarr; `binscatter` **分仓散点图**
  
- 变量很多，存在异质性影响，如何「控制其他变量」？ &rarr; **FWL 定理**
- 要有设计师的视角和思路 &rarr; 工具箱 + 好想法

<br>

--- - --

### 基本原则：要有清晰的目标

<br>

> 可视化与 $t$-检验、回归分析等相辅相成

- 直方图/点图/密度函数图：呈现一维连续变量的分布特征
- 条形图：比较一维分类数据
- 散点图/分仓散点图：显示变量 $Y$ 和 $X$ 的之间的相关性，分组特征
- 马赛克图：显示分类 $Y$ 和 $X$ 的关联（或缺乏关联）
- QQ 图：比较两个连续分布、分布的尾部特征、结构变化等

<!--  Some scientific purposes: (Note close connections to $t$-tests, regression etc)
- Histogram/dotchart/beeswarm plot: summarize 1D continuous data
- Barchart: compare 1D categorical data
- Scatterplots: show association of continuous $Y$ and $X$ (or lack of association)
- Mosaic plots: show association of categorical $Y$ and $X$ (or lack of association)
- QQ plots: compare two continuous distributions; talk about the shift, spread, heavy tails, light tails etc
-->

> Source: Rice, K., 2021, Communicating using graphics, [Slides](https://faculty.washington.edu/kenrice/HowToGraph2021.pdf)

--- - --

### 准确传达信息 - bad

```stata
  sysuse "nlsw88.dta", clear
  graph dot wage, over(industry) over(collgrad)    
```


![w:810](https://fig-lianxh.oss-cn-shenzhen.aliyuncs.com/gr_graph_dot_wage_ind_01.png)

--- - --

### 准确传达信息 - better

```stata
separate wage, by(collgrad)   // 拆分变量
graph dot (mean) wage0 (mean) wage1, over(industry) subtitle(hourly wage ($)) ///
      legend(order (1 "College" 2 "NonColl") ring(0) pos(5) row(2) box) 
```


![w:750](https://fig-lianxh.oss-cn-shenzhen.aliyuncs.com/gr_graph_dot_wage_ind_02.png)

--- - --

<!-- backgroundColor: #C1CDCD -->

## 3. Stata 绘图命令的基本语法

<br>

> &#x1F34E; [Stata 小抄 - PDF](https://www.stata.com/bookstore/statacheatsheets.pdf) 查看图形部分的选项名称

- **图形选项** &emsp;  [PDF-**Options**](https://www.stata.com/manuals/g-3twoway_options.pdf#g-3twoway_optionsSyntax)
  
  - [给你的图形化个妆：Stata绘图常用选项汇总-上篇](https://www.lianxh.cn/news/59bc1ff7d027a.html)
  
  - [给你的图形化个妆：Stata绘图常用选项汇总-下篇](https://www.lianxh.cn/news/180daa074ef27.html)

- **推文：** `. lianxh 绘图 可视化`

--- - --
<!-- backgroundColor: #EFFFF9 -->
### &#x1F34E; 特别提示

<br>

在 Stata 中搜索有关图形和图形选项的帮助时，  
务必使用如下格式 (附加 `graph` 关键字)：
> `help graph keywords`
 
- e.g. 
  - `help graph yline`
  - `help graph marker label`

<br>
<br>

--- - --
<!-- backgroundColor: #FFFFF9 -->

### Stata 绘图：基本逻辑

<br>

> &#x1F353;  图形无非是 **点**、**线(面)**、**文字** 等元素的组合

- 这些组合的整体「**风格**」构成了图类:  **单元图**（逗号前的部分）
  - `twoway (图层1) (图层2) ..., options`
- 每种图形的具体特征由 **元素** 的特征决定：**选项**（逗号后的部分）
  - `twoway ..., Opt1(... , subopt1 subopt2 ...) Opt2(.,.) ...`

- 因此，Stata 绘图的关键是：**选项的填写** ！


--- - --

### 几种常用图形
```stata
    sysuse sp500, clear

  *-散点图
    twoway scatter high date
    
  *-折线图
    twoway line change date
    
  *-柱状图
    twoway bar open date in 1/50
    
  *-直方图
    histogram change
    
  *-密度函数图
    kdensity close, normal
    
  *-数学函数图
    twoway (function y=sin(x), range(-10 10) lwidth(*1.5))
```
--- - --

```stata
*-第一幅图
sysuse "auto.dta", clear
set scheme s1mono
*-乞丐版
twoway (scatter mpg weight) ///
       (lfit    mpg weight)
*-高配版
#d ;
tw
  (scatter mpg weight, 
         msize(small) 
         msymbol(oh) 
  )
  (lfit mpg weight, 
         lcolor(blue) 
         lwidth(*1.3) 
         lpattern(dash)
  )
  ,
  title("My first graph")
  note("Author: lianxh.cn") ;
#d cr
```

![bg right:55% w:700](https://fig-lianxh.oss-cn-shenzhen.aliyuncs.com/graph_fig001.png)


--- - --

```stata
 sysuse "sp500", clear
 replace volume = volume/1000
 keep in 1/57
*----------------------------------------Begin
#delimit ;
 twoway                        //help twoway
    (rspike hi low date, lw(*1.3))
    (line   close  date, 
       lpattern(solid) lwidth(*1.2) lcolor(blue))
   , 
   yscale(range(1100 1400))    //help axis_options
   ylabel(1100(100)1400, grid) //help axis_options
   ymtick(##5)                 //help axis_options
   xlabel(, angle(30))         //help axis_options
   ytitle("股价", place(top))  //help title_options
   xtitle("交易日")            //help title_options
   legend(order(1 "High-Low" 2 "Close") 
          ring(0) position(2) row(2)) //help legend_options
   subtitle("S&P 500", margin(b+2.5)) //help title_options
   note("数据来源: 雅虎财经！")         //help title_options
   scheme(s2mono);                    //help scheme 
#delimit cr
*----------------------------------------Over
```

![bg right:40% w:500](https://fig-lianxh.oss-cn-shenzhen.aliyuncs.com/20220625133729.png)

--- - --

![bg right:50% w:650](https://fig-lianxh.oss-cn-shenzhen.aliyuncs.com/graph_sp500_rspike.png)

```stata
 sysuse "sp500", clear
 replace volume = volume/1000
 ssc install schemepack, replace // 安装模板
 set scheme white_tableau        // 指定模板

*----------------------------------------Begin
#delimit ;
 twoway 
    (rspike hi low date)
    (line   close  date)
    (bar    volume date, barw(.25) yaxis(2))
     in 1/57
   , 
   yscale(axis(1) r(900 1400))
   yscale(axis(2) r(  9   45))
   ylabel(, axis(2) grid)
   ytitle("股价: 最高, 最低, 收盘",place(top))
   ytitle("交易量 (百万股)", axis(2) 
           bexpand just(left))
   xtitle(" ")
   legend(off)
   subtitle("S&P 500", margin(b+2.5))
   note("数据来源: 雅虎财经！") ;
#delimit cr
*----------------------------------------Over

graph export "sp500_rspike.png", replace
```

--- - --

![](https://fig-lianxh.oss-cn-shenzhen.aliyuncs.com/20220630132421.png)

--- - --
<!-- backgroundColor: #C1CDCD -->

## addplot 
- `help graph addplot` [**[G-3]** graph addplot](https://www.stata.com/manuals/g-3addplot_option.pdf) 

- `help addplot`
  - Jann, Ben. 2015, A Note on Adding Objects to an Existing Twoway Graph, Stata Journal, 15(3): 751–755. [-PDF-](https://journals.sagepub.com/doi/pdf/10.1177/1536867X1501500308)

--- - --
<!-- backgroundColor: #FFFFF9 -->
![w:900](https://fig-lianxh.oss-cn-shenzhen.aliyuncs.com/gr_addplot_01.png)

--- - --
<!-- backgroundColor: #e6e6fa -->
```stata
  use "https://www.stata-press.com/data/r17/grunfeld.dta", clear
  
  gen lnInv = ln(invest) 
  gen lnMV  = ln(mvalue)

  *-----------------------------------------Begin-----------
    local y "lnInv"
    local y "lnMV"
    twoway line `y' time if company==3, lw(*2) lc(black) lp(solid)
    foreach i of numlist 1 2 4/10{
      addplot: line `y' time if company==`i', ///
               lc(black*0.6%50) lp(solid) legend(off)
    }
  *-----------------------------------------Over------------
```


--- - --
<!-- backgroundColor: #C1CDCD -->

## 标注：文字说明和附加线

--- - --
<!-- backgroundColor: #FFFFF9 -->
### 
![](https://fig-lianxh.oss-cn-shenzhen.aliyuncs.com/20220707093128.png)


--- - --

### 在图形中添加文字标注

- 基本语法：`help added_text_options` [**[G-3]** added_text_options](https://www.stata.com/manuals/g-3added_text_options.pdf)   
  `tw line y x, text(纵坐标 横坐标 "说明文字", place(e) size(*1.2) color(black*0.7%60))` 
  - `size(*1.2)`: 默认 size 的 1.2 倍
  - `color(black*0.7%60)`, 黑色，浓度为默认值的 0.7 倍，透明度为 70%
  - `place(符号)` 选项
$$
\begin{array}{clcl}
\text {符号} & \text { 位置 } & \text {符号} & \text { 位置 }\\
\hline 
\mathrm{c} & \text { 以点为中心，垂直和水平 } \\
\mathrm{n} & \text { 在点的上方，居中 } & \text { ne } & \text { 在点的右上方 } \\ 
\text { s } & \text { 在点的下方，居中 } & \text { sw } & \text { 在点的左下方 } \\
\text { e } & \text { 在点的右侧，垂直居中 } & \text { se } & \text { 在点的右下方 }\\
\text { w } & \text { 在点的左侧，垂直居中 } & \text { nw } & \text { 在点的左上方 } \\
\hline
\end{array}
$$
--- - --
<!-- backgroundColor: #e6e6fa -->
```stata
   sysuse "auto.dta", clear
   twoway scatter mpg weight,  ///
      text(34 2500 "Small Cars", place(e) size(*0.9) color(blue)) ///
      text(28 4100 "Larg Cars",  place(e) size(*1.5) color(black*0.7)) 
```

<br>



![w:650](https://fig-lianxh.oss-cn-shenzhen.aliyuncs.com/gr_added_text_01.png)


--- - --
<!-- backgroundColor: #FFFFF9 -->
### 附加线：`yline(), xline()`

<br>

> `help graph yline`，  [**[G-3]** graph yline](https://www.stata.com/manuals/g-3added_line_options.pdf) 

<br>

- 专题：[Stata绘图](https://www.lianxh.cn/blogs/24.html)
  - [Stata绘图：怎么在Stata图形中附加水平线或竖直线？](https://www.lianxh.cn/news/34bb158641831.html)
  - [Stata绘图：在图片中添加虚线网格线](https://www.lianxh.cn/news/126f5d3d6fae5.html)


--- - --
<!-- backgroundColor: #e6e6fa -->
> 示例：附加线，`help graph yline`，  [**[G-3]** graph yline](https://www.stata.com/manuals/g-3added_line_options.pdf) 

```stata
 *-选项结构
  
  * twoway ..., yline(数字, 子选项)
  * twoway ..., xline(数字, 子选项)
    *-数 字： 控制附加线的位置
    *-子选项：控制附加线的类型、颜色、宽度等
    
   sysuse "sp500", clear
   line open date, yline(1100 , lp(shortdash_dot) lc(blue*0.6))  ///
                   yline(1313 , lw(*2.5) lc(green*0.8%40))       ///
                   xline(15242, lw(*2) lc(pink*0.4) lp(longdash)) 
                   
   * lp(): lpattern()  线型 solid, dash, longdash, shortdash, dot
   * lw(): lwidth()    线宽 *# , 是默认线宽的 # 倍
   * lc(): lcolor()    线的颜色, black, blue, red
   *       lc(green*0.8%40): 是标准绿色浓度的 0.8 倍，透明度为 40%
 
   graph export "gr_addline_01.png", replace  
```

--- - --
<!-- backgroundColor: #FFFFF9 -->
![w:900](https://fig-lianxh.oss-cn-shenzhen.aliyuncs.com/gr_addline_01.png)

--- - --

### 文字属性：添加数学符号
- 字体调整：加粗、斜体、数学符号等 `help graph text`， [**[G-4]** graph text](https://www.stata.com/manuals/g-4text.pdf) 
  
```stata
    twoway function y = 2*exp(-2*x), range(0 2) ///
           text(1.7 1.2 "{&function} (x) = 2e{superscript:-2x}") 
```



![w:700](https://fig-lianxh.oss-cn-shenzhen.aliyuncs.com/gr_function_text.png)

--- - --
<!-- backgroundColor: #C1CDCD -->

## 直方图、柱状图和点图

> . `lianxh 直方图 柱状图`     
> . `ihelp hisogram` [**[R]** histogram](https://www.stata.com/manuals/rhistogram.pdf) 
> . `ihelp graph bar`, `graph hbar`  [**[G-2]** graph bar](https://www.stata.com/manuals/g-2graphbar.pdf) 
> . `ihelp graph dot`  [**[G-2]** graph dot](https://www.stata.com/manuals/g-2graphdot.pdf) 

--- - --
<!-- backgroundColor: #FFFFF9 -->

### 直方图、柱状图和点图

- 专题：[Stata绘图](https://www.lianxh.cn/blogs/24.html)
  - [Stata绘图：柱状图专题-T212](https://www.lianxh.cn/news/df9729c5de34d.html)
  - [Stata：读懂直方图](https://www.lianxh.cn/news/cf563fbedc5db.html)
  - [Stata绘图：多维柱状图绘制](https://www.lianxh.cn/news/01fab25337d76.html)
  - [Stata绘图：环形柱状图-实时全球新冠确诊人数](https://www.lianxh.cn/news/b33c479a0a6de.html)
  
- Martin, L. A., K. Zhang, **2021**, Changing population exposure to pollution in china's special economic zones, **AEA Papers and Proceedings**, 111: 406-409. [-Link-](https://doi.org/10.1257/pandp.20211074), [-PDF-](https://www.ens.psl.eu/sites/default/files/eco-article6.pdf), [Replication](https://www.openicpsr.org/openicpsr/project/139441/version/V1/view)


--- - --

![w:900](https://fig-lianxh.oss-cn-shenzhen.aliyuncs.com/gr_Hist_wage_lnw.png)

--- - --
<!-- backgroundColor: #e6e6fa -->

> 示例：直方图

```stata
      sysuse nlsw88.dta, clear

      gen lnwage = ln(wage)
      
      histogram wage
      
      histogram lnwage         // 对数转换后往往更符合正态分布
        
      twoway ///
        (hist wage, fcolor(none) lcolor(blue%70) frequency bin(30)) ///
        (hist lnwage, xaxis(2) yaxis(2)   ///
              fcolor(none) lcolor(black%90) lp(dash) frequency),    ///
        legend(order (1 "wage" 2 "ln(wage)") ring(0) pos(2) col(1)) ///
        scheme(scientific)

      graph export "Hist_wage_lnw.png", width(1200) replace  

      *-fcolor(none) : 条形图内部不填充颜色
      *-lcolor(black): 条形图边框颜色
```

--- - --
<!-- backgroundColor: #FFFFF9 -->
### 实例: Hansen (2015, AER)
> Hansen B. Punishment and deterrence: Evidence from drunk driving[J]. American Economic Review, 2015, 105(4): 1581-1617. [-Link-](https://www.aeaweb.org/articles?id=10.1257/aer.20130189), [-PDF-](http://sci-hub.ren/10.1257/aer.20130189), [-Data-](https://github.com/scunning1975/Baylor-Causal-Inference/blob/main/Code/Hansen%20DWI/), [-dofiles-](https://www.openicpsr.org/openicpsr/project/112907/version/V1/view)  

> &#x1F449;  **D:\stata\personal\PX_A_2022b\A4b_graph_visual\paper\Hansen2015_AER**

> **Fig 1 Notes**: Based on administrative records from the Washington State Impaired Driver Testing Program, 1999-2007. The histogram height on the vertical axis is based on frequency of observations, with BAC on the horizontal axis. The vertical black lines represent the two legal thresholds at $0.08$ and $0.15$. The bin width is $0.001$, the original precision used on the breathalyzers.

--- - --
<!-- backgroundColor: white -->

```stata
#d ;
histogram bac1, 
 frequency discrete 
 title("BAC Histogram")
 width(0.001)     
 lwidth(vvvthin)  
 fcolor(gray%40) lcolor(gray)
 xlabel(0(0.1)0.4,format(%2.1f))
 xscale(titlegap(3))
 xline(0.08 0.15, noextend)
 scheme(scientific) ;
#d cr  
```

![bg left:60% w:800](https://fig-lianxh.oss-cn-shenzhen.aliyuncs.com/gr_hist_Hansen2015_Fig01.png)

--- - --
<!-- backgroundColor: #e6e6fa -->
> Full codes

```stata
use "https://github.com/scunning1975/causal-inference-class/raw/master/hansen_dwi"

label var bac1 "BAC (blood alcohol content)"

histogram bac1,  ///
   frequency discrete     ///
   title("BAC Histogram") ///
   width(0.001)           ///
   lwidth(vvvthin)        ///
   fcolor(gray%40) lcolor(gray)    ///
   xlabel(0(0.1)0.4,format(%2.1f)) ///
   xscale(titlegap(3))    ///
   xline(0.08 0.15, noextend)      ///
   scheme(scientific) 

graph export "gr_hist_Hansen2015_Fig01.png", width(1200) replace   
```


--- - --
<!-- backgroundColor: #e6e6fa -->
> 示例：点图

```stata
  sysuse "nlsw88.dta", clear
  
  graph dot wage, over(industry) over(collgrad)    

  *-better one
  separate wage, by(collgrad)   // 拆分变量
  graph dot (mean) wage0 (mean) wage1, ///
        over(industry) ///
        subtitle(hourly wage ($)) ///
        legend(order (1 "College" 2 "NonColl") ///
               ring(0) pos(5) row(2) box)   
```

![bg left:47% w:650](https://fig-lianxh.oss-cn-shenzhen.aliyuncs.com/gr_graph_dot_wage_ind_02.png)

--- - --
<!-- backgroundColor: #C1CDCD -->

## 核密度函数图：kdensity

核密度函数图可以帮助我们快速了解变量的分布特征。
比如，变量的均值、离散程度、是否存在离群值等。
也可以通过对比不同组别，不同时点上的密度函数图，
以便查验变量在截面和时序上的分布差异。


- `help kdensity` 
- `help kdens2` [Stata：双变量联合核密度函数图-kdens2](https://www.lianxh.cn/news/70e7438474c79.html)
- `help mkdensity` [Stata：多个核密度函数图叠加-mkdensity](https://www.lianxh.cn/news/f419d0ee967a5.html)
- `help multidensity`
- `help dstat`  [Stata：描述性统计分析新命令-dstat](https://www.lianxh.cn/news/56f1a1d28823b.html)

--- - --
<!-- backgroundColor: #e6e6fa -->
```stata
*-kdensity: Stata 官方命令
*-比较不同子样本的密度函数

sysuse "nlsw88.dta", clear
gen lnwage = ln(wage)
twoway (kdensity lnwage if 1.race)     ///
       (kdensity lnwage if 2.race)     ///
       (kdensity lnwage if race!=3),   ///
       subtitle("density of ln(wage)") ///
       legend(order(1 "White"          ///
                    2 "Black"          ///
                    3 "All")           ///
              ring(0) pos(3) col(1))   ///
       scheme(scientific) 
       // s1mono, white_tableau
```

![bg left:47% w:600](https://fig-lianxh.oss-cn-shenzhen.aliyuncs.com/gr_kdensity_wage_race.png)


--- - --

```stata
*-mkdensity：便于测试

sysuse "nlsw88.dta", clear
gen lnwage = ln(wage)
global y   "ttl_exp"
global y   "wage"
global y   "lnwage"
global gg  "union"
global gg  "race"
global gg  "collgrad"

set scheme s2mono 
set scheme scientific

mkdensity $y, over($gg)

```

![bg right:60% w:800](https://fig-lianxh.oss-cn-shenzhen.aliyuncs.com/gr_mkdensity_wage_01.png)

--- - --
<!-- backgroundColor: #C1CDCD -->

## 散点图：twoway scatter / superscatter

> 详见 dofile 



## superscatter

[Stata绘图：绘制美观的散点图-superscatter](https://www.lianxh.cn/news/b8ca39e205d86.html)

--- - --
<!-- backgroundColor: #C1CDCD -->

## 分仓散点图：binscatter / binscatter2

- 参考: 
  - [Stata：分仓散点图绘制-binscatter-binscatter2](https://www.lianxh.cn/news/bd70ec133d209.html)
  - 作者主页： [binscatter](https://michaelstepner.com/binscatter/), [Slide](https://michaelstepner.com/binscatter/binscatter-StataConference2014.pdf), [Help](http://www.haghish.com/statistics/stata-blog/stata-programming/download/binscatter.html)
  - Cattaneo, 2021, [on binscatter](https://cattaneo.princeton.edu/papers/Cattaneo-Crump-Farrell-Feng_2022_Binscatter--Slides.pdf), [-Appendix-](https://nppackages.github.io/references/Cattaneo-Crump-Farrell-Feng_2021_Binscatter--Supplemental.pdf), [-Replication-](https://github.com/nppackages-replication/CCFF_2022_wp),  理论基础和扩展
  - binscatter 应用和复现代码: [nppackages.github](https://nppackages.github.io/replication/)
  - Cattaneo, Jansson and Ma (2021, JoE), [-Replication-](https://github.com/nppackages-replication/CJM_2022_JOE)
  - Starr, E., B. Goldfarb, **2020**, Binned scatterplots: A simple tool to make research easier and better, **Strategic Management Journal**, 41 (12): 2261-2274. [-Link-](https://doi.org/https://doi.org/10.1002/smj.3199), [-PDF-](https://sci-hub.ren/https://doi.org/10.1002/smj.3199)
  - `binsreg`, Stata Journal [-PDF-](https://nppackages.github.io/references/Cattaneo-Crump-Farrell-Feng_2021_Stata.pdf), 这应该是后续一波潮流


--- - --
<!-- backgroundColor: #D1CDCD -->

# FWL 定理

## (Frisch-Waugh-Lovell therom)

--- - --

<!-- backgroundColor: #FFFFF9 -->

- FWL 定理由 Frisch and Waugh (1933) 和 Lovell (1963) 提出
  - 它阐释了 OLS 回归的一个重要性质，为理解多元回归的系数含义，高效地估计高维固定效应提供了一个重要的理论基础。
  - Davidson and MacKinnon ([1993](http://qed.econ.queensu.ca/pub/dm-book/EIE-davidson-mackinnon-2021.pdf), 19-24) 以及 Davidson and MacKinnon ([2004](http://qed.econ.queensu.ca/pub/faculty/mackinnon/econ850/), [PDF](http://qed.econ.queensu.ca/ETM/ETM-davidson-mackinnon-2021.pdf), pp. 62–75, [Slides](http://qed.econ.queensu.ca/pub/faculty/mackinnon/econ850/slides/econ850-slides-h03.pdf)) 对此进行非常细致的介绍。
- **应用：**
  - 在 Stata 中，`reghdfe` 等处理高维固定效应的命令基本原理便是 FWL 定理
  - 在 `ivreg2`, `lasso2` 等命令中经常出现的 `partial()` 选项也基于 FWL 定理
  - 用于可视化展示多元回归结果的部分回归图命令 `avplot`, `reganat`, `avciplot`, `avciplots`, `binscatter` 等也都基于 FWL 定理。

--- - --

- **Stata 实操**
  - Filoso, V., **2013**, Regression Anatomy, **Stata Journal**, 13(1): 92–106. [-PDF-](https://journals.sagepub.com/doi/pdf/10.1177/1536867X1301300107)
  - [图示线性回归系数：Frisch-Waugh定理与部分回归图](https://www.lianxh.cn/news/e346db1a68211.html)
  - [多元回归系数：我们都解释错了？](https://www.lianxh.cn/news/22f1f266f5868.html)


--- - --

### FWL 定理：图示 

--- - --

<!-- backgroundColor: white -->

![bg left:50% w:400](https://fig-lianxh.oss-cn-shenzhen.aliyuncs.com/OLS-venn-01.png)

![w:400](https://fig-lianxh.oss-cn-shenzhen.aliyuncs.com/OLS-venn-02.png)

--- - --

$Y=X_1 {\color{red}{\beta_1}} + X_2 \beta_2 + u$ $\ \ \Leftrightarrow$ $\ \ \tilde{Y}= \tilde{X}_1 {\color{red}{\beta_1}} + v$

![](https://fig-lianxh.oss-cn-shenzhen.aliyuncs.com/Lianxh_装饰黄线.png)

`reg Y X2` 
`predict eY, res` &rarr; $\small\ \ \ \tilde{Y} = A + {\color{blue}{B}}$

`reg X1 X2` 
`predict eX1, res` &rarr; $\tilde{X}_1 = F + {\color{blue}{B}}$
![](https://fig-lianxh.oss-cn-shenzhen.aliyuncs.com/Lianxh_装饰黄线.png)

`reg eY eX1` &rarr; `dis _b[eX1]` = $\small{\color{red}{\hat{\beta}_1}}$ &rarr; ${\color{blue}{B}}$

![bg left:40% w:400](https://fig-lianxh.oss-cn-shenzhen.aliyuncs.com/OLS-venn-01.png)



--- - --

$$Y=X_1 {\color{red}{\beta_1}} + X_2 \beta_2 + u \ \ {\color{blue}{\Leftrightarrow}} \ \ Y= \tilde{X}_1 {\color{red}{\beta_1}} + v$$

- 事实上，只需从 $X_1$ 中去除  (partial out) $X_2$ 的影响，得到 $\tilde{X}_1$，进而用 $Y$ 对 $\tilde{X}_1$ 进行回归即可。即，如下回归都是等价的：
  
  - `reg` $\tilde{Y}$ on $\small\tilde{X}_1$
  - `reg` ${Y}$ on $\small\tilde{X}_1$
  - `reg` ${Y}$ on $\small{X}_1, {X}_2$

![bg left:40% w:400](https://fig-lianxh.oss-cn-shenzhen.aliyuncs.com/OLS-venn-01.png)


--- - --
<!-- backgroundColor: #FFFFF9 -->
### 几种典型设定 - 1
$$Y=X_1 {\color{red}{\beta_1}} + X_2 \beta_2 + u \ \ {\color{blue}{\Leftrightarrow}} \ \ Y= \tilde{X}_1 {\color{red}{\beta_1}} + v$$

- $\small\bf{X_2} = \bf{1}$，去除样本均值 &emsp; `reg y x`
  
- $\small{\bf{X_2}} = Trend_t$，去除时间趋势
  - `reg y x  c.year`
- $\small{\bf{X}}_{{\bf{2}}it} = \alpha_i = \sum_1^N \alpha_i D_i$，去除个体效应
  -  `reg y x i.id` or `xtreg y x, fe`
- $\small{\bf{X}}_{{\bf{2}}it} = \lambda_t= \sum_1^T \lambda_t D_t$，去除时间效应 
  - `reg y x i.year` or `areg y x, ab(year)`

--- - --
<!-- backgroundColor: #FFFFF9 -->
### 几种典型设定 - 2
$$Y=X_1 {\color{red}{\beta_1}} + X_2 \beta_2 + u \ \ {\color{blue}{\Leftrightarrow}} \ \ Y= \tilde{X}_1 {\color{red}{\beta_1}} + v$$

- $\small{\bf{X}}_{{\bf{2}}it} = \alpha_i + \lambda_t$，双向固定效应 &rarr; DID
  - `. reghdfe y x, absorb(id year)` or `xtreg y x i.year, fe`
  
- $\small{\bf{X}}_{{\bf{2}}sjit} = \alpha_s + \alpha_j + \alpha_i + \lambda_t$，多维固定效应
  - `. reghdfe y x1 x2, absorb(province industry firm year)`
- $\small{\bf{X}}_{{\bf{2}}jt} = Ind_j + \lambda_t + Ind_j\times \lambda_t$，交互固定效应 
  - `. reghdfe y x, absorb(industry year industry#year)`


--- - --

![bg left:35% w:350](https://fig-lianxh.oss-cn-shenzhen.aliyuncs.com/OLS-venn-01.png)


### 遗漏变量偏误

<br>

- **真实模型：** $Y=X_1 {\color{red}{\beta_1}} + X_2 \beta_2 + u$
- &#x2753; 如果不控制 $x_2$，即 
  - `reg Y X1` $\small\iff$ $Y = X_1\theta_1 + \underbrace{{\color{red}{\varepsilon}}}_{X_2\beta_2+u}$
  - $\hat{\theta}_1 \neq \beta_1$
--- - --


<!-- backgroundColor: white -->

![](https://fig-lianxh.oss-cn-shenzhen.aliyuncs.com/20220524152544.png)

> Chetty R, et al. How does your kindergarten classroom affect your earnings? Evidence from Project STAR[J]. QJE, 2011, 126(4): 1593-1660. [-Link-](), 

--- - --

### binscatter: 税收与创新关系的直观展示 - 01

> :dog: Source: [Akcigit](http://www.ufukakcigit.com/), et al., **2022**, Taxation and innovation in the twentieth century, **QJE**, 137 (1): 329-385. [-Link-](https://doi.org/10.1093/qje/qjab022), [-PDF-](https://sci-hub.ren/10.1093/qje/qjab022), [-cited-](https://xs2.dailyheadlines.cc/scholar?cites=3691559864871282829&as_sdt=2005&sciodt=0,5&hl=zh-CN&scioq=Social+ties+and+the+selection+of+China%27s+political+elite), [-Codes-](https://doi.org/10.7910/DVN/SR410I)

> :cat: 模型设定 (TWFE)

$$\small
\begin{aligned}
Y_{s t}=& \alpha+\beta_{p} \ln \left(1-M T R 90_{s t-3}\right)+\beta_{c} \ln \left(1-\operatorname{Corp} . \mathrm{MTR}_{s t-3}\right) \\
&+\gamma \mathbb{X}_{s t}+\delta_{t}+\delta_{s}+\varepsilon_{s t} \quad \text{(3)}
\end{aligned}
$$

- $Y_{s t}$：$s$ 州在 $t$ 时期的创新产出：专利数、引用数、发明人人数等
- $MTR90_{s t-3}$：滞后 3 年期的个人所得税率
- $Corp.MTR_{s t-3}$：滞后 3 年期作为公司所得税
- $\delta_{t}$ 和 $\delta_{s}$：时间和州固定效应，以捕获不可观测的个体和时间趋势效应
- $X_{s t}$ 代表随时间变化的州层级的变量，包括：(滞后 3 期) 的人口密度 (城市化程度)、人均收入 (经济发展)、研发支出抵免 (税收激励)

--- - --

![bg left:50% w:650](https://fig-lianxh.oss-cn-shenzhen.aliyuncs.com/Akcigit_2022-Fig1A.png)

$$
Y_{s t}= \alpha+\beta_{p} \ln \left(1-M T R 90_{s t-3}\right) +\gamma \mathbb{X}_{s t}+\delta_{t}+\delta_{s}+\varepsilon_{s t}
$$

```stata
global x1 "L.real_gdp_pc L.population_density"
global x2 "rd_credit_lag3 i.statenum"
global cx "`x1' `x2'"
global T_p "mtr90_lag3"    // 个人税
global T_c "top_corp_lag3" // 公司税

*-画图：Figure 1 (A)
binscatter lnpat $T_p  [aw=pop1940], ///
    controls($T_c $cx) absorb(year)  ///
    nquantiles(100) noaddmean nofastxtile 
```








--- - --

## binscatter 构建方法

![bg right w:600](https://fig-lianxh.oss-cn-shenzhen.aliyuncs.com/Stata：binscatter和binscatter2命令简介_Fig3_实现步骤_钟声.jpg)


- 将 $x$ 轴的变量分为样本量相同的 bins；
- 计算每个 bin 内 $x$ 轴和 $y$ 轴变量的平均值；
- 创建这些数据点的散点图；
- 绘制总体回归线 (采用原始数据，而非生成的散点)。



--- - --

### binscatter: Applying partitioned regression
- 目的：分析 **wage** 和 **tenure** 的关系，但要控制 total work **experience**: [-Jann-2014-](https://michaelstepner.com/binscatter/binscatter-StataConference2014.pdf)
$$
\text { wage }=\alpha+\beta \text { tenure }+\gamma \text { experience }+\epsilon
$$
- M1：部分回归 ( FWL 定理 ):
  ```stata
  . sysuse "nlsw88.dta", clear
  . reg wage experience
  . predict wage_res, residuals
  . reg tenure experience
  . predict tenure_res, residuals
  . binscatter wage_res tenure_res
  ```
- M2：使用 `binscatter` 命令:
  - `binscatter wage tenure, controls(experience)`


--- - --

完整模型设定如下：
$$
wage_{it} = \alpha + \theta trend_t + \gamma Union_{it}  + Controls_{it} + u_{it}   
$$
其中，$trend_t$ 表示时间趋势，因此，$\theta$ 用以衡量平均增长率。
$Union_j (j=0,1)$ 为虚拟变量，工会成员取值为 1，否则为 0。

```stata
webuse "nlswork.dta", clear	

gen wage = exp(ln_wage)
binscatter wage year, by(union)                   // left
binscatter wage year, by(union) absorb(union)     // middle
binscatter wage year, by(union) absorb(union) /// // right
           controls(i.race msp collgrad ttl_exp hours) msymbols(+ oh)
```

--- - --
```stata
binscatter wage year, by(union) absorb(union) controls(i.race msp collgrad ttl_exp hours)
```
![w:900](https://fig-lianxh.oss-cn-shenzhen.aliyuncs.com/graph_binscatter_02.png)

--- - --

扩展：
- 附加 `median` 选项，可以呈现中位数
- 控制变量和固定效应：FWL
  - `controls(varlist)`
  - `absorb(varname)`：去除固定效应 (只能列一个变量)
- 图形选项：
  - `colors(colorstylelist)`    ordered list of colors
  - `mcolors(colorstylelist)`   overriding ordered list of colors for the markers
  - `lcolors(colorstylelist)`   overriding ordered list of colors for the lines
  - `msymbols(symbolstylelist)` ordered list of symbols





--- - --
<!-- backgroundColor: #C1CDCD -->

## 系数图：coefplot

- `coefplot`
- `multicoefplot`
  - example_multicoefplot.do
- `multidot` multiple panel dot charts and similar
- `multiline`
- `panelhetero`
- `panell`
- `panelview`

--- - --

<!-- backgroundColor: white -->

![bg left:60% w:700](https://fig-lianxh.oss-cn-shenzhen.aliyuncs.com/20220705221359.png)


> **Source:** **Fig 4.**  
> Chen, Kung, \& Ma (2020). Long live Keju! The persistent effects of China's civil examination system. The Economic Journal, 130(631), 2030-2064. [Link](https://doi.org/10.1093/ej/ueaa043), [PDF](http://sci-hub.ren/10.1093/ej/ueaa043)， [Replication](https://academic.oup.com/ej/article/130/631/2030/5819954?login=true#supplementary-data).  推文: [工具变量法（IV）的Stata操作](https://mp.weixin.qq.com/s/BJwV2u-UnkpqR8xqrLz33w), [推文2](https://mp.weixin.qq.com/s?__biz=MzU4ODU3NjM2MA==&mid=2247485276&idx=1&sn=d721466b56849b98d214fb4aad906137&chksm=fddbe45bcaac6d4d6605c2364c067753fc3341392f886be5910d1cc500a50f0701a5098678b4&token=565610391&lang=zh_CN&scene=21#wechat_redirect)

--- - --


![w:550](https://fig-lianxh.oss-cn-shenzhen.aliyuncs.com/20220531150754.png)

> **Source:** Chodorow‐Reich G, Falato A. The loan covenant channel: How bank health transmits to the real economy. **JF**, 2022, 77(1): 85-128. [-Link-](https://onlinelibrary.wiley.com/doi/10.1111/jofi.13074), [-PDF-](https://onlinelibrary.wiley.com/doi/epdf/10.1111/jofi.13074), [-cited-](https://xs2.dailyheadlines.cc/scholar?cites=654574884807744120&as_sdt=2005&sciodt=0,5&hl=zh-CN), [-Appendix-](https://onlinelibrary.wiley.com/action/downloadSupplement?doi=10.1111%2Fjofi.13074&file=jofi13074-sup-0001-InternetAppendix.pdf), [-Replication-](https://onlinelibrary.wiley.com/action/downloadSupplement?doi=10.1111%2Fjofi.13074&file=jofi13074-sup-0002-ReplicationCode.zip)

--- - --

> **Source:** Chodorow‐Reich G, Falato A. The loan covenant channel: How bank health transmits to the real economy[J]. The Journal of Finance, 2022, 77(1): 85-128. [-Link-](https://onlinelibrary.wiley.com/doi/10.1111/jofi.13074), [-PDF-](https://onlinelibrary.wiley.com/doi/epdf/10.1111/jofi.13074), [-cited-](https://xs2.dailyheadlines.cc/scholar?cites=654574884807744120&as_sdt=2005&sciodt=0,5&hl=zh-CN), [-Appendix-](https://onlinelibrary.wiley.com/action/downloadSupplement?doi=10.1111%2Fjofi.13074&file=jofi13074-sup-0001-InternetAppendix.pdf), [-Replication-](https://onlinelibrary.wiley.com/action/downloadSupplement?doi=10.1111%2Fjofi.13074&file=jofi13074-sup-0002-ReplicationCode.zip)
> - Figure 3. Robustness to dropping one lender at a time. The figure shows the interaction coefficient (blue circle) and $95 \%$ confidence interval (blue line) from repeating the specification shown in column (3) of Table IV while dropping one lender from the sample at a time. The dashed black line shows the value of the coefficient in the full sample. 
> - 本质：Jackknife 



--- - --

## 扩展资料
- Nick Huntington-Klein, [Causal Inference Animated Plots](https://nickchk.com/causalgraphs.html), [Github-R-Codes](https://github.com/NickCH-K/causalgraphs) 
  - 采用动图呈现了常用的因果推断模型的核心思想，包括 IV, DID, FE, RDD, PSM 等


--- - --
<!-- backgroundColor: #C1CDCD -->

## 绘图模板 / 配色方案
- Stata 官方模板
- `help scheme`  // 了解绘图模板的基本设定
- `graph query, schemes` // 列示已安装的绘图模板
  - 手动设置：**编辑(E)** &rarr; **首选项(P)** &rarr; **图形首选项(G)** &rarr; 【**方案**】下拉菜单

<br>

```stata
*-方式1：统一指定
  set scheme s1mono
  twoway function y = x

*-方式2：使用选项来指定-每幅图可以使用不同的模板 
  twoway function y = x , scheme(s1mono) 
```

--- - --
<!-- backgroundColor: #FFFFF9 -->

> **Stata 官方模板** `set scheme s1mono`

![right:82% w:800](https://fig-lianxh.oss-cn-shenzhen.aliyuncs.com/gr_scheme1.png)

--- - --
> **用户模板** `set scheme name`

![right:82% w:800](https://fig-lianxh.oss-cn-shenzhen.aliyuncs.com/gr_scheme2.png)


--- - --

### Stata 绘图：图形模板
> `. lianxh 模板 scheme`

- 常用外部模板效果展示+自定义模板风格：[Ben Jann - 2018](https://www.stata.com/meeting/germany18/slides/germany18_Jann.pdf)
- **绘图模板**
  - [Stata绘图极简新模板：plotplain和plottig-T251](https://www.lianxh.cn/news/37ea99dab6efb.html)
  - [Stata绘图：一个干净整洁的-Stata-图形模板qlean](https://www.lianxh.cn/news/9300f2b9f1960.html)
  - [Stata：图形美颜-自定义绘图模板-grstyle-palettes](https://www.lianxh.cn/news/8c1819ff61a8a.html)
  - [Stata黑白图形模板：中文期刊风格的纯黑白图形](https://www.lianxh.cn/news/79e3faf4e3dc3.html)
  - [史上最牛Stata绘图模版-schemepack：酷似R中的ggplot2](https://www.lianxh.cn/news/e76a8a7e3c6c4.html)
  - [Stata 绘图：用 Stata 绘制一打精美图片-schemes](https://www.lianxh.cn/news/0f2537275983f.html)



--- - --

## 可视化的原则和理念
- Kastellec, J.P., & Leoni, E. (2007). Using Graphs Instead of Tables in Political Science. Perspectives on Politics, 5, 755 - 771. [-PDF-](http://euclid.psych.yorku.ca/www/lab/psy6140/papers/kastellec-using-graphs.pdf)
- Nick Huntington-Klein, [Causal Inference Animated Plots](https://nickchk.com/causalgraphs.html), [Github-R-Codes](https://github.com/NickCH-K/causalgraphs) 
 
- https://arbs.nzcer.org.nz/tables-and-graphs
- https://www.agronomy.org/files/publications/style/chapter-05.pdf

--- - --

<!-- backgroundColor: #C1CDCD -->

# 面板数据可视化

--- - --
<!-- backgroundColor: white -->

- `xtavplot`
- `panelview`
- `binscatter`

- Ryo Okui. and Takahide Yanagi. 2019.  Panel Data Analysis with Heterogeneous Dynamics.  Journal of Econometrics.

- Ryo Okui. and Takahide Yanagi. 2019.  Kernel Estimation for Panel Data with Heterogeneous Dynamics.  The Econometrics Journal.


--- - --
<!-- backgroundColor: yellow -->
# 附：参考资料

--- - --
<!-- backgroundColor: #C1CDCD -->

## Stata 绘图：参考资料
- Stata 官网：[图形范例及代码](https://www.stata.com/support/faqs/graphics/gph/stata-graphs/) &rarr; [各类图形](https://www.stata.com/features/publication-quality-graphics/) &emsp; &#x1F34E; [Stata 小抄-PDF-选项标注](https://www.stata.com/bookstore/statacheatsheets.pdf) 
- Stata 绘图：[PDF 手册](https://www.stata.com/manuals/g.pdf)
  - [绘图简介](https://www.stata.com/manuals/g-1graphintro.pdf#g-1Graphintro) &rarr; [twoway](https://www.stata.com/manuals/g-2graphtwoway.pdf#g-2graphtwoway) &rarr; [**Options**](https://www.stata.com/manuals/g-3twoway_options.pdf#g-3twoway_optionsSyntax) 
  - [**[G-1]** Graph Editor](https://www.stata.com/manuals/g-1grapheditor.pdf)，手动编辑图形

- **Book**: Mitchell, M. A visual guide to stata graphics (4e). Stata Press, 2022. [-Link-](https://www.stata.com/bookstore/visual-guide-to-stata-graphics/)
    - [Data-Codes](https://www.stata-press.com/data/vgsg4.html) &rarr; 直接下载：`. net get vgsg4`
- 普林斯顿Stata教程(二) - Stata绘图, [-Link-](https://www.lianxh.cn/news/64495e9c4801c.html), [E-version](https://data.princeton.edu/stata/graphics)
- Denny, K., 2021, Basic Stata graphics for social science students, [-PDF-](https://www.ucd.ie/geary/static/publications/workingpapers/gearywp202102.pdf)
- An Introduction to Stata Graphics, [-Link-](https://www.ssc.wisc.edu/sscc/pubs/4-24.htm)

--- - --
<!-- backgroundColor: #FFFFF9 -->
### Stata 绘图：图形模板和选项
> `. lianxh 模板 选项`

- **绘图模板**
  - [Stata绘图极简新模板：plotplain和plottig-T251](https://www.lianxh.cn/news/37ea99dab6efb.html)
  - [Stata绘图：一个干净整洁的-Stata-图形模板qlean](https://www.lianxh.cn/news/9300f2b9f1960.html)
  - [Stata：图形美颜-自定义绘图模板-grstyle-palettes](https://www.lianxh.cn/news/8c1819ff61a8a.html)
  - [Stata黑白图形模板：中文期刊风格的纯黑白图形](https://www.lianxh.cn/news/79e3faf4e3dc3.html)
  - [史上最牛Stata绘图模版-schemepack：酷似R中的ggplot2](https://www.lianxh.cn/news/e76a8a7e3c6c4.html)
  - [Stata 绘图：用 Stata 绘制一打精美图片-schemes](https://www.lianxh.cn/news/0f2537275983f.html)
- **图形选项** &emsp;  [PDF-**Options**](https://www.stata.com/manuals/g-3twoway_options.pdf#g-3twoway_optionsSyntax)
  - [给你的图形化个妆：Stata绘图常用选项汇总-上篇](https://www.lianxh.cn/news/59bc1ff7d027a.html)
  - [给你的图形化个妆：Stata绘图常用选项汇总-下篇](https://www.lianxh.cn/news/180daa074ef27.html)

--- - --
### Stata 绘图：系数可视化
> `.lianxh 可视`
  - [Stata可视化：让他看懂我的结果！](https://www.lianxh.cn/news/01607de7be5e8.html)
  - [Stata绘图-可视化：组间差异比较散点图](https://www.lianxh.cn/news/b5fc0aeb1d7b7.html)
  - [Stata：分仓散点图绘制-binscatter-binscatter2](https://www.lianxh.cn/news/bd70ec133d209.html)
  - [Stata绘图：世行可视化案例-条形图-密度函数图-地图-断点回归图-散点图](https://www.lianxh.cn/news/96989b0de4d83.html)
  - [Stata：边际处理效应及其可视化-mtefe-T309](https://www.lianxh.cn/news/edd2a0cf9fa6a.html)
  - [Stata绘图-可视化：组间差异比较散点图](https://www.lianxh.cn/news/b5fc0aeb1d7b7.html)
  - [Stata可视化：biplot一图看尽方差、相关性和主成分](https://www.lianxh.cn/news/3173ebd034f12.html)
  - [Stata绘图-组间差异可视化：不良事件火山图、点阵图](https://www.lianxh.cn/news/f9680c4be14fe.html)

--- - --

### Stata绘图：直方图/柱状图/密度图
> `.lianxh 直方 柱状 密度`
  - [Stata：读懂直方图](https://www.lianxh.cn/news/cf563fbedc5db.html) 
  - [Stata绘图：柱状图专题](https://www.lianxh.cn/news/df9729c5de34d.html)
  - [Stata绘图：多维柱状图绘制](https://www.lianxh.cn/news/01fab25337d76.html)
  - [Stata：多个核密度函数图叠加-mkdensity](https://www.lianxh.cn/news/f419d0ee967a5.html)
  - [Stata：双变量联合核密度函数图-kdens2](https://www.lianxh.cn/news/70e7438474c79.html)

--- - --

### Stata 绘图：散点图
> `.lianxh 散点`
  - [Stata绘图：绘制美观的散点图-superscatter](https://www.lianxh.cn/news/b8ca39e205d86.html)
  - [Stata绘图-可视化：组间差异比较散点图](https://www.lianxh.cn/news/b5fc0aeb1d7b7.html)
  - [Stata：分仓散点图绘制-binscatter-binscatter2](https://www.lianxh.cn/news/bd70ec133d209.html)
  - [Stata绘图：世行可视化案例-条形图-密度函数图-地图-断点回归图-散点图](https://www.lianxh.cn/news/96989b0de4d83.html)

### Stata 绘图：进阶
- [论文中因果推断的经典图形](https://www.lianxh.cn/news/0593e9487d93e.html)
- [Stata绘图：如何更高效的绘制图形](https://www.lianxh.cn/news/07bfc4c9db38b.html)
- [Stata绘图：addplot-层层叠加轻松绘图](https://www.lianxh.cn/news/342e156beda06.html)


--- - --
<!-- backgroundColor: #C1CDCD -->

## 图形选项

<br>

- [PDF 手册](https://www.stata.com/manuals/g-3twoway_options.pdf#g-3twoway_optionsSyntax) 
- `help twoway_options`
- &#x1F34E; [Stata 小抄 - PDF](https://www.stata.com/bookstore/statacheatsheets.pdf) 查看图形部分的选项名称

<br>

  - [Stata绘图常用选项汇总-上篇](https://www.lianxh.cn/news/59bc1ff7d027a.html)
  - [Stata绘图常用选项汇总-下篇](https://www.lianxh.cn/news/180daa074ef27.html)

--- - --
<!-- backgroundColor: #FFFFF9 -->
Stata 绘图最难也是最灵活的部分就是选项的设定。

若将一幅图形的各个要素拆解开，了解对应的选项设定和帮助文件，积累一段时间，便可以熟练地绘制图形了。

选项大致可以分成如下几类：
- 图形模版：图形的整体风格 `help scheme`
- 坐标轴、刻度等 `help axis_options`
- 标题类：主标题、副标题、注释等 `help title_options`
- 附加线类：横向或纵向附加线 `help addline_options`

--- - --

<!-- backgroundColor: #FFFFF9 -->

![bg right:50% w:650](https://fig-lianxh.oss-cn-shenzhen.aliyuncs.com/graph_sp500_rspike.png)

```stata
 sysuse "sp500", clear
 replace volume = volume/1000

*----------------------------------------Begin
#delimit ;
 twoway 
    (rspike hi low date)
    (line   close  date)
    (bar    volume date, barw(.25) yaxis(2))
     in 1/57
   , 
   yscale(axis(1) r(900 1400))
   yscale(axis(2) r(  9   45))
   ylabel(, axis(2) grid)
   ytitle("股价: 最高, 最低, 收盘",place(top))
   ytitle("交易量 (百万股)", axis(2) 
           bexpand just(left))
   xtitle(" ")
   legend(off)
   subtitle("S&P 500", margin(b+2.5))
   note("数据来源: 雅虎财经！") ;
#delimit cr
*----------------------------------------Over

graph export "sp500_rspike.png", replace
```

--- - --

### 图形选项 (1) &emsp;  [PDF](https://www.stata.com/manuals/g-3twoway_options.pdf#g-3twoway_optionsSyntax) &emsp; `help twoway_options`

| twoway_options | Description |
| :--- | :--- |
| `added_line_options` [PDF](https://www.stata.com/manuals/g-3added_line_options.pdf)  | draw lines at specified y or x values |
| `added_text_options` [PDF](https://www.stata.com/manuals/g-3added_text_options.pdf)  | display text at specified (y,x) value |
| `axis_options` [PDF](https://www.stata.com/manuals/g-3axis_options.pdf)  | labels, ticks, grids, log scales |
| `title_options` [PDF](https://www.stata.com/manuals/g-3title_options.pdf)  |  titles, subtitles, notes, captions |
| `legend_options` [PDF](https://www.stata.com/manuals/g-3legend_options.pdf)  | legend explaining what means what |
| `scale_options` [PDF](https://www.stata.com/manuals/g-3scale_option.pdf)  | resize text, markers, line widths |
| `region_options` [PDF](https://www.stata.com/manuals/g-3region_options.pdf)  | outlining, shading, graph size |



--- - --

### 图形选项 (2) &emsp;  [PDF](https://www.stata.com/manuals/g-3twoway_options.pdf#g-3twoway_optionsSyntax) &emsp; `help twoway_options`

| twoway_options | Description |
| :--- | :--- |
| `aspect_option` [PDF](https://www.stata.com/manuals/g-3aspect_option.pdf) | constrain aspect ratio of plot region |
| `scheme(schemename)` [PDF](https://www.stata.com/manuals/g-4schemesintro.pdf) | overall look |
| `by(varlist, ...)` [PDF](https://www.stata.com/manuals/g-3by_option.pdf) | repeat for subgroups  |
| `nodraw`  | suppress display of graph |
| `name(name ,...)`  | specify name for graph |
| `saving(filename, ...)` [PDF](https://www.stata.com/manuals/g-3saving_option.pdf)  | save graph in file |
| `advanced_options` [PDF](https://www.stata.com/manuals/g-3advanced_options.pdf)  | difficult to explain | 

--- - --

```stata
 sysuse "sp500", clear
 replace volume = volume/1000
 keep in 1/57
*----------------------------------------Begin
#delimit ;
 twoway                        //help twoway
    (rspike hi low date, lw(*1.3))
    (line   close  date, 
       lpattern(solid) lwidth(*1.2) lcolor(blue))
   , 
   yscale(range(1100 1400))    //help axis_options
   ylabel(1100(100)1400, grid) //help axis_options
   ymtick(##5)                 //help axis_options
   xlabel(, angle(30))         //help axis_options
   ytitle("股价", place(top))  //help title_options
   xtitle("交易日")            //help title_options
   legend(order(1 "High-Low" 2 "Close") 
          ring(0) position(2) row(2)) //help legend_options
   subtitle("S&P 500", margin(b+2.5)) //help title_options
   note("数据来源: 雅虎财经！")         //help title_options
   scheme(s2mono);                    //help scheme 
#delimit cr
*----------------------------------------Over
```
![bg right:40% w:500](https://fig-lianxh.oss-cn-shenzhen.aliyuncs.com/20220625133729.png)

--- - --

## Excellent Slides

- [Solomon Hsiang](https://www.solomonhsiang.com/)
  - [climate change econ: progress + future](https://static1.squarespace.com/static/596e4bf92994caa4c352f95a/t/627c88ed8daaca064add7d13/1652328694486/Climate+Keynote+Public+Copy.pdf)
  - [climate change + conflict](https://static1.squarespace.com/static/596e4bf92994caa4c352f95a/t/5ed50860bf487e1bb044ac4f/1591019648493/HSIANG_PSE_HICN.pdf) + [economic growth](https://www.solomonhsiang.com/s/HSIANG_IMF.pdf)
--- - --



## 连享会  &#x1F34E; 

### [lianxh.cn](https://www.lianxh.cn)

