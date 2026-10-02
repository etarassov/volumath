---
id: "11433"
title: "Des chemins qui évitent les points rouges"
grade: 12
theme: combinatorics
difficulty: 4
duration_min: 40
tags: [chemins, recurrence, quadrillage, denombrement, puissances-de-2]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2021-2022 n° 4 (combinatoire)"
  reference: "2022-02_sujet-envoi-4.pdf, Exercices Seniors, exercice 17 ; corrigé 2022-04_corrige-envoi-4.pdf"
  url: "https://maths-olympiques.fr/wp-content/uploads/2022/02/sujet-envoi-4.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2022-02_sujet-envoi-4.pdf"
---

## Statement

Soient $m$ et $n$ deux entiers strictement positifs. Dans un repère, on colorie en rouge $m$ points
à coordonnées entières.

Un **chemin valide** part de l'origine $(0, 0)$ et fait $n$ pas. Chaque pas avance d'une unité, soit
vers la droite, de $(x, y)$ à $(x + 1, y)$, soit vers le haut, de $(x, y)$ à $(x, y + 1)$. Aucun des
$n + 1$ points du chemin, y compris le point de départ, n'est rouge.

On suppose qu'il existe au moins un chemin valide. Montrer qu'il y en a au moins $2^{n - m}$.

## Hints

1. Sans aucun point rouge, combien y a-t-il de chemins de $n$ pas ? Que devient le nombre
   $2^{n-m}$ quand $m \geqslant n$ ?
2. Raisonne par récurrence sur $n$. Un chemin valide commence par un pas vers la droite ou par un
   pas vers le haut ; ce qui reste ressemble à un chemin de $n - 1$ pas.
3. Un chemin qui commence par un pas vers le haut ne repasse jamais par l'axe des abscisses. Les
   points rouges situés sur cet axe ne le gênent donc pas.
4. Compte les points rouges situés sur l'axe des abscisses et ceux situés sur l'axe des ordonnées.
   S'il n'y en a aucun, les deux chemins « tout droit » sont valides.

## Solution

Si $m \geqslant n$, alors $2^{n - m} \leqslant 1$, et il n'y a rien à démontrer puisqu'on suppose qu'il
existe un chemin valide. Mais la démonstration qui suit marche pour toutes les valeurs, et même pour
$m = 0$ : dans ce cas, aucun point n'est rouge, les $2^n$ chemins sont valides, et $2^n = 2^{n-0}$.

On démontre par récurrence sur $n \geqslant 0$ la propriété suivante.

> $\mathcal{P}(n)$ : pour tout entier $m \geqslant 0$ et pour toute façon de colorier $m$ points en rouge, s'il existe un chemin valide de $n$ pas, alors il en existe au moins $2^{n-m}$.

**Initialisation.** Pour $n = 0$, un chemin est réduit au seul point $(0, 0)$. S'il est valide, il y
a $1$ chemin valide, et $1 \geqslant 2^{-m}$.

**Hérédité.** Soit $n \geqslant 1$. On suppose $\mathcal{P}(n - 1)$ vraie, et on considère $m$ points
rouges tels qu'il existe un chemin valide de $n$ pas. En particulier, $(0, 0)$ n'est pas rouge.

Notons $a$ le nombre de points rouges situés sur l'axe des abscisses (ceux de la forme $(x, 0)$), et
$b$ le nombre de points rouges situés sur l'axe des ordonnées (ceux de la forme $(0, y)$).

**Les chemins qui commencent vers la droite.** Un tel chemin passe par $(1, 0)$, puis fait $n - 1$
pas sans jamais revenir à l'abscisse $0$. Décalons-le d'une unité vers la gauche : on obtient un
chemin de $n - 1$ pas qui part de $(0, 0)$. Oublions les $b$ points rouges de l'axe des ordonnées,
que ces chemins ne rencontrent jamais, et décalons de même tous les autres points rouges.
On obtient une nouvelle figure avec $m - b$ points rouges, et les chemins valides de $n$ pas qui
commencent vers la droite correspondent exactement aux chemins valides de $n - 1$ pas de cette
nouvelle figure. D'après $\mathcal{P}(n - 1)$ :

> s'il existe un chemin valide qui commence vers la droite, alors il en existe au moins $2^{n - 1 - (m - b)}$ qui commencent vers la droite.

**Les chemins qui commencent vers le haut.** De la même façon, en oubliant les $a$ points rouges de
l'axe des abscisses et en décalant tout le reste d'une unité vers le bas :

> s'il existe un chemin valide qui commence vers le haut, alors il en existe au moins $2^{n - 1 - (m - a)}$ qui commencent vers le haut.

Séparons maintenant les cas.

- **Cas $a = 0$ et $b = 0$.** Aucun point rouge n'est sur les axes. Le chemin qui fait $n$ pas vers
  la droite est donc valide, et celui qui fait $n$ pas vers le haut aussi. Les deux résultats
  ci-dessus donnent au moins $2^{n-1-m}$ chemins de chaque sorte, donc au total au moins
  $2 \times 2^{n - 1 - m} = 2^{n - m}$ chemins valides.
- **Cas $b \geqslant 1$ et $a = 0$.** Le chemin qui fait $n$ pas vers la droite est valide, et il
  commence vers la droite. Il y a donc au moins $2^{n - 1 - (m - b)} = 2^{n - m + (b - 1)}$ chemins
  valides, et ce nombre est au moins $2^{n-m}$ puisque $b - 1 \geqslant 0$.
- **Cas $a \geqslant 1$ et $b = 0$.** C'est le cas précédent en échangeant les rôles des deux axes :
  le chemin qui fait $n$ pas vers le haut est valide, et il y a au moins
  $2^{n - 1 - (m - a)} \geqslant 2^{n - m}$ chemins valides.
- **Cas $a \geqslant 1$ et $b \geqslant 1$.** Prenons un chemin valide. S'il commence vers la droite,
  il y a au moins $2^{n - 1 - (m - b)} \geqslant 2^{n - m}$ chemins valides. S'il commence vers le
  haut, il y en a au moins $2^{n - 1 - (m - a)} \geqslant 2^{n - m}$.

Dans tous les cas, il existe au moins $2^{n-m}$ chemins valides : $\mathcal{P}(n)$ est vraie.

**Conclusion.** Par récurrence, $\mathcal{P}(n)$ est vraie pour tout $n$. Dès qu'il existe un chemin
valide de $n$ pas évitant $m$ points rouges, il en existe au moins $2^{n - m}$.

## Going further

**On ne peut pas faire mieux.** Supposons $m \leqslant n$, et colorions en rouge les $m$ points

$$(0, 1), \quad (1, 1), \quad \ldots, \quad (m - 1, 1) .$$

Partant de $(0, 0)$, un chemin ne peut pas monter, puisque $(0, 1)$ est rouge : il va en $(1, 0)$.
De là, il ne peut toujours pas monter, et ainsi de suite jusqu'au point $(m, 0)$, atteint après $m$
pas tous vers la droite. Ensuite, plus aucun point rouge ne le gêne, et les $n - m$ pas restants se
choisissent librement. Il y a donc exactement $2^{n - m}$ chemins valides : la borne de l'énoncé est
atteinte.
