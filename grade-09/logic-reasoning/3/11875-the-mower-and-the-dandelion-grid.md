---
id: "11875"
title: "La tondeuse et le tableau de pissenlits"
grade: 9
theme: logic-reasoning
difficulty: 3
duration_min: 30
tags: [jeu, strategie-gagnante, parite, recurrence, positions-perdantes]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2024-2025 n° 5 (pot-pourri)"
  reference: "2025-04_Sujet-envoi-5-2024-2025.pdf, Exercices Juniors, exercice 4 ; corrigé 2025-06_Corrige-envoi-5-2024-2025.pdf. Réponse vérifiée par ordinateur pour m, n ⩽ 14."
  url: "https://maths-olympiques.fr/wp-content/uploads/2025/04/Sujet-envoi-5-2024-2025.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2025-04_Sujet-envoi-5-2024-2025.pdf"
---

## Statement

Soient $m$ et $n$ deux entiers strictement positifs. Clémentine a planté dans son jardin $m \times n$ pissenlits, en $m$ rangées de $n$ pissenlits, qui forment un tableau rectangulaire.

Émile et Baptiste jouent avec une tondeuse. Chacun à son tour, en commençant par Émile, un joueur choisit une ligne du tableau (une rangée horizontale ou une colonne verticale) et rase tous les pissenlits encore debout sur cette ligne. Il doit raser au moins un pissenlit. Le joueur qui rase le dernier pissenlit gagne.

Pour quelles valeurs de $m$ et $n$ Émile peut-il être sûr de gagner, quelle que soit la façon de jouer de Baptiste ?

## Hints

1. Jouer les petits cas : $1 \times n$, $2 \times 2$, $2 \times 3$, $3 \times 3$.
2. Après quelques coups, les pissenlits encore debout sont exactement ceux qui sont à la fois sur une rangée et sur une colonne qui n'ont pas encore été rasées. On peut les « resserrer » en un tableau plus petit sans rien changer au jeu.
3. Laisser de côté les tableaux qui ont une seule rangée ou une seule colonne. Pour les autres, regarder la parité de $m + n$.

## Solution

**Ce qui compte dans une partie.** Quand on rase une rangée, cette rangée disparaît du jeu : il ne reste plus rien sur elle. Pareil pour une colonne. À tout moment, les pissenlits encore debout sont donc exactement ceux qui sont sur une rangée intacte *et* sur une colonne intacte. Si l'on a encore $r$ rangées et $s$ colonnes intactes, on peut resserrer les pissenlits restants en un tableau $r \times s$ : jouer sur l'un ou sur l'autre revient au même. Un coup fait passer de $r \times s$ à $(r - 1) \times s$ ou à $r \times (s - 1)$, et le joueur qui fait tomber $r$ ou $s$ à $0$ a rasé le dernier pissenlit : il gagne.

On appelle **position perdante** un tableau tel que le joueur qui doit jouer perd si son adversaire joue bien, et **position gagnante** un tableau tel que le joueur qui doit jouer peut s'assurer de gagner.

**Les tableaux d'une seule ligne.** Un tableau $1 \times s$ ou $r \times 1$ est gagnant : on rase l'unique ligne en une fois.

**Les autres tableaux.** Montrons que, pour $r \geqslant 2$ et $s \geqslant 2$, le tableau $r \times s$ est **perdant si $r + s$ est pair et gagnant si $r + s$ est impair**. On le vérifie pour $r + s = 4$, puis $5$, puis $6$, et ainsi de suite, chaque cas s'appuyant sur les précédents.

- *Le cas $r + s = 4$*, c'est-à-dire $2 \times 2$. Tout coup mène à un tableau $1 \times 2$ ou $2 \times 1$, gagnant pour l'adversaire. Le tableau $2 \times 2$ est donc perdant.
- *Si $r + s$ est pair* (avec $r, s \geqslant 2$). Un coup mène à $(r - 1) \times s$ ou $r \times (s - 1)$. Si ce nouveau tableau n'a qu'une ligne, il est gagnant pour l'adversaire. Sinon, ses deux dimensions sont au moins $2$ et leur somme $r + s - 1$ est impaire : il est gagnant pour l'adversaire, car la règle est déjà établie pour la somme plus petite $r + s - 1$. Tous les coups mènent à une position gagnante pour l'adversaire, donc $r \times s$ est perdant.
- *Si $r + s$ est impair* (avec $r, s \geqslant 2$). Les deux dimensions ne peuvent pas valoir $2$ toutes les deux (la somme serait $4$, paire). Disons $r \geqslant 3$. Le joueur rase une rangée et laisse le tableau $(r - 1) \times s$, où $r - 1 \geqslant 2$, $s \geqslant 2$ et la somme $r + s - 1$ est paire : c'est une position perdante pour l'adversaire, toujours parce que la règle est déjà établie pour cette somme plus petite. Donc $r \times s$ est gagnant.

**Conclusion.** Émile peut être sûr de gagner exactement quand **$m = 1$, ou $n = 1$, ou $m + n$ est impair**. Il perd (si Baptiste joue bien) quand $m \geqslant 2$, $n \geqslant 2$ et $m + n$ est pair.

Sa stratégie, quand $m + n$ est impair avec $m, n \geqslant 2$ : toujours raser une ligne qui diminue de $1$ la plus grande des deux dimensions, de façon à laisser à Baptiste un tableau aux dimensions au moins $2$ et de somme paire, et finir en rasant toute la dernière ligne dès qu'il n'en reste qu'une.

## Going further

Le piège de ce jeu est le tableau à une seule ligne : $1 \times 2$ a une somme impaire, mais $1 \times 3$ aussi est gagnant alors que $1 + 3$ est pair. Une règle trouvée sur les petits tableaux carrés ou presque carrés ne s'applique donc pas telle quelle à tous les tableaux.
