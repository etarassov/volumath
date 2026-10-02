---
id: "7837"
title: "Les moutons magiques de l'île"
grade: 9
theme: logic-reasoning
difficulty: 4
duration_min: 35
tags: [invariant, congruences, differences, couleurs]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2015"
  reference: "stage_ete_2015.pdf, première période, groupe A « stratégies de base », mardi 18 matin (Arsène Pierrot), exercice 2"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2015.pdf"
---

## Statement

Sur une île vivent des moutons magiques : $22$ moutons bleus, $18$ moutons rouges et $15$
moutons verts.

Lorsque deux moutons de couleurs **différentes** se rencontrent, ils prennent tous les deux la
**troisième** couleur. Par exemple, si un mouton rouge rencontre un mouton vert, les deux
deviennent bleus.

Au bout d'un certain nombre de rencontres, tous les moutons de l'île ont la même couleur.

Quelle est cette couleur ?

## Hints

1. Il y a toujours $22 + 18 + 15 = 55$ moutons. Note $B$, $R$ et $V$ les effectifs des trois
   couleurs à un instant donné.
2. Écris précisément l'effet des trois types de rencontre sur $(B, R, V)$. Une couleur perd
   deux moutons ? Non : relis bien. Deux couleurs perdent un mouton chacune, et la troisième
   en gagne deux.
3. Cherche une quantité qui ne change pas. Les effectifs eux-mêmes bougent trop ; regarde
   plutôt leurs **différences**, par exemple $R - V$, et non pas leur valeur exacte mais leur
   reste dans la division par $3$.
4. Une fois l'invariant trouvé, teste les trois états finaux possibles : $55$ bleus, $55$
   rouges, $55$ verts. Deux d'entre eux seront incompatibles avec l'invariant.

## Solution

Notons $B$, $R$, $V$ les nombres de moutons bleus, rouges et verts. Au départ,
$$B = 22, \qquad R = 18, \qquad V = 15 ,$$
et il y a toujours $55$ moutons en tout.

**Étape 1 : l'effet d'une rencontre.**

| rencontre | effet |
|---|---|
| rouge + vert $\to$ deux bleus | $R \to R-1$, $V \to V-1$, $B \to B+2$ |
| rouge + bleu $\to$ deux verts | $R \to R-1$, $B \to B-1$, $V \to V+2$ |
| vert + bleu $\to$ deux rouges | $V \to V-1$, $B \to B-1$, $R \to R+2$ |

**Étape 2 : la quantité $R - V$ modulo $3$ ne change jamais.**

Regardons comment varie $R - V$ dans chacun des trois cas.

- Rouge + vert : $R$ perd $1$ et $V$ perd $1$, donc $R - V$ ne change pas du tout.
- Rouge + bleu : $R$ perd $1$ et $V$ gagne $2$, donc $R - V$ diminue de $3$.
- Vert + bleu : $R$ gagne $2$ et $V$ perd $1$, donc $R - V$ augmente de $3$.

Dans les trois cas, $R - V$ change d'un multiple de $3$ (éventuellement $0$). Son **reste dans
la division par $3$** est donc un invariant.

Au départ,
$$R - V = 18 - 15 = 3 ,$$
qui est un multiple de $3$ : le reste est $0$. Ce reste restera $0$ pour toujours.

**Étape 3 : on teste les trois fins possibles.**

- *Tous rouges :* $R = 55$ et $V = 0$, donc $R - V = 55$. Or $55 = 3 \times 18 + 1$ : le reste
  est $1$, pas $0$. **Impossible.**
- *Tous verts :* $R = 0$ et $V = 55$, donc $R - V = -55$. Le reste de $-55$ dans la division par
  $3$ est $2$ (car $-55 = 3 \times (-19) + 2$), pas $0$. **Impossible.**
- *Tous bleus :* $R = 0$ et $V = 0$, donc $R - V = 0$, de reste $0$. **Compatible.**

**Conclusion.**

L'énoncé garantit que tous les moutons finissent de la même couleur. Comme les deux premières
possibilités sont exclues, cette couleur est forcément le $\boxed{\text{bleu}}$.

*Remarque.* L'invariant ne fait qu'éliminer deux cas : il ne prouve pas à lui seul qu'on peut
réellement rendre tous les moutons bleus. C'est l'énoncé qui nous assure que la situation finale
existe. Ici on peut le vérifier : en faisant se rencontrer $15$ fois un rouge et un vert, on
passe à $22 + 30 = 52$ bleus, $3$ rouges et $0$ vert, puis trois rencontres bleu-rouge donnent
$49$ bleus et $6$ verts, et ainsi de suite jusqu'à $55$ bleus.
