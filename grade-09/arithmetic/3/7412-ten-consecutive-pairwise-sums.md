---
id: "7412"
title: "Dix sommes deux à deux consécutives"
grade: 9
theme: arithmetic
difficulty: 3
duration_min: 25
tags: [parite, somme, absurde, denombrement]
adapted_from: null
see_also: ["7009"]
created: 2026-09-20
source:
  name: "POFM, stage olympique de Grésillon 2011, La Muraille"
  reference: "stage_ete_2011.pdf, « La Muraille », exercice 29 (résolu par Lucas Perotin, Timothée Schoen et Augustin Bariant)"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2011.pdf"
---

## Statement

On prend cinq entiers naturels. En les additionnant deux par deux, de toutes les façons
possibles, on obtient dix sommes.

Est-il possible que ces dix sommes soient dix entiers **consécutifs**, comme par exemple
$$37,\ 38,\ 39,\ 40,\ 41,\ 42,\ 43,\ 44,\ 45,\ 46 \ \text{?}$$

## Hints

1. Vérifie d'abord qu'il y a bien dix sommes : combien de paires peut-on former avec cinq
   nombres ?
2. Additionne les dix sommes. Si les cinq entiers sont $a$, $b$, $c$, $d$, $e$, combien de fois
   chacun apparaît-il dans ce grand total ?
3. Calcule aussi ce grand total du côté des dix entiers consécutifs $n, n+1, \ldots, n+9$. Compare
   les parités des deux résultats.

## Solution

**La réponse est non : c'est impossible.**

**Il y a bien dix sommes.**

Avec cinq nombres $a$, $b$, $c$, $d$, $e$, on peut former $\dfrac{5 \times 4}{2} = 10$ paires,
donc dix sommes.

**On additionne les dix sommes, première façon.**

Écrivons-les toutes :
$$(a+b) + (a+c) + (a+d) + (a+e) + (b+c) + (b+d) + (b+e) + (c+d) + (c+e) + (d+e).$$

Chaque nombre apparaît dans exactement quatre paires : par exemple $a$ apparaît dans $a+b$,
$a+c$, $a+d$, $a+e$. Donc le total vaut
$$S = 4(a+b+c+d+e).$$

Ce nombre est un multiple de $4$ ; en particulier il est **pair**.

**On additionne les dix sommes, deuxième façon.**

Supposons que les dix sommes soient les entiers consécutifs $n, n+1, \ldots, n+9$. Leur total vaut
$$S = n + (n+1) + \dots + (n+9) = 10n + (0 + 1 + \dots + 9) = 10n + 45.$$

Ici $10n$ est pair et $45$ est impair, donc $S$ est **impair**.

**La contradiction.**

Le même nombre $S$ serait à la fois pair et impair. C'est impossible.

**Conclusion : les dix sommes deux à deux de cinq entiers ne peuvent jamais être dix entiers
consécutifs.**

## Going further

Et avec **quatre** entiers, dont les six sommes deux à deux devraient être six entiers
consécutifs ? L'argument de parité fonctionne-t-il encore ? Si non, trouve un exemple ou montre
que c'est quand même impossible.
