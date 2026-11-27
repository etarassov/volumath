---
id: "41081"
title: "Une marche au hasard qui ne remonte jamais : le cas de deux points"
grade: 11
theme: probability-statistics
difficulty: 2
duration_min: 25
tags: [marche-aleatoire, probabilites-totales, suite-geometrique, esperance, limite]
adapted_from: null
see_also: ["41082", "41083", "41084"]
same_as: []
created: 2026-11-27
source:
  name: "Concours général des lycées 2019, mathématiques, série ES"
  reference: "cg-2019-es-sujet.pdf, problème I « Marche aléatoire », question 1° (a) à (e). La question 1° (f), qui demande une matrice, est placée au début de l'exercice 41082."
  url: "https://www.freemaths.fr/annales-composition-mathematiques-concours-general/concours-general-mathematiques-sujet-serie-es-2019.pdf"
  original_language: "fr"
  local_copy: "sources/originals/concours-general/cg-2019-es-sujet.pdf"
---

## Statement

Un individu se déplace sur les points d'abscisses $0$ et $1$ d'un axe, selon les règles
suivantes :

- à l'instant $0$, il est placé au point d'abscisse $1$ ;
- si, à l'instant $n$, il est au point d'abscisse $1$, alors à l'instant $n + 1$ il est placé au
  hasard, de façon équiprobable, sur l'un des deux points d'abscisses $0$ et $1$ ;
- si, à l'instant $n$, il est au point d'abscisse $0$, il y reste à l'instant $n + 1$.

Pour tout entier naturel $n$, on note $X_n$ l'abscisse du point où se trouve l'individu à
l'instant $n$. On note $P(A)$ la probabilité d'un évènement $A$ et $E(X)$ l'espérance d'une
variable aléatoire $X$.

1. Justifier que $P(X_0 = 1) = 1$, puis que $P(X_1 = 0) = P(X_1 = 1) = \frac{1}{2}$.
2. Montrer que $P(X_2 = 1) = \frac{1}{4}$ et $P(X_2 = 0) = \frac{3}{4}$.
3. Montrer que, pour tout entier naturel $n$,
   $$P(X_{n+1} = 1) = \frac{1}{2}\,P(X_n = 1) \quad \text{et} \quad P(X_{n+1} = 0) = P(X_n = 0) + \frac{1}{2}\,P(X_n = 1).$$
4. Pour tout entier naturel $n$, déterminer $P(X_n = 1)$ et $P(X_n = 0)$. Quelles sont les
   limites de ces deux probabilités quand $n$ tend vers l'infini ?
5. Pour tout entier naturel $n$, déterminer $E(X_n)$. Quelle est sa limite quand $n$ tend vers
   l'infini ?

## Hints

1. **Question 2.** Faire un arbre de probabilités sur deux instants, à partir du point $1$.
2. **Question 3.** Les évènements $\{X_n = 0\}$ et $\{X_n = 1\}$ forment une partition :
   utiliser la formule des probabilités totales. Que vaut la probabilité d'arriver en $1$ à
   l'instant $n + 1$ quand on est en $0$ à l'instant $n$ ?
3. **Question 4.** La première relation dit que $(P(X_n = 1))$ est une suite
   géométrique. Pour l'autre, l'individu est forcément en $0$ ou en $1$.
4. **Question 5.** $X_n$ ne prend que les valeurs $0$ et $1$.

## Solution

**1.** À l'instant $0$ l'individu est placé en $1$ : l'évènement $\{X_0 = 1\}$ est certain, donc
$P(X_0 = 1) = 1$. À l'instant $1$, il part du point $1$ et il est placé de façon équiprobable
sur l'un des deux points $0$ et $1$, donc $P(X_1 = 0) = P(X_1 = 1) = \frac{1}{2}$.

**2.** Pour être en $1$ à l'instant $2$, l'individu doit être en $1$ à l'instant $1$ (car du
point $0$ on ne remonte pas), puis être replacé en $1$. Donc
$P(X_2 = 1) = \frac{1}{2} \times \frac{1}{2} = \frac{1}{4}$. Comme $X_2$ vaut $0$ ou $1$,
$P(X_2 = 0) = 1 - \frac{1}{4} = \frac{3}{4}$.

On peut aussi le lire sur l'arbre : les chemins $1 \to 0 \to 0$ et $1 \to 1 \to 0$ mènent en
$0$, avec les probabilités $\frac{1}{2} \times 1$ et $\frac{1}{2} \times \frac{1}{2}$, de
somme $\frac{3}{4}$.

**3.** Soit $n$ un entier naturel tel que $P(X_n = 1) \neq 0$ et $P(X_n = 0) \neq 0$ (sinon un
des termes ci-dessous est simplement nul). D'après les règles du déplacement,

- $P_{\{X_n = 1\}}(X_{n+1} = 1) = \frac{1}{2}$ et $P_{\{X_n = 1\}}(X_{n+1} = 0) = \frac{1}{2}$ ;
- $P_{\{X_n = 0\}}(X_{n+1} = 1) = 0$ et $P_{\{X_n = 0\}}(X_{n+1} = 0) = 1$.

Les évènements $\{X_n = 0\}$ et $\{X_n = 1\}$ forment une partition de l'univers. La formule des
probabilités totales donne
$$P(X_{n+1} = 1) = P(X_n = 0) \times 0 + P(X_n = 1) \times \frac{1}{2} = \frac{1}{2}\,P(X_n = 1),$$
$$P(X_{n+1} = 0) = P(X_n = 0) \times 1 + P(X_n = 1) \times \frac{1}{2} = P(X_n = 0) + \frac{1}{2}\,P(X_n = 1).$$

**4.** La suite $(P(X_n = 1))$ est géométrique, de raison $\frac{1}{2}$ et de premier
terme $P(X_0 = 1) = 1$. Donc, pour tout entier naturel $n$,
$$P(X_n = 1) = \frac{1}{2^n}, \qquad P(X_n = 0) = 1 - P(X_n = 1) = 1 - \frac{1}{2^n}.$$
On retrouve bien les valeurs des questions 1 et 2. Comme $0 < \frac{1}{2} < 1$, la suite
$\frac{1}{2^n}$ tend vers $0$.

**Conclusion :** $P(X_n = 1)$ tend vers $0$ et $P(X_n = 0)$ tend vers $1$.

**5.** $X_n$ prend les valeurs $0$ et $1$, donc
$$E(X_n) = 0 \times P(X_n = 0) + 1 \times P(X_n = 1) = \frac{1}{2^n}.$$

**Conclusion :** $E(X_n) = \frac{1}{2^n}$, qui tend vers $0$ quand $n$ tend vers l'infini.

**Bilan.** Partant du point $1$, l'individu y est encore à l'instant $n$ avec la probabilité
$\frac{1}{2^n}$ : la probabilité qu'il soit déjà tombé en $0$, où il reste ensuite, tend vers $1$. Son abscisse moyenne
$\frac{1}{2^n}$ tend vers $0$.

## Going further

- Dans la suite du sujet, l'individu part du point $2$, puis du point $3$, puis d'un point $q$
  quelconque, et à chaque étape il est placé de façon équiprobable sur l'un des points
  $0, 1, \ldots, k$ s'il était au point $k$. Partant de $2$, pouvez-vous montrer que
  $P(X_n = 2) = \frac{1}{3^n}$, puis calculer $E(X_n)$ ? Voir les exercices 41082, 41083 et 41084.
- Combien vaut en moyenne l'instant où l'individu arrive en $0$ ? (On peut montrer que c'est
  $2$.)
