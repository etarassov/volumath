---
id: "6113"
title: "Éliminations successives et duels : qui est vraiment élu ?"
grade: 10
theme: logic-reasoning
difficulty: 3
duration_min: 45
tags: [vote, condorcet, elimination, duels, comptage, tableau]
adapted_from: null
see_also: ["6112"]
same_as: []
created: 2026-09-20
source:
  name: "MathCircles.org (National Association of Math Circles), Can Voting Ever Really Be « Fair »?"
  reference: "MTCircular_WeThePeople.pdf, séance de Lynne M. Pachnowski et Linda Marie Saliga (Rubber City MTC), parue dans MTCircular Autumn 2018, tableaux 1 à 3. Noms des candidats remplacés ; tous les chiffres de l'article ont été recalculés et sont exacts."
  url: "https://mathcircles.org/activity/can-voting-ever-really-be-fair/"
  original_language: "en"
  local_copy: "sources/originals/namc/MTCircular_WeThePeople.pdf"
---

## Statement

Cent élèves élisent le délégué du lycée. Il y a cinq candidats : Amina, Bruno, Chloé, Diego et Elsa. Chaque élève **classe** les cinq candidats de son préféré au dernier. Les cent bulletins ne comportent que cinq classements différents :

| Nombre d'élèves | $37$ | $27$ | $22$ | $11$ | $3$ |
|---|---|---|---|---|---|
| **1er** | Amina | Bruno | Chloé | Diego | Elsa |
| **2e** | Diego | Diego | Bruno | Elsa | Bruno |
| **3e** | Bruno | Chloé | Diego | Chloé | Chloé |
| **4e** | Chloé | Elsa | Amina | Bruno | Diego |
| **5e** | Elsa | Amina | Elsa | Amina | Amina |

Au scrutin à un tour, c'est Amina qui l'emporte : elle est en tête sur $37$ bulletins, plus que quiconque. Mais $63$ élèves sur $100$ ne l'ont pas mise en tête, et le débat s'ouvre. Trois autres dépouillements sont proposés.

a) **Élimination par le bas (méthode de Hare).** On élimine le candidat qui a le moins de premières places. Sur chaque bulletin, on le raye et tous ceux qui étaient derrière lui remontent d'un cran. On recompte les premières places et on recommence, jusqu'à ce qu'un candidat dépasse $50$ voix. Qui est élu ?

b) **Élimination par le haut (méthode de Coombs).** Même principe, mais on élimine à chaque tour le candidat qui a le plus de **dernières** places. Qui est élu ?

c) **Duels (méthode de Condorcet).** On fait s'affronter les candidats deux par deux : dans le duel entre deux candidats, chaque élève vote pour celui des deux qu'il a classé le plus haut. Il y a dix duels. Les calculer tous, et montrer qu'un candidat les gagne tous.

d) Comparer les résultats. Que penser du vainqueur du scrutin à un tour ?

## Hints

1. Pour a) et b), refais le tableau à chaque tour. Attention : les colonnes gardent toujours le même nombre d'élèves, seuls les noms remontent.
2. Pour a), le candidat éliminé au premier tour est celui qui n'a que $3$ premières places. Dans la colonne correspondante, qui devient premier ?
3. Pour b), compte les dernières places en lisant la dernière ligne du tableau. Deux candidats seulement y apparaissent.
4. Pour c), organise-toi : pour le duel entre deux candidats $X$ et $Y$, parcours les cinq colonnes et, dans chacune, regarde simplement lequel des deux noms est écrit le plus haut. Toute la colonne vote pour lui.
5. Il y a $\binom{5}{2} = 10$ duels. Le total des victoires sur l'ensemble des duels doit donc faire $10$ : c'est une bonne vérification.

## Solution

### a) Méthode de Hare

**Tour 1.** Premières places : Amina $37$, Bruno $27$, Chloé $22$, Diego $11$, Elsa $3$. Personne n'atteint $51$. On élimine **Elsa** ($3$ premières places).

Dans la colonne de $3$ élèves, le classement était Elsa, Bruno, Chloé, Diego, Amina : une fois Elsa rayée, c'est **Bruno** qui devient premier.

**Tour 2.** Premières places : Amina $37$, Bruno $27 + 3 = 30$, Chloé $22$, Diego $11$. On élimine **Diego** ($11$).

Dans la colonne de $11$ élèves, le classement était Diego, Elsa, Chloé, Bruno, Amina. Elsa et Diego sont rayés : c'est **Chloé** qui devient première.

**Tour 3.** Premières places : Amina $37$, Bruno $30$, Chloé $22 + 11 = 33$. On élimine **Bruno** ($30$).

Il reste Amina et Chloé. Dans la colonne de $27$ élèves (Bruno, Diego, Chloé, Elsa, Amina), le premier encore en lice est Chloé. Dans celle de $3$ élèves (Elsa, Bruno, Chloé, Diego, Amina), c'est encore Chloé.

**Tour 4.** Amina $37$, Chloé $33 + 27 + 3 = 63$.

C'est **Chloé** qui est élue.

### b) Méthode de Coombs

**Tour 1.** Dernières places, lues sur la dernière ligne : Elsa dans les colonnes de $37$ et de $22$ élèves, soit $59$ ; Amina dans celles de $27$, $11$ et $3$ élèves, soit $41$. On élimine **Elsa** ($59$).

**Tour 2.** Les classements deviennent, colonne par colonne :

