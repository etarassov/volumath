---
id: "7450"
title: "Une fonction presque additive"
grade: 12
theme: algebra
difficulty: 5
duration_min: 50
tags: [equation-fonctionnelle, entiers, encadrement, recurrence]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Grésillon 2011, chasse au trésor"
  reference: "stage_ete_2011.pdf, « Chasse au trésor », exercices des avancés, exercice 8 (c'est le problème 1 de l'Olympiade internationale de 1982)"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2011.pdf"
---

## Statement

Soit $f$ une fonction définie sur les entiers strictement positifs, à valeurs entières positives
ou nulles, telle que :

- pour tous entiers $m, n > 0$, la différence $f(m+n) - f(m) - f(n)$ vaut $0$ ou $1$ ;
- $f(2) = 0$ ;
- $f(3) > 0$ ;
- $f(9999) = 3333$.

Calculer $f(1982)$.

## Hints

1. La première condition dit deux choses à la fois. D'abord une inégalité très utile :
   $f(m+n) \geqslant f(m) + f(n)$. Ensuite que le « défaut d'additivité » ne dépasse jamais $1$.
2. Commence par les toutes petites valeurs. Que donne la condition avec $m = n = 1$, sachant que
   $f(2) = 0$ et que $f$ est à valeurs positives ou nulles ?
3. Puis $m = 2$, $n = 1$ : combien de valeurs sont possibles pour $f(3)$ ?
4. Avec $f(3)$ connu, montre que $f(3k) \geqslant k$. Puis sers-toi de $f(9999) = 3333$ pour
   montrer qu'il y a égalité, en coupant $9999$ en deux morceaux multiples de $3$.
5. Pour $f(1982)$, encadre-le : une majoration en regardant $f(3 \times 1982)$, une minoration en
   écrivant $1982 = 1980 + 2$.

## Solution

Notons $(\star)$ la première condition :
$$(\star) \qquad f(m+n) - f(m) - f(n) \in \{0 \, ; \, 1\} \quad \text{pour tous } m, n > 0.$$

On en retiendra surtout la conséquence suivante, qu'on utilisera sans arrêt :
$$f(m+n) \geqslant f(m) + f(n).$$

### Étape 1 : $f(1) = 0$

Appliquons $(\star)$ avec $m = n = 1$ :
$$f(2) - 2f(1) \in \{0 \, ; \, 1\}.$$
Or $f(2) = 0$, donc $-2f(1)$ vaut $0$ ou $1$. Comme $f(1)$ est un entier positif ou nul,
$-2f(1)$ est négatif ou nul et pair : la seule possibilité est $-2f(1) = 0$, donc
$$f(1) = 0.$$

### Étape 2 : $f(3) = 1$

Appliquons $(\star)$ avec $m = 2$ et $n = 1$ :
$$f(3) - f(2) - f(1) \in \{0 \, ; \, 1\}, \qquad \text{c'est-à-dire} \qquad f(3) \in \{0 \, ; \, 1\}.$$
Comme l'énoncé impose $f(3) > 0$, on obtient
$$f(3) = 1.$$

### Étape 3 : $f(3k) \geqslant k$

Montrons par récurrence que $f(3k) \geqslant k$ pour tout entier $k \geqslant 1$.

- Pour $k = 1$ : $f(3) = 1 \geqslant 1$.
- Si $f(3k) \geqslant k$, alors
  $$f(3(k+1)) = f(3k + 3) \geqslant f(3k) + f(3) \geqslant k + 1.$$

La propriété est donc vraie pour tout $k \geqslant 1$.

### Étape 4 : en fait $f(3k) = k$ pour $1 \leqslant k \leqslant 3333$

C'est ici que sert la donnée $f(9999) = 3333$. Remarquons que $9999 = 3 \times 3333$.

Raisonnons par l'absurde : supposons qu'il existe un entier $k$ avec $1 \leqslant k \leqslant 3332$
et $f(3k) \geqslant k+1$.

Posons $k' = 3333 - k$, qui est un entier compris entre $1$ et $3332$. Alors
$$9999 = 3k + 3k',$$
donc
$$f(9999) \geqslant f(3k) + f(3k') \geqslant (k+1) + k' = k + 1 + 3333 - k = 3334.$$

Mais $f(9999) = 3333$. Contradiction.

Donc $f(3k) \leqslant k$ pour tout $k$ entre $1$ et $3332$, ce qui, avec l'étape 3, donne
$$f(3k) = k \qquad \text{pour } 1 \leqslant k \leqslant 3333$$
(le cas $k = 3333$ étant la donnée de l'énoncé).

### Étape 5 : l'encadrement de $f(1982)$

**Majoration.** Appliquons deux fois l'inégalité de superadditivité :
$$f(3 \times 1982) = f(1982 + 1982 + 1982) \geqslant 3 \, f(1982).$$
Or $3 \times 1982 = 5946$, et l'étape 4 appliquée avec $k = 1982$ (qui est bien inférieur à
$3333$) donne $f(5946) = 1982$. Ainsi
$$1982 \geqslant 3 \, f(1982), \qquad \text{donc} \qquad f(1982) \leqslant \frac{1982}{3} = \text{660,66}\ldots$$
Comme $f(1982)$ est un entier,
$$f(1982) \leqslant 660.$$

**Minoration.** Écrivons $1982 = 1980 + 2$. Alors
$$f(1982) \geqslant f(1980) + f(2) = f(3 \times 660) + 0 = 660,$$
en utilisant l'étape 4 avec $k = 660 \leqslant 3333$.

### Conclusion

Les deux inégalités se rejoignent :
$$\boxed{f(1982) = 660}$$

**Ce qu'il faut retenir.** On n'a jamais cherché à connaître $f$ tout entière. Deux ingrédients
ont suffi : l'inégalité $f(m+n) \geqslant f(m) + f(n)$, qui donne des minorations en découpant un
nombre en morceaux, et la valeur imposée en $9999$, qui empêche ces minorations d'être trop
généreuses. C'est le problème 1 de l'Olympiade internationale de mathématiques de 1982.

## Going further

1. Montrer plus généralement que $f(n) = \left\lfloor \dfrac{n}{3} \right\rfloor$ pour tout
   $n \leqslant 9999$, où $\lfloor x \rfloor$ désigne la partie entière.
2. Vérifier que la fonction $n \mapsto \left\lfloor \dfrac{n}{3} \right\rfloor$, définie sur tous
   les entiers strictement positifs, satisfait bien les quatre conditions de l'énoncé : il existe
   donc au moins une telle fonction.
