---
id: "7445"
title: "Une fonction qui triple"
grade: 12
theme: algebra
difficulty: 5
duration_min: 50
tags: [equation-fonctionnelle, suite-croissante, recurrence, entiers]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Grésillon 2011, chasse au trésor"
  reference: "stage_ete_2011.pdf, « Chasse au trésor », exercice 87"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2011.pdf"
---

## Statement

Soit $f$ une fonction définie sur les entiers strictement positifs, à valeurs entières
strictement positives, **strictement croissante**, et qui vérifie
$$f\big(f(n)\big) = 3n \qquad \text{pour tout entier } n \geqslant 1.$$

Calculer $f(2011)$.

## Hints

1. Une fonction strictement croissante des entiers vers les entiers avance d'au moins $1$ à
   chaque pas. Qu'est-ce que cela donne comme minoration de $f(n)$ ?
2. Commence par $f(1)$. Montre qu'il ne peut valoir ni $1$, ni $3$ ou plus. Il ne reste qu'une
   possibilité.
3. Une fois $f(1)$ connu, applique la relation à répétition : $f(2)$, puis $f(3)$, puis $f(6)$,
   puis $f(9)$... Écris les valeurs obtenues, elles se rangent naturellement en deux familles.
4. Entre $3^k$ et $2 \times 3^k$ il y a exactement autant d'entiers qu'entre $2 \times 3^k$ et
   $3^{k+1}$. Une fonction strictement croissante qui envoie le premier intervalle sur le second
   n'a aucune liberté.
5. Où se situe $2011$ par rapport aux nombres $3^6 = 729$, $2 \times 3^6 = 1458$ et
   $3^7 = 2187$ ?

## Solution

### Préliminaire : $f(n) \geqslant n$

La fonction $f$ est strictement croissante et à valeurs entières, donc
$$f(n+1) \geqslant f(n) + 1 \quad \text{pour tout } n.$$
Comme $f(1) \geqslant 1$, une récurrence immédiate donne
$$f(n) \geqslant n \qquad \text{pour tout } n \geqslant 1.$$

### Étape 1 : $f(1) = 2$

Posons $k = f(1)$.

- **$k = 1$ est impossible.** On aurait $f(f(1)) = f(1) = 1$, alors que $f(f(1)) = 3 \times 1 = 3$.
- **$k \geqslant 3$ est impossible.** La relation donne $f(k) = f(f(1)) = 3$. Mais on vient de
  voir que $f(k) \geqslant k$, donc $3 \geqslant k$, et comme $k \geqslant 3$ cela force $k = 3$,
  c'est-à-dire $f(3) = 3$. En appliquant alors la relation à $n = 3$ :
  $$9 = f\big(f(3)\big) = f(3) = 3,$$
  ce qui est faux.

Il ne reste qu'une possibilité :
$$f(1) = 2.$$

### Étape 2 : deux familles de valeurs

Appliquons la relation en cascade :
$$f(2) = f\big(f(1)\big) = 3 \times 1 = 3,$$
$$f(3) = f\big(f(2)\big) = 3 \times 2 = 6,$$
$$f(6) = f\big(f(3)\big) = 3 \times 3 = 9,$$
$$f(9) = f\big(f(6)\big) = 3 \times 6 = 18,$$
$$f(18) = 27, \qquad f(27) = 54, \qquad f(54) = 81, \ \ldots$$

Un motif apparaît. Montrons par récurrence que pour tout entier $k \geqslant 0$ :
$$f\big(3^k\big) = 2 \times 3^k \qquad \text{et} \qquad f\big(2 \times 3^k\big) = 3^{k+1}.$$

- **Initialisation.** Pour $k = 0$ : $f(1) = 2$ et $f(2) = 3$. C'est bien ce qu'on a trouvé.
- **Hérédité.** Supposons $f(3^k) = 2 \times 3^k$. Alors
  $$f\big(2 \times 3^k\big) = f\Big(f\big(3^k\big)\Big) = 3 \times 3^k = 3^{k+1},$$
  puis
  $$f\big(3^{k+1}\big) = f\Big(f\big(2 \times 3^k\big)\Big) = 3 \times 2 \times 3^k = 2 \times 3^{k+1}.$$

La propriété est donc vraie pour tout $k$.

### Étape 3 : la croissance remplit les trous

Fixons $k$. Comptons les entiers de $3^k$ à $2 \times 3^k$ : il y en a
$$2 \times 3^k - 3^k + 1 = 3^k + 1.$$
Comptons les entiers de $2 \times 3^k$ à $3^{k+1}$ : il y en a
$$3^{k+1} - 2 \times 3^k + 1 = 3^k + 1.$$

Le même nombre. Or $f$ est strictement croissante, elle envoie $3^k$ sur $2 \times 3^k$ et
$2 \times 3^k$ sur $3^{k+1}$. Les $3^k + 1$ valeurs
$$f\big(3^k\big) < f\big(3^k + 1\big) < \cdots < f\big(2 \times 3^k\big)$$
sont donc $3^k+1$ entiers strictement croissants, compris entre $2 \times 3^k$ et $3^{k+1}$,
c'est-à-dire pris dans un ensemble qui contient exactement $3^k+1$ entiers. Il n'y a aucune
liberté : ce sont tous les entiers de cet intervalle, dans l'ordre. Autrement dit
$$f\big(3^k + j\big) = 2 \times 3^k + j \qquad \text{pour } 0 \leqslant j \leqslant 3^k.$$

### Étape 4 : la formule sur la seconde moitié

Soit maintenant $n$ compris entre $2 \times 3^k$ et $3^{k+1}$. Posons $j = n - 2 \times 3^k$, de
sorte que $0 \leqslant j \leqslant 3^k$. D'après l'étape 3,
$$n = 2 \times 3^k + j = f\big(3^k + j\big),$$
donc
$$f(n) = f\Big(f\big(3^k + j\big)\Big) = 3\big(3^k + j\big).$$

En remplaçant $j$ par $n - 2 \times 3^k$ :
$$f(n) = 3\big(3^k + n - 2\times 3^k\big) = 3\big(n - 3^k\big).$$

### Étape 5 : le calcul demandé

On a $3^6 = 729$, donc $2 \times 3^6 = 1458$ et $3^7 = 2187$. Et
$$1458 \leqslant 2011 \leqslant 2187,$$
donc $2011$ est dans la seconde moitié, avec $k = 6$. La formule de l'étape 4 donne
$$f(2011) = 3\big(2011 - 729\big) = 3 \times 1282 = 3846.$$

$$\boxed{f(2011) = 3846}$$

**Vérification.** La relation impose $f(3846) = 3 \times 2011 = 6033$. Contrôlons : $3^7 = 2187$
et $2 \times 3^7 = 4374$, donc $3846$ est dans la **première** moitié, avec $j = 3846 - 2187 = 1659$.
L'étape 3 donne $f(3846) = 2 \times 2187 + 1659 = 4374 + 1659 = 6033$. Tout est cohérent.

## Going further

Les étapes 1 à 4 déterminent complètement $f$. Vérifier que la fonction ainsi décrite,
$$f(n) = n + 3^k \ \text{ si } 3^k \leqslant n \leqslant 2\times 3^k,
\qquad f(n) = 3(n - 3^k) \ \text{ si } 2 \times 3^k \leqslant n \leqslant 3^{k+1},$$
est bien strictement croissante et vérifie $f(f(n)) = 3n$ : il existe donc exactement une
fonction répondant à la question.
