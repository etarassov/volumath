---
id: "8640"
title: "Les trente-quatre lutins de l'île"
grade: 10
theme: logic-reasoning
difficulty: 4
duration_min: 40
tags: [invariant, congruence, modulo trois, changement de couleur]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2023, Groupe A"
  reference: "valbonne-2023.pdf, Groupe A, « Invariants/coloriages » (Gaëtan & Vincent), exercice 14"
  url: "https://maths-olympiques.fr/wp-content/uploads/2023/12/valbonne-2023.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/valbonne-2023.pdf"
---

## Statement

Sur une île tropicale vivent $34$ lutins farceurs. Au début il y en a $7$ bleus, $10$ rouges et $17$ jaunes.

Quand deux lutins de couleurs différentes se rencontrent, ils jouent un tour à leurs congénères : ils prennent tous les deux, simultanément, la **troisième** couleur.

Un jour, Maryam débarque sur l'île et observe que tous les lutins sont de la même couleur.

**Quelle est cette couleur ?**

## Hints

1. Note $b$, $r$, $j$ les nombres de lutins bleus, rouges et jaunes. Écris précisément comment ces trois nombres changent lors d'une rencontre. Il y a trois cas.
2. Dans chacun des trois cas, deux des nombres diminuent de $1$ et le troisième augmente de $2$. Cela ressemble beaucoup à « tous augmentent de $2$ », à un détail près.
3. Justement : modulo $3$, diminuer de $1$ et augmenter de $2$, c'est la même chose. Que deviennent alors $b$, $r$, $j$ modulo $3$ ?
4. Si les trois nombres augmentent tous de la même quantité modulo $3$, quelles quantités ne changent jamais ?
5. À l'arrivée, deux des trois nombres valent $0$. Que cela impose-t-il ?

## Solution

Notons $b$, $r$ et $j$ le nombre de lutins bleus, rouges et jaunes à un moment donné. Au départ

$$b = 7, \qquad r = 10, \qquad j = 17 .$$

**Ce que fait une rencontre.** Il y a trois cas, selon les couleurs des deux lutins qui se rencontrent :

- un bleu et un rouge deviennent jaunes : $b$ perd $1$, $r$ perd $1$, $j$ gagne $2$ ;
- un rouge et un jaune deviennent bleus : $r$ perd $1$, $j$ perd $1$, $b$ gagne $2$ ;
- un jaune et un bleu deviennent rouges : $j$ perd $1$, $b$ perd $1$, $r$ gagne $2$.

Dans tous les cas, **deux des trois nombres diminuent de $1$ et le troisième augmente de $2$**.

**L'astuce du modulo 3.** Diminuer de $1$ ou augmenter de $2$, cela revient exactement au même modulo $3$, puisque $2 - (-1) = 3$. Donc, modulo $3$,

$$\textbf{les trois nombres } b, r, j \textbf{ augmentent tous de } 2 \textbf{ à chaque rencontre.}$$

Les trois cas se ramènent ainsi à un seul, et l'on n'a plus besoin de savoir qui a rencontré qui.

**Les invariants.** Si les trois nombres évoluent de la même façon modulo $3$, alors **leurs différences deux à deux ne changent jamais modulo $3$** :

$$b - r, \qquad r - j, \qquad b - j \qquad \text{sont invariantes modulo } 3 .$$

Calculons-les au départ :

$$b - r = 7 - 10 = -3 \equiv 0 \pmod 3, \qquad r - j = 10 - 17 = -7 \equiv 2 \pmod 3, \qquad b - j = 7 - 17 = -10 \equiv 2 \pmod 3 .$$

**La conclusion.** Quand Maryam arrive, tous les lutins sont d'une même couleur : deux des trois nombres valent $0$, et leur différence vaut donc $0$.

- Si les jaunes et les bleus avaient disparu, on aurait $b - j = 0$ modulo $3$. Or $b - j \equiv 2$ : impossible.
- Si les jaunes et les rouges avaient disparu, on aurait $r - j = 0$ modulo $3$. Or $r - j \equiv 2$ : impossible.
- Il ne reste que la possibilité que les **bleus et les rouges** aient disparu, ce qui est compatible avec $b - r \equiv 0$.

**Les $34$ lutins sont donc tous jaunes.**

## Going further

Une autre rédaction du même argument, avec un système de points : donnons $1$ point à chaque lutin bleu, $2$ à chaque rouge et $3$ à chaque jaune, et suivons le total.

- bleu et rouge se rencontrent : on passe de $1 + 2 = 3$ points à $3 + 3 = 6$ points, soit $+3$ ;
- rouge et jaune : de $2 + 3 = 5$ à $1 + 1 = 2$, soit $-3$ ;
- jaune et bleu : de $3 + 1 = 4$ à $2 + 2 = 4$, soit $0$.

Le total varie donc toujours d'un multiple de $3$ : sa valeur modulo $3$ est un invariant. Au départ il vaut $7 \times 1 + 10 \times 2 + 17 \times 3 = 78 \equiv 0 \pmod 3$. À l'arrivée, avec $34$ lutins valant tous $s$ points, il vaut $34 s \equiv s \pmod 3$. Donc $s \equiv 0$, ce qui force $s = 3$ : les lutins sont jaunes.

Une dernière remarque : ce raisonnement montre seulement que **si** une couleur unique est atteinte, c'est le jaune. Il ne démontre pas que c'est possible. Sauras-tu décrire une suite de rencontres qui y mène ?
