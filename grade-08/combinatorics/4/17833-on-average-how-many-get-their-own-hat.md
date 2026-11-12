---
id: "17833"
title: "En moyenne, combien retrouvent leur chapeau ?"
grade: 8
theme: combinatorics
difficulty: 4
duration_min: 30
tags: [double-comptage, permutations, factorielle, moyenne, chapeaux]
adapted_from: null
see_also: ["4019", "1201"]
same_as: []
created: 2026-10-25
source:
  name: "POFM, stage olympique junior de Cachan 2014, Avancés"
  reference: "stage_junior_2014.pdf, chapitre « Avancés », combinatoire, mercredi après-midi, « Double comptage » (Jean-Louis Tu), exercice 11, p.69 ; solution p.69. La source parle de points fixes d'une permutation de {1, 2, …, n} ; on raconte ici la même chose avec des chapeaux."
  url: "http://maths-olympiques.fr/wp-content/uploads/2017/09/stage_junior_2014.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_junior_2014.pdf"
---

## Statement

À la fin d'une fête, $n$ invités viennent reprendre leur chapeau au vestiaire. Le gardien a mélangé les étiquettes : il rend un chapeau à chaque invité, au hasard. Une **distribution** est une façon de rendre les $n$ chapeaux, un par invité.

Pour chaque distribution possible, on compte combien d'invités récupèrent leur propre chapeau. On fait ensuite la moyenne de ces nombres sur toutes les distributions possibles.

1. Combien y a-t-il de distributions possibles ? (On note $n! = n \times (n-1) \times \cdots \times 2 \times 1$.)
2. Pour $n = 3$, faites la liste de toutes les distributions et calculez la moyenne.
3. Calculez la moyenne pour $n$ quelconque.

## Hints

1. Pour la question 1, combien de chapeaux peut recevoir le premier invité ? Puis le deuxième ?
2. Pour la question 3, au lieu de compter distribution par distribution, comptez invité par invité.
3. Fixez un invité, Zoé. Dans combien de distributions Zoé récupère-t-elle son propre chapeau ?
4. Le total cherché est le nombre de couples (invité, distribution) où l'invité récupère son chapeau.

## Solution

**1. Le nombre de distributions.** Le premier invité peut recevoir l'un des $n$ chapeaux. Le deuxième reçoit l'un des $n - 1$ chapeaux restants, le troisième l'un des $n - 2$ restants, et ainsi de suite jusqu'au dernier, qui reçoit le seul chapeau qui reste. Il y a donc

$$n \times (n-1) \times \cdots \times 2 \times 1 = n!$$

distributions.

**2. Le cas $n = 3$.** Appelons les invités $a$, $b$, $c$ et leurs chapeaux $A$, $B$, $C$. Les $3! = 6$ distributions, écrites dans l'ordre des invités $a$, $b$, $c$, sont :

| Distribution | $ABC$ | $ACB$ | $BAC$ | $CBA$ | $BCA$ | $CAB$ |
|---|---|---|---|---|---|---|
| Invités qui ont leur chapeau | $3$ | $1$ | $1$ | $1$ | $0$ | $0$ |

La somme vaut $3 + 1 + 1 + 1 + 0 + 0 = 6$, et la moyenne vaut $\frac{6}{6} = 1$.

**3. Le cas général.** La moyenne est le total $N$ des nombres comptés, divisé par le nombre $n!$ de distributions. Le total $N$ est le nombre de couples (invité, distribution) tels que l'invité récupère son propre chapeau dans cette distribution. Comptons ces couples **invité par invité** au lieu de distribution par distribution.

Fixons un invité. Les distributions où il récupère son chapeau sont celles où son chapeau lui est rendu, et où les $n - 1$ autres chapeaux sont rendus aux $n - 1$ autres invités de n'importe quelle façon. D'après la question 1, appliquée à $n - 1$ invités, il y en a $(n-1)!$.

Chacun des $n$ invités donne donc $(n-1)!$ couples, et

$$N = n \times (n-1)! = n! .$$

La moyenne vaut $\frac{N}{n!} = \frac{n!}{n!} = 1$.

**Conclusion : en moyenne, exactement un invité récupère son propre chapeau, quel que soit le nombre $n$ d'invités.**

## Going further

On retrouve le tableau de la question 2 : chacune des trois colonnes « $a$ a son chapeau », « $b$ a son chapeau », « $c$ a son chapeau » contient $2$ distributions, soit $2! = 2$, ce qui fait bien $3 \times 2 = 6$.

Ce résultat est surprenant : avec $3$ invités ou avec $1\,000$ invités, la moyenne est la même. De même, la probabilité que **personne** ne récupère son chapeau ne dépend presque pas de $n$ quand $n$ est grand : elle est très proche de 0,37.
