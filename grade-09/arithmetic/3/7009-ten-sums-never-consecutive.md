---
id: "7009"
title: "Dix sommes qui ne peuvent pas se suivre"
grade: 9
theme: arithmetic
difficulty: 3
duration_min: 20
tags: [parite, sommes-deux-a-deux, denombrement]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique junior de Cachan 2011, groupe des débutants"
  reference: "stage_junior_2011.pdf, test final des débutants, exercice 3, question 3"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_junior_2011.pdf"
---

## Statement

On prend cinq entiers strictement positifs. En les additionnant deux par deux, de toutes les
façons possibles, on obtient dix nombres.

Montrer que ces dix nombres ne peuvent jamais être dix entiers **consécutifs**.

*(Dix entiers consécutifs, ce sont dix entiers qui se suivent, comme $34, 35, 36, \ldots, 43$.)*

## Hints

1. Additionne les dix sommes obtenues. Combien de fois chacun des cinq nombres de départ
   apparaît-il dans ce total ?
2. Que peux-tu en déduire sur la parité de ce total ?
3. Combien y a-t-il de nombres pairs et de nombres impairs parmi dix entiers consécutifs ?
   Que vaut alors leur somme, modulo $2$ ?

## Solution

Appelons $a$, $b$, $c$, $d$, $e$ les cinq entiers de départ, et notons $T$ la somme des dix
sommes deux à deux.

**Première façon de calculer $T$ : elle est paire.**

Chacun des cinq nombres est associé à chacun des quatre autres, donc chacun apparaît dans
exactement **quatre** des dix sommes. Par exemple $a$ apparaît dans $a+b$, $a+c$, $a+d$ et
$a+e$. Donc
$$T = 4(a + b + c + d + e) .$$

Comme $T$ est un multiple de $4$, c'est en particulier un nombre **pair**.

**Deuxième façon : si les dix sommes se suivaient, $T$ serait impaire.**

Supposons que les dix sommes soient dix entiers consécutifs
$$n, \ n+1, \ n+2, \ \ldots, \ n+9 .$$

Parmi dix entiers consécutifs, les parités alternent : il y a exactement **cinq nombres pairs
et cinq nombres impairs**.

La somme de cinq nombres pairs est paire. La somme de cinq nombres impairs est impaire (c'est
une somme d'un nombre impair de termes impairs). Donc
$$T = \underbrace{(\text{somme des cinq pairs})}_{\text{pair}} + \underbrace{(\text{somme des cinq impairs})}_{\text{impair}}$$
serait **impaire**.

**La contradiction.**

On a montré d'une part que $T$ est pair, d'autre part que $T$ serait impair. C'est impossible.

**Conclusion.** Les dix sommes deux à deux de cinq entiers ne forment jamais dix entiers
consécutifs.

## Going further

On peut aussi écrire la somme des dix entiers consécutifs directement :
$$n + (n+1) + \cdots + (n+9) = 10n + 45 .$$
C'est un nombre pair plus un nombre impair, donc un nombre impair. Même conclusion, en une
ligne.

Le raisonnement ne dépend pas du nombre $5$ : avec $k$ nombres de départ, les
$\dfrac{k(k-1)}{2}$ sommes deux à deux ont pour total $(k-1)$ fois la somme des nombres de
départ. À toi de voir pour quelles valeurs de $k$ la même contradiction apparaît.
