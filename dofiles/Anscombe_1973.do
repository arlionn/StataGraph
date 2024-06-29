* Source: [Anscombe, 1973, p.17](https://www.sjsu.edu/faculty/gerstman/StatPrimer/anscombe1973.pdf)

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


sc install cleanplots  // 安装绘图模板
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
