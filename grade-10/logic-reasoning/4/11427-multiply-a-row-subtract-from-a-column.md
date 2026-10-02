---
id: "11427"
title: "Multiplier une ligne, retrancher à une colonne"
grade: 10
theme: logic-reasoning
difficulty: 4
duration_min: 40
tags: [invariant, strategie, grille, multiples]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2021-2022 n° 4 (combinatoire)"
  reference: "2022-02_sujet-envoi-4.pdf, Exercices Juniors, exercice 7 (le même texte est l'exercice 13 des Seniors) ; corrigé 2022-04_corrige-envoi-4.pdf ; la méthode pour n = 2 est simplifiée ici"
  url: "https://maths-olympiques.fr/wp-content/uploads/2022/02/sujet-envoi-4.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2022-02_sujet-envoi-4.pdf"
---

## Statement

Soit $n \geqslant 1$ un entier. Domitille a un tableau rectangulaire, découpé en cases. Dans chaque
case est écrit un entier strictement positif. Elle peut faire les deux opérations suivantes, autant
de fois qu'elle le veut et dans l'ordre qu'elle veut :

- choisir une **ligne** et multiplier chacun de ses nombres par $n$ ;
- choisir une **colonne** et retrancher $n$ à chacun de ses nombres.

Trouver toutes les valeurs de $n$ pour lesquelles la propriété suivante est vraie : quelles que
soient la taille du tableau et les nombres écrits dedans, Domitille peut arriver, en un nombre fini
d'opérations, à un tableau qui ne contient que des $0$.

## Hints

1. Regarde un tableau d'une seule colonne et deux lignes, avec les nombres $1$ et $2$. Que devient
   la différence entre ces deux nombres après chaque opération ?
2. Multiplier $a$ par $n$, c'est lui ajouter $(n - 1) \times a$. Pour $n \geqslant 3$, cherche ce qui
   ne change pas dans la division par $n - 1$.
3. Pour $n = 2$, occupe-toi d'une colonne à la fois. Une colonne déjà remplie de $0$ reste-t-elle
   remplie de $0$ ?
4. Toujours pour $n = 2$ : rends d'abord tous les nombres de la colonne pairs. Ensuite, un nombre
   égal à $2$ peut « attendre » les autres : on le double en $4$, puis on retranche $2$.

## Solution

**Réponse : seulement $n = 2$.**

### Pour $n = 1$ et pour $n \geqslant 3$, c'est impossible

Prenons le tableau d'une seule colonne et de deux lignes, qui contient $a = 1$ en haut et $b = 2$ en
bas. Suivons la différence $b - a$, qui vaut $1$ au départ.

- Retrancher $n$ à la colonne enlève $n$ aux deux nombres : la différence $b - a$ ne change pas.
- Multiplier la ligne du haut par $n$ change $a$ en $na = a + (n - 1)a$ : la différence $b - a$
  diminue de $(n - 1)a$, un multiple de $n - 1$. De même, multiplier la ligne du bas l'augmente de
  $(n - 1)b$, un multiple de $n - 1$.

Ainsi la différence $b - a$ ne change jamais, sauf de multiples de $n - 1$.

**Si $n = 1$**, ces multiples de $0$ sont nuls : la différence vaut toujours $1$. Les deux nombres
ne sont jamais égaux, donc jamais tous les deux nuls.

**Si $n \geqslant 3$**, alors $n - 1 \geqslant 2$. La différence $b - a$ part de $1$ et ne change que
de multiples de $n - 1$ : elle garde toujours le même reste dans la division par $n - 1$, à savoir
$1$. Pour un tableau rempli de $0$, il faudrait que la différence vaille $0$, dont le reste est $0$.
C'est impossible.

### Pour $n = 2$, c'est toujours possible

Les opérations sont maintenant : doubler une ligne, retrancher $2$ à une colonne.

**On traite les colonnes une par une, de gauche à droite.** Supposons que les premières colonnes
soient déjà remplies de $0$, et que les autres contiennent des entiers strictement positifs. On va
remplir de $0$ la colonne suivante, en ne retranchant $2$ qu'à elle. Pendant ce temps :

- les colonnes déjà remplies de $0$ restent remplies de $0$, car on ne fait que doubler leurs
  nombres, et $2 \times 0 = 0$ ;
- les colonnes situées plus à droite sont seulement doublées : elles contiennent toujours des entiers
  strictement positifs, et on pourra les traiter ensuite de la même façon.

Il reste à expliquer comment remplir de $0$ une colonne qui contient des entiers strictement positifs.

**Étape 1 : tout rendre pair.** On double chaque ligne une fois. Tous les nombres de la colonne
deviennent pairs et au moins égaux à $2$.

**Étape 2 : on répète le coup suivant.** On double chaque ligne dont le nombre, dans la colonne, vaut
$2$, puis on retranche $2$ à la colonne.

- Un nombre qui valait $2$ devient $4$, puis de nouveau $2$ : il attend.
- Un nombre pair au moins égal à $4$ diminue de $2$ : il reste pair et au moins égal à $2$.

Après chaque coup, tous les nombres de la colonne sont donc encore pairs et au moins égaux à $2$.
Tant qu'ils ne valent pas tous $2$, au moins un nombre diminue de $2$ et aucun n'augmente. La somme
des nombres de la colonne diminue donc d'au moins $2$ à chaque coup, sans pouvoir descendre sous
$2$ fois le nombre de lignes. Au bout d'un nombre fini de coups, tous les nombres de la colonne
valent $2$.

**Étape 3 : finir.** On retranche $2$ à la colonne : elle ne contient plus que des $0$.

**Un exemple.** Une colonne qui contient $3$ en haut et $1$ en bas :

| coup | haut | bas |
|---|---|---|
| départ | $3$ | $1$ |
| étape 1 : doubler les deux lignes | $6$ | $2$ |
| étape 2 : doubler la ligne du bas, puis retrancher $2$ | $4$ | $2$ |
| étape 2 : doubler la ligne du bas, puis retrancher $2$ | $2$ | $2$ |
| étape 3 : retrancher $2$ | $0$ | $0$ |

En traitant ainsi toutes les colonnes l'une après l'autre, Domitille arrive à un tableau rempli de
$0$.

**Conclusion.** La propriété est vraie pour $n = 2$, et pour aucune autre valeur de $n$.
