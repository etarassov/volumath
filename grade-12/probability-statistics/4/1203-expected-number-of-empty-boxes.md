---
id: "1203"
title: "Combien de boîtes resteront vides ?"
grade: 12
theme: probability-statistics
difficulty: 4
duration_min: 40
tags: [esperance, linearite, variable-indicatrice, independance, nombre-e]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), Advanced 1, «Irrational Numbers Part II: The Number e»"
  reference: "Handout-4425-4240.pdf, problèmes 3 et 14 (réponses dans Handout-4426-4240.pdf)"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-4425-4240.pdf"
---

## Statement

On dispose de $N$ boîtes numérotées de $1$ à $N$ et de $N$ balles. On lance les balles une par une : chaque balle tombe dans l'une des $N$ boîtes, choisie au hasard, chaque boîte ayant la même probabilité $\frac{1}{N}$ de la recevoir, indépendamment des autres balles. Plusieurs balles peuvent tomber dans la même boîte.

Soit $V$ le nombre de boîtes restées vides à la fin.

1. Pour $N = 4$, calculer $E(V)$ exactement. Combien de boîtes vides peut-on espérer, en moyenne, sur les quatre ?
2. Donner $E(V)$ en fonction de $N$ dans le cas général.
3. Quelle proportion des boîtes reste vide, en moyenne, quand $N$ est très grand ?

## Hints

1. Calculer directement la loi de $V$ est très pénible. Le détour classique : écrire $V$ comme une somme de variables aléatoires simples.
2. Pour chaque boîte $i$, poser $X_i = 1$ si la boîte $i$ est vide, et $X_i = 0$ sinon. Que vaut $X_1 + X_2 + \dots + X_N$ ?
3. L'espérance d'une somme est la somme des espérances, **même si les variables ne sont pas indépendantes**. C'est cette propriété qui fait tout le travail ici.
4. Pour une variable qui ne prend que les valeurs $0$ et $1$, l'espérance est égale à la probabilité de valoir $1$.
5. La boîte $1$ est vide lorsque **chacune** des $N$ balles a évité la boîte $1$.

## Solution

**L'idée : découper $V$ en petits morceaux.**

Pour chaque boîte $i$ (avec $1 \leqslant i \leqslant N$), définissons la variable aléatoire $X_i$ ainsi : $X_i$ vaut $1$ si la boîte $i$ est restée vide, et $X_i$ vaut $0$ sinon. Une telle variable, qui ne dit qu'« oui » ou « non », s'appelle une **indicatrice**.

Alors, en additionnant ces $N$ variables, on compte exactement les boîtes vides :

$$V = X_1 + X_2 + \dots + X_N.$$

**L'espérance d'une indicatrice.**

$X_i$ ne prend que deux valeurs, $0$ et $1$. Donc

$$E(X_i) = 0 \times P(X_i = 0) + 1 \times P(X_i = 1) = P(X_i = 1) = P(\text{la boîte } i \text{ est vide}).$$

Calculons cette probabilité. Chaque balle évite la boîte $i$ avec la probabilité $1 - \dfrac{1}{N}$, et les $N$ balles sont lancées indépendamment. La boîte $i$ reste vide exactement quand les $N$ balles l'ont toutes évitée :

$$P(\text{la boîte } i \text{ est vide}) = \left(1 - \frac{1}{N}\right)^{\!N}.$$

**La linéarité de l'espérance.**

L'espérance d'une somme est toujours la somme des espérances. Ici les $X_i$ ne sont pas indépendantes (si $N-1$ boîtes sont vides, la dernière ne l'est sûrement pas), mais cela n'a aucune importance : la linéarité de l'espérance n'exige pas l'indépendance. Donc

$$E(V) = E(X_1) + \dots + E(X_N) = N \left(1 - \frac{1}{N}\right)^{\!N}.$$

**1. Le cas $N = 4$.**

$$E(V) = 4 \left(\frac{3}{4}\right)^{\!4} = 4 \times \frac{81}{256} = \frac{81}{64} = \text{1,265625}.$$

Avec quatre balles et quatre boîtes, un peu plus d'une boîte sur quatre reste vide en moyenne.

**2. Le cas général.** On vient de l'établir :

$$E(V) = N \left(1 - \frac{1}{N}\right)^{\!N}.$$

**3. La proportion de boîtes vides.**

La proportion moyenne de boîtes vides est

$$\frac{E(V)}{N} = \left(1 - \frac{1}{N}\right)^{\!N}.$$

En passant au logarithme, $\ln\left(1-\frac1N\right)^{N} = N\ln\left(1-\frac1N\right)$, et en posant $h = -\frac{1}{N}$ cette quantité s'écrit $-\dfrac{\ln(1+h)}{h}$, qui tend vers $-1$ quand $h \to 0$ (nombre dérivé de $x \mapsto \ln(1+x)$ en $0$). Donc

$$\lim_{N \to +\infty} \frac{E(V)}{N} = e^{-1} = \frac{1}{e} \approx \text{0,368}.$$

**Conclusion.** En moyenne $N\left(1-\frac{1}{N}\right)^{N}$ boîtes restent vides, soit $\dfrac{81}{64} \approx \text{1,27}$ boîtes pour $N = 4$. Quand $N$ est grand, environ $37\,\%$ des boîtes ne reçoivent aucune balle, alors qu'il y a pourtant autant de balles que de boîtes.

## Going further

1. Quelle est l'espérance du nombre de boîtes contenant **exactement une** balle ? Vers quelle proportion tend-elle ?
2. On lance maintenant $2N$ balles dans $N$ boîtes. Quelle proportion de boîtes reste vide en moyenne quand $N$ est grand ?
