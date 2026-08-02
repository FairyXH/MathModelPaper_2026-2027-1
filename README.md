# MathModelPaper_2026-2027-1

CUMCM 数学建模论文 LaTeX 模板（模块化版本）。

## 目录结构

```
main.tex                        主文件：导言区 + 章节装配，一般不用改
sections/
  00-abstract.tex               摘要页（题目、摘要、关键词）
  01-problem-restatement.tex    问题重述
  02-problem-analysis.tex       问题分析
  03-assumptions.tex            模型假设
  04-symbols.tex                符号说明
  05-model.tex                  模型建立与求解（含数据预处理/模型求解/图表）
  06-evaluation.tex             模型评价与改进
  07-references.tex             参考文献
  08-appendix.tex               附录（Python 程序代码）
references.bib                  参考文献数据库
code/main.py                    附录引用的求解程序
figures/                        图片目录
```

## 多人协作

- 每人只编辑自己负责的 `sections/*.tex` 文件，`main.tex` 仅在增删章节时修改。
- 新章节加入时，在 `main.tex` 的 `\input` 序列中添加对应文件即可。
- 本地编译前先 `git pull` 合并他人改动，避免 `main.tex` 冲突。

## 编译

TeX Live 2026 下推荐手动链（latexmk 有 xdv 扩展名坑）：

```powershell
xelatex -interaction=nonstopmode main.tex
biber main
xelatex -interaction=nonstopmode main.tex
xelatex -interaction=nonstopmode main.tex
```

也可直接用 `提交我的修改.bat` 提交。
