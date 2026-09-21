---
id: "8618"
title: "Le jeu des bonbons premiers avec le tas"
grade: 9
theme: logic-reasoning
difficulty: 3
duration_min: 30
tags: [strategie gagnante, parite, recurrence, pgcd]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2023, Groupe A"
  reference: "valbonne-2023.pdf, Groupe A, entraînement de fin de parcours, exercice 2"
  url: "https://maths-olympiques.fr/wp-content/uploads/2023/12/valbonne-2023.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/valbonne-2023.pdf"
---

## Statement

Maena et Gaspard jouent avec un tas de $n$ bonbons.

Chacun joue à tour de rôle. Quand c'est ton tour et qu'il reste $a$ bonbons dans le tas, tu choisis un entier $b$ tel que $1 \leqslant b \leqslant a$ et que $b$ soit **premier avec $a$** (c'est-à-dire $\mathrm{PGCD}(a, b) = 1$), et tu manges $b$ bonbons.

Celui qui mange le dernier bonbon a gagné.

Maena commence. Selon la valeur de $n$, lequel des deux joueurs peut être sûr de gagner ?

## Hints

1. Joue les petits cas : $n = 1$, $n = 2$, $n = 3$, $n = 4$. Qui gagne à chaque fois ?
2. Une conjecture simple devrait apparaître. Elle ne dépend que d'une chose très élémentaire sur $n$.
3. Quand il reste un nombre **impair** de bonbons, tu as toujours un coup très simple à ta disposition. Lequel ? Et il est toujours autorisé, pourquoi ?
4. Quand il reste un nombre **pair** de bonbons, quels $b$ sont interdits ? Regarde la parité de $b$.
5. Rédige par récurrence : « la position à $a$ bonbons est gagnante pour celui qui joue si et seulement si $a$ est impair ».

## Solution

Appelons **position** le nombre de bonbons restant au moment où un joueur doit jouer. Une position est dite *gagnante* si celui dont c'est le tour peut forcer la victoire, et *perdante* sinon.

**Le résultat.** La position $a$ est gagnante si et seulement si $a$ est impair.

Autrement dit : **si $n$ est impair, Maena gagne ; si $n$ est pair, Gaspard gagne.**

### Les deux observations qui font tout

**Observation 1 : d'une position impaire, on peut atteindre une position paire.**

Si $a$ est impair, le joueur peut manger $b = 1$ bonbon. C'est toujours autorisé, car $\mathrm{PGCD}(a, 1) = 1$ quelle que soit la valeur de $a$. Il laisse alors $a - 1$ bonbons, et $a - 1$ est pair.

(Si $a = 1$, manger ce bonbon, c'est manger le dernier : le joueur gagne immédiatement.)

**Observation 2 : d'une position paire, on ne peut atteindre qu'une position impaire.**

Supposons $a$ pair. Le nombre $b$ mangé doit vérifier $\mathrm{PGCD}(a, b) = 1$. Si $b$ était pair, alors $2$ diviserait à la fois $a$ et $b$, donc $\mathrm{PGCD}(a,b) \geqslant 2$ : interdit. Donc **$b$ est forcément impair**.

Il reste alors $a - b$ bonbons, c'est-à-dire pair moins impair : le nombre restant est **impair**. De plus $a - b \geqslant 0$, et même $a - b \geqslant 1$ : en effet $b = a$ est interdit, car $\mathrm{PGCD}(a,a) = a \geqslant 2$ puisque $a$ est pair. Le joueur qui est en position paire ne peut donc jamais prendre le dernier bonbon.

### La démonstration par récurrence

Montrons par récurrence forte sur $a \geqslant 1$ la propriété

$$P(a) : \quad \text{« la position } a \text{ est gagnante si } a \text{ est impair, perdante si } a \text{ est pair ».}$$

*Initialisation, $a = 1$.* Le joueur mange l'unique bonbon et gagne. La position $1$, impaire, est gagnante. ✓

*Hérédité.* Soit $a \geqslant 2$, et supposons $P(1), P(2), \ldots, P(a-1)$ vraies.

- **Si $a$ est impair**, le joueur mange $1$ bonbon (observation 1) et laisse $a - 1$ bonbons, avec $a-1$ pair et $1 \leqslant a-1 < a$. Par hypothèse de récurrence, cette position est perdante pour l'adversaire. Donc $a$ est gagnante.
- **Si $a$ est pair**, quel que soit le coup joué (observation 2), il laisse un nombre impair $a - b$ de bonbons, avec $1 \leqslant a - b < a$. Par hypothèse de récurrence, cette position est gagnante pour l'adversaire. Tous les coups mènent à une position gagnante pour l'autre : la position $a$ est perdante.

La récurrence est établie.

**Conclusion.** Maena, qui commence, gagne exactement lorsque $n$ est impair. Sa stratégie est d'une simplicité désarmante : **manger un seul bonbon à chaque tour**. Si $n$ est pair, c'est Gaspard qui gagne, avec la même stratégie.

## Going further

Remarque que la règle compliquée (« $b$ premier avec $a$ ») ne sert qu'à une seule chose : interdire les coups pairs depuis une position paire. Toute la richesse apparente du jeu se réduit à cela.

C'est un phénomène fréquent dans les jeux à deux joueurs : la bonne question n'est pas « quel est le meilleur coup ? » mais « quelles positions veux-je faire éviter à mon adversaire ? ». Ici l'ensemble des positions perdantes est simplement celui des nombres pairs.