| Nombre d'élèves | $37$ | $27$ | $22$ | $11$ | $3$ |
|---|---|---|---|---|---|
| **1er** | Amina | Bruno | Chloé | Diego | Bruno |
| **2e** | Diego | Diego | Bruno | Chloé | Chloé |
| **3e** | Bruno | Chloé | Diego | Bruno | Diego |
| **4e** | Chloé | Amina | Amina | Amina | Amina |

Dernières places : Chloé $37$, Amina $27 + 22 + 11 + 3 = 63$. On élimine **Amina** ($63$).

**Tour 3.** Il reste Bruno, Chloé, Diego :

| Nombre d'élèves | $37$ | $27$ | $22$ | $11$ | $3$ |
|---|---|---|---|---|---|
| **1er** | Diego | Bruno | Chloé | Diego | Bruno |
| **2e** | Bruno | Diego | Bruno | Chloé | Chloé |
| **3e** | Chloé | Chloé | Diego | Bruno | Diego |

Dernières places : Chloé $37 + 27 = 64$, Diego $22 + 3 = 25$, Bruno $11$. On élimine **Chloé** ($64$).

**Tour 4.** Duel Bruno contre Diego. Colonne par colonne : $37$ pour Diego, $27$ pour Bruno, $22$ pour Bruno, $11$ pour Diego, $3$ pour Bruno. Total : Bruno $52$, Diego $48$.

C'est **Bruno** qui est élu.

### c) Les dix duels

Pour chaque duel, on parcourt les cinq colonnes et on regarde lequel des deux noms est écrit le plus haut ; toute la colonne va à celui-là.

| Duel | $37$ | $27$ | $22$ | $11$ | $3$ | Résultat |
|---|---|---|---|---|---|---|
| Amina – Bruno | A | B | B | B | B | Bruno $63$ – Amina $37$ |
| Amina – Chloé | A | C | C | C | C | Chloé $63$ – Amina $37$ |
| Amina – Diego | A | D | D | D | D | Diego $63$ – Amina $37$ |
| Amina – Elsa | A | E | A | E | E | Amina $59$ – Elsa $41$ |
| Bruno – Chloé | B | B | C | C | B | Bruno $67$ – Chloé $33$ |
| Bruno – Diego | D | B | B | D | B | Bruno $52$ – Diego $48$ |
| Bruno – Elsa | B | B | B | E | E | Bruno $86$ – Elsa $14$ |
| Chloé – Diego | D | D | C | D | C | Diego $75$ – Chloé $25$ |
| Chloé – Elsa | C | C | C | E | E | Chloé $86$ – Elsa $14$ |
| Diego – Elsa | D | D | D | D | E | Diego $97$ – Elsa $3$ |

Comptons les victoires :

$$\text{Bruno } 4, \quad \text{Diego } 3, \quad \text{Chloé } 2, \quad \text{Amina } 1, \quad \text{Elsa } 0 .$$

Le total fait bien $10$, c'est-à-dire le nombre de duels.

**Bruno gagne ses quatre duels** : contre Amina $63$ à $37$, contre Chloé $67$ à $33$, contre Diego $52$ à $48$ et contre Elsa $86$ à $14$. C'est donc lui le vainqueur au sens de Condorcet : face à n'importe quel autre candidat, une majorité d'élèves le préfère.

*(Attention à la colonne de $11$ élèves, dont le classement est Diego, Elsa, Chloé, Bruno, Amina : Elsa y passe devant Chloé et devant Bruno. C'est la seule colonne où Elsa est bien placée, et c'est ce qui fait la différence entre le duel Chloé – Elsa, gagné $86$ à $14$, et le duel Diego – Elsa, gagné $97$ à $3$.)*

### d) Bilan

Les mêmes cent bulletins donnent :

| Méthode | Élu |
|---|---|
| Scrutin à un tour | Amina |
| Méthode de Borda | Diego |
| Scrutin à deux tours | Bruno |
| Méthode de Hare | Chloé |
| Méthode de Coombs | Bruno |
| Méthode de Condorcet | Bruno |

Quatre candidats sur cinq peuvent être déclarés élus, selon le règlement choisi.

Le cas d'Amina est le plus frappant. Elle gagne le scrutin à un tour parce qu'elle a le plus de premières places. Mais les duels montrent qu'elle perd contre Bruno, contre Chloé et contre Diego, chaque fois par $63$ voix contre $37$. Autrement dit, pour chacun de ces trois candidats, près des deux tiers des élèves auraient préféré l'autre. Elle doit sa victoire au fait que ces $63$ opposants se répartissent sur quatre noms différents.

## Going further

Le magazine cite le théorème d'Arrow, démontré en 1950 : dès qu'il y a au moins trois candidats, aucune méthode de dépouillement fondée sur des classements ne peut satisfaire en même temps quelques exigences pourtant très raisonnables. Il n'existe donc pas de « bonne » méthode au sens absolu, seulement des méthodes aux défauts différents.

Deux questions pour continuer :

- La méthode de Condorcet donne ici un vainqueur clair. Mais il arrive qu'il n'y en ait aucun. Avec trois candidats et trois groupes d'électeurs, construis un exemple où le premier bat le deuxième, le deuxième bat le troisième, et le troisième bat le premier. C'est le paradoxe de Condorcet.
- Dans le tableau ci-dessus, qu'arriverait-il si les $3$ élèves de la dernière colonne changeaient d'avis et plaçaient Chloé en tête ? Regarde si le vainqueur de la méthode de Hare change, et dans quel sens.
