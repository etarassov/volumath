---
id: "8852"
title: "Les caméléons de l'île"
grade: 10
theme: logic-reasoning
difficulty: 4
duration_min: 30
tags: [invariant, modulo 3, processus, disjonction de cas]
adapted_from: null
see_also: ["7312"]
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2025, cours de Groupe A"
  reference: "Poly-2025-compresse.pdf, Groupe A, « Combinatoire : Invariants et coloriage » (Lilas et Paul A), exercice 9, p. 124. Le polycopié demande si la couleur finale peut être le bleu, mais ses propres nombres sont incohérents : il annonce un total de 44 alors que 25+12+8 = 45, et affirme que B−V est divisible par 3 alors que 8−12 = −4. Avec les effectifs imprimés, aucune couleur finale n'est atteignable ; l'énoncé est donc reformulé ici."
  url: "https://maths-olympiques.fr/wp-content/uploads/2025/09/Poly-2025-compresse.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/Poly-2025-compresse.pdf"
---

## Statement

Sur une île vivent $45$ caméléons : $25$ rouges, $12$ verts et $8$ bleus.

Quand deux caméléons se rencontrent :

- **s'ils sont de couleurs différentes**, ils prennent tous les deux la troisième couleur ;
- **s'ils sont de la même couleur**, chacun prend l'une des deux autres couleurs, mais pas la même : l'un prend la deuxième couleur, l'autre la troisième.

Montrer qu'il est impossible que tous les caméléons finissent un jour par être de la même couleur.

## Hints

1. Note $R$, $V$, $B$ les effectifs des trois couleurs, et commence par vérifier que $R+V+B$ ne change jamais.
2. Cherche un invariant plus fin. Les effectifs eux-mêmes bougent trop : regarde plutôt une **différence**, par exemple $B - V$.
3. Passe en revue les six types de rencontre et calcule à chaque fois la variation de $B-V$. Tu devrais toujours trouver $0$ ou $\pm 3$.
4. Que vaudrait $B - V$ si tous les caméléons étaient bleus ? et verts ? et rouges ?

## Solution

Notons $R$, $V$, $B$ les nombres de caméléons rouges, verts et bleus.

### Premier invariant : le total

Chaque rencontre transforme deux caméléons en deux caméléons : le nombre total ne change pas. Il vaut toujours
$$R + V + B = 25 + 12 + 8 = 45 .$$

### Deuxième invariant : $B - V$ modulo 3

Passons en revue les six rencontres possibles et suivons la quantité $X = B - V$.

| Rencontre | Effet sur $(R, V, B)$ | Variation de $X = B-V$ |
|---|---|---|
| deux bleus | $B - 2$, $R+1$, $V+1$ | $-2 - 1 = -3$ |
| deux verts | $V - 2$, $R+1$, $B+1$ | $+1 + 2 = +3$ |
| deux rouges | $R - 2$, $V+1$, $B+1$ | $+1 - 1 = 0$ |
| un vert et un bleu | $V-1$, $B-1$, $R+2$ | $-1 + 1 = 0$ |
| un rouge et un bleu | $R-1$, $B-1$, $V+2$ | $-1 - 2 = -3$ |
| un rouge et un vert | $R-1$, $V-1$, $B+2$ | $+2 + 1 = +3$ |

Dans tous les cas, $X$ varie de $0$ ou de $\pm 3$. Donc **le reste de $X$ dans la division par $3$ ne change jamais.**

### On calcule

Au départ,
$$X = B - V = 8 - 12 = -4 \; \equiv \; 2 \pmod 3 .$$

Examinons maintenant les trois situations monochromes, sachant que le total vaut toujours $45$.

- **Tous bleus :** $B = 45$, $V = 0$, donc $X = 45 \equiv 0 \pmod 3$.
- **Tous verts :** $B = 0$, $V = 45$, donc $X = -45 \equiv 0 \pmod 3$.
- **Tous rouges :** $B = V = 0$, donc $X = 0 \equiv 0 \pmod 3$.

Dans les trois cas $X \equiv 0 \pmod 3$, alors que $X \equiv 2 \pmod 3$ depuis le début et pour toujours.

**Conclusion.** Aucune des trois situations monochromes n'est atteignable : les caméléons ne seront jamais tous de la même couleur.

### La bonne façon de formuler l'invariant

On aurait pu prendre $R - V$ ou $R - B$ à la place de $B - V$ : les trois différences sont conservées modulo $3$. Autrement dit, ce qui est figé pour toujours, ce sont les trois **restes des effectifs modulo 3**, à permutation près. Ici ils valent $25 \equiv 1$, $12 \equiv 0$, $8 \equiv 2$ : ils sont tous différents. Une situation monochrome exige au contraire que deux des trois effectifs soient nuls, donc égaux modulo $3$. L'écart est indépassable.

## Going further

Sur une autre île vivent $10$ caméléons rouges, $13$ verts et $22$ bleus, avec les mêmes règles.

1. Montrer que cette fois, ils peuvent tous devenir bleus, en donnant une suite explicite de rencontres.
2. Peuvent-ils aussi tous devenir rouges ?
