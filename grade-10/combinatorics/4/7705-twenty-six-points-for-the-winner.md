---
id: "7705"
title: "Vingt-six points pour le vainqueur"
grade: 10
theme: combinatorics
difficulty: 4
duration_min: 45
tags: [tournoi, comptage, encadrement, construction]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Montpellier 2014, Coupe Animath du 3 juin 2014"
  reference: "stage_ete_2014.pdf, « Coupe Animath et évaluation initiale », énoncés lycée, exercice 5"
  url: "http://maths-olympiques.fr/?page_id=43"
  original_language: "fr"
  local_copy: "sources/originals/pofm/stage_ete_2014.pdf"
---

## Statement

Dans un tournoi de football, chaque équipe rencontre exactement deux fois chacune des autres. Il n'y a jamais de match nul : une victoire rapporte $2$ points, une défaite $0$ point.

À la fin du tournoi, on constate ceci :

- une seule équipe est en tête, avec $26$ points ;
- deux équipes sont dernières à égalité, avec $20$ points chacune.

Toutes les autres équipes ont donc un nombre de points strictement compris entre $20$ et $26$.

1. Combien y a-t-il d'équipes ?
2. Donner un exemple de tournoi où ces résultats se produisent vraiment.

## Hints

1. Compte en victoires plutôt qu'en points : chaque victoire vaut $2$ points, donc $26$ points, cela fait combien de victoires ?
2. Combien de matchs se jouent en tout s'il y a $n$ équipes ? Et combien de victoires sont distribuées en tout ?
3. Note $a$ le nombre d'équipes à $11$ victoires et $b$ le nombre d'équipes à $12$ victoires. Écris deux fois le nombre total de victoires : une fois comme $n(n-1)$, une fois en additionnant les victoires équipe par équipe.
4. Tu obtiens une relation entre $b$ et $n$. Or $b$ est compris entre $0$ et $n$ : c'est ce qui coince $n$.
5. Pour la construction, imagine que chaque paire d'équipes joue un match chez l'une et un match chez l'autre, et fais gagner l'équipe qui reçoit.

## Solution

**Il y a $12$ équipes.**

**On compte en victoires.** Chaque victoire rapporte $2$ points et une défaite $0$, donc le nombre de points d'une équipe est toujours le double de son nombre de victoires. Ainsi :

- l'équipe de tête a $13$ victoires ;
- les deux dernières ont $10$ victoires chacune ;
- chaque autre équipe a un nombre de victoires strictement compris entre $10$ et $13$, c'est-à-dire $11$ ou $12$.

**Le nombre total de victoires.** Notons $n$ le nombre d'équipes. Chaque paire d'équipes joue $2$ matchs, et il y a $\dfrac{n(n-1)}{2}$ paires, donc il se joue

$$2 \times \frac{n(n-1)}{2} = n(n-1) \quad \text{matchs}.$$

Chaque match donne exactement une victoire, donc il y a en tout $n(n-1)$ victoires distribuées.

**On recompte les victoires équipe par équipe.** Notons $a$ le nombre d'équipes à $11$ victoires et $b$ le nombre d'équipes à $12$ victoires. Les équipes se répartissent en : la première, les deux dernières, les $a$ équipes à $11$ victoires et les $b$ équipes à $12$ victoires. Donc

$$n = 1 + 2 + a + b = 3 + a + b .$$

Le total des victoires vaut alors

$$n(n-1) = 13 + 2 \times 10 + 11a + 12b = 33 + 11a + 12b .$$

**L'astuce de calcul.** Réécrivons le membre de droite en faisant apparaître $n$ :

$$33 + 11a + 12b = 11 \times (3 + a + b) + b = 11n + b .$$

On obtient donc

$$n(n-1) = 11n + b, \qquad \text{c'est-à-dire} \qquad b = n(n-1) - 11n = n(n-12) .$$

**On coince $n$.** Le nombre $b$ compte des équipes, donc $0 \leqslant b$, et comme il y a au moins trois autres équipes que celles-là, $b < n$. Ainsi

$$0 \leqslant n(n-12) < n .$$

En divisant par $n$, qui est strictement positif :

$$0 \leqslant n - 12 < 1 .$$

Le seul entier qui vérifie cela est $n - 12 = 0$, donc $\boxed{n = 12}$.

On en déduit $b = 0$ et $a = n - 3 = 9$ : neuf équipes ont $11$ victoires, soit $22$ points.

**Un tournoi qui convient.** Il reste à montrer qu'un tel tournoi existe vraiment. Numérotons les équipes de $1$ à $12$ et imaginons que chaque paire joue un match chez l'une et un match chez l'autre : on dira qu'une équipe joue « à domicile » ou « à l'extérieur ».

Décidons des résultats ainsi :

- quand deux équipes parmi $2, 3, \ldots, 12$ se rencontrent, **celle qui reçoit gagne** ;
- l'équipe $1$ gagne ses **quatre** matchs contre les équipes $2$ et $3$ ;
- contre chacune des équipes $4, 5, \ldots, 12$, l'équipe $1$ gagne à domicile et perd à l'extérieur.

Comptons les victoires :

- **Équipe 1** : $2 + 2 = 4$ victoires contre les équipes $2$ et $3$, puis $1$ victoire contre chacune des $9$ équipes $4, \ldots, 12$. Total : $4 + 9 = 13$ victoires, soit $26$ points.
- **Équipes 2 et 3** : elles perdent leurs quatre matchs contre l'équipe $1$. Contre les dix autres équipes, elles gagnent à domicile et perdent à l'extérieur : $10$ victoires. Total : $10$ victoires, soit $20$ points.
- **Équipes 4 à 12** : contre l'équipe $1$, elles gagnent à domicile, soit $1$ victoire. Contre les dix autres équipes de $2$ à $12$, elles gagnent à domicile : $10$ victoires. Total : $11$ victoires, soit $22$ points.

Vérification du total : $13 + 10 + 10 + 9 \times 11 = 132 = 12 \times 11$. Tout colle.

Le classement est donc : une équipe à $26$ points, neuf équipes à $22$ points, deux équipes à $20$ points. C'est bien la situation décrite.

**Conclusion : il y a $12$ équipes, et le tournoi décrit ci-dessus réalise ces résultats.**
