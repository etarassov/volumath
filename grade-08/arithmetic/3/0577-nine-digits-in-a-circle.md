---
id: "0577"
title: "Neuf chiffres en ronde"
grade: 8
theme: arithmetic
difficulty: 3
duration_min: 20
tags: [numeration, chiffres, somme, comptage-double]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-18
source:
  name: "Малый мехмат МГУ, математический кружок 6–7 классы, 2-е полугодие, пособие для преподавателей"
  reference: "KuOn2017.pdf, листок 1 «Подсчёт двумя способами», задача 4"
  url: "https://mmmf.msu.ru/for_schools/"
  original_language: "ru"
  local_copy: "sources/originals/mmmf-msu/KuOn2017.pdf"
---

## Statement

Les chiffres $1, 2, 3, \dots, 9$ sont écrits autour d'un cercle, dans un ordre quelconque.

Chaque groupe de trois chiffres qui se suivent dans le sens des aiguilles d'une montre forme un nombre de trois chiffres. Comme on peut partir de n'importe lequel des neuf chiffres, on obtient ainsi neuf nombres de trois chiffres.

Calculer la somme de ces neuf nombres.

## Hints

1. Fais un essai avec un ordre de ton choix, par exemple $1, 2, 3, 4, 5, 6, 7, 8, 9$ dans le sens des aiguilles d'une montre, et calcule la somme. Recommence avec un autre ordre. Que remarques-tu ?
2. Un nombre de trois chiffres, comme $472$, s'écrit $4 \times 100 + 7 \times 10 + 2$. Sépare la somme totale en trois morceaux : les centaines, les dizaines, les unités.
3. Prends un chiffre, par exemple le $5$. Dans combien des neuf nombres est-il le chiffre des centaines ? des dizaines ? des unités ?
4. Chacune des trois sommes (centaines, dizaines, unités) vaut $1 + 2 + \dots + 9$.

## Solution

**L'idée : ranger la somme par rangs, centaines, dizaines et unités.**

Rappelons qu'un nombre de trois chiffres vaut

$$\text{centaines} \times 100 + \text{dizaines} \times 10 + \text{unités}$$

Additionnons nos neuf nombres en regroupant les rangs entre eux. La somme cherchée vaut donc

$$S = 100 \times C + 10 \times D + U$$

où $C$ est la somme des neuf chiffres des centaines, $D$ celle des neuf chiffres des dizaines, et $U$ celle des neuf chiffres des unités.

**Combien de fois chaque chiffre apparaît-il à chaque rang ?**

Prenons un des neuf chiffres écrits sur le cercle, par exemple celui qui est à un endroit donné.

- Il est le chiffre des **centaines** du nombre qui commence à lui : cela arrive une fois, et une seule.
- Il est le chiffre des **dizaines** du nombre qui commence au chiffre juste avant lui : une fois, et une seule.
- Il est le chiffre des **unités** du nombre qui commence deux crans avant lui : une fois, et une seule.

Autrement dit, chaque chiffre du cercle sert exactement une fois comme chiffre des centaines, exactement une fois comme chiffre des dizaines et exactement une fois comme chiffre des unités.

Donc $C$, $D$ et $U$ sont toutes les trois égales à la somme de tous les chiffres :

$$C = D = U = 1 + 2 + 3 + \dots + 9 = 45$$

**On termine le calcul.**

$$S = 100 \times 45 + 10 \times 45 + 45 = 45 \times (100 + 10 + 1) = 45 \times 111 = 4995$$

**Conclusion.**

La somme des neuf nombres vaut toujours $4995$, et ce résultat ne dépend pas de l'ordre dans lequel les chiffres ont été écrits autour du cercle.

## Going further

1. Même question, mais chaque groupe de **quatre** chiffres qui se suivent forme un nombre de quatre chiffres. Combien vaut la somme des neuf nombres obtenus ?
2. Et si l'on tournait dans l'autre sens, la somme changerait-elle ?
3. On écrit maintenant autour du cercle les chiffres $1, 2, \dots, 9$ mais en remplaçant le $9$ par un $0$. Les neuf « nombres » ne sont plus tous des nombres de trois chiffres. Que devient la somme ?
