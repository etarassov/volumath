---
id: "7052"
title: "Quatre parties entières qui n'en font qu'une"
grade: 11
theme: arithmetic
difficulty: 4
duration_min: 35
tags: [partie entiere, division euclidienne, identite]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique junior de Saint-Pierre-lès-Nemours 2009"
  reference: "stage_junior_2009.pdf, « Partie entière et valeur absolue » (François Lo Jacomo), exercice 2"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_junior_2009.pdf"
---

## Statement

Pour un nombre réel $x$, on note $\lfloor x \rfloor$ sa **partie entière** : le plus grand
entier inférieur ou égal à $x$. Par exemple $\lfloor \text{3,7} \rfloor = 3$,
$\lfloor 5 \rfloor = 5$ et $\lfloor -\text{3,7} \rfloor = -4$.

Montrer que pour **tout** réel $x$ :
$$\left\lfloor \frac{x}{4} \right\rfloor
+ \left\lfloor \frac{x+1}{4} \right\rfloor
+ \left\lfloor \frac{x+2}{4} \right\rfloor
+ \left\lfloor \frac{x+3}{4} \right\rfloor
= \lfloor x \rfloor .$$

## Hints

1. Teste la formule sur $x = 5$, puis $x = \text{5,5}$, puis $x = -\text{2,3}$, pour te
   convaincre qu'elle est vraie et voir ce qui se passe.
2. Pose $n = \left\lfloor \dfrac{x}{4} \right\rfloor$. Qu'est-ce que cela dit sur $x$ ?
3. Tu obtiens $4n \leq x < 4n + 4$. Écris alors $\lfloor x \rfloor = 4n + p$, où $p$ vaut
   $0$, $1$, $2$ ou $3$.
4. Montre que chacune des quatre parties entières de la somme vaut $n$ ou $n + 1$, jamais
   autre chose.
5. Il ne reste plus qu'à compter combien valent $n$ et combien valent $n+1$.

## Solution

**Mise en place.**

Posons
$$n = \left\lfloor \frac x4 \right\rfloor .$$

Par définition de la partie entière, $n \leq \dfrac x4 < n + 1$, c'est-à-dire
$$4n \leq x < 4n + 4 .$$

Donc $\lfloor x \rfloor$ est l'un des quatre entiers $4n$, $4n+1$, $4n+2$, $4n+3$. Écrivons
$$\lfloor x \rfloor = 4n + p, \qquad \text{avec } p \in \{0, 1, 2, 3\} .$$

Cela signifie exactement
$$(\star) \qquad 4n + p \leq x < 4n + p + 1 .$$

**Chaque terme vaut $n$ ou $n+1$.**

Soit $k \in \{0, 1, 2, 3\}$. De $(\star)$ on tire
$$4n \leq 4n + p \leq x + k \qquad \text{et} \qquad x + k < 4n + p + 1 + k \leq 4n + 7 < 4n + 8 .$$

En divisant par $4$ :
$$n \leq \frac{x+k}{4} < n + 2 ,$$
donc
$$\left\lfloor \frac{x+k}{4} \right\rfloor \in \{n,\ n+1\} .$$

**Lequel des deux ?**

On a $\left\lfloor \dfrac{x+k}{4} \right\rfloor = n$ exactement quand
$\dfrac{x+k}{4} < n+1$, c'est-à-dire quand $x < 4n + 4 - k$. Comparons avec $(\star)$.

- **Si $p + k \leq 3$.** Alors $4n + p + 1 \leq 4n + 4 - k$, et comme $x < 4n+p+1$ on a bien
  $x < 4n + 4 - k$. Donc le terme vaut $n$.
- **Si $p + k \geq 4$.** Alors $4n + p \geq 4n + 4 - k$, et comme $x \geq 4n + p$ on a
  $x \geq 4n + 4 - k$. Donc le terme vaut $n + 1$.

**Le compte.**

Parmi $k = 0, 1, 2, 3$, la condition $p + k \leq 3$ est vérifiée pour $k = 0, 1, \ldots, 3-p$,
soit $4 - p$ valeurs de $k$. Les $p$ valeurs restantes donnent $n+1$.

La somme cherchée vaut donc
$$(4 - p) \times n + p \times (n + 1) = 4n - pn + pn + p = 4n + p = \lfloor x \rfloor .$$

C'est bien l'égalité annoncée. $\blacksquare$

## Going further

La démonstration n'a utilisé que le nombre $4$ comme dénominateur, et rien d'autre. Elle se
recopie mot pour mot avec n'importe quel entier $m \geq 1$ à la place de $4$ :
$$\left\lfloor \frac{x}{m} \right\rfloor
+ \left\lfloor \frac{x+1}{m} \right\rfloor + \cdots
+ \left\lfloor \frac{x+m-1}{m} \right\rfloor = \lfloor x \rfloor .$$

C'est l'**identité d'Hermite**. Le cas $m = 2$,
$$\left\lfloor \frac{x}{2} \right\rfloor + \left\lfloor \frac{x+1}{2} \right\rfloor
= \lfloor x \rfloor ,$$
est le plus utile en pratique : il permet de découper une partie entière en deux, ou de
recoller deux parties entières en une.
