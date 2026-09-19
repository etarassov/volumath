---
id: "0233"
title: "Deux points et demi, est-ce possible ?"
grade: 8
theme: logic-reasoning
difficulty: 4
duration_min: 30
tags: [tournoi, echecs, points, deduction, raisonnement-par-labsurde]
adapted_from: null
created: 2026-09-18
source:
  name: "Малый мехмат МГУ, пособие для преподавателей"
  reference: "Ast2017b.pdf, листок 29 «Турниры», задача 5, с. 88"
  url: "https://mmmf.msu.ru/for_schools/"
  original_language: "ru"
  local_copy: "sources/originals/mmmf-msu/Ast2017b.pdf"
---

## Statement

Victor, Basile, Bruno et Blaise ont disputé un tournoi d'échecs : chacun a joué exactement une partie contre chacun des trois autres.

Une partie gagnée rapporte $1$ point à son vainqueur, une partie nulle rapporte un demi-point à chacun des deux joueurs, et une partie perdue ne rapporte rien.

À la fin du tournoi, on sait que :

- quatre parties se sont terminées par une partie nulle ;
- Victor a marqué un demi-point en tout.

Bruno affirme qu'il a marqué deux points et demi dans ce tournoi. Est-ce possible ?

## Hints

1. Combien de parties ont été jouées en tout ? Et combien chaque joueur en a-t-il disputé ?
2. Quatre parties ont été nulles. Combien de parties ont donc eu un vainqueur et un perdant ?
3. Victor a joué trois parties et n'a marqué qu'un demi-point. Quels ont été ses trois résultats ? Montre qu'il n'y a qu'une seule possibilité.
4. Les défaites de Victor sont des parties qui ont eu un vainqueur, et le tournoi n'en compte pas beaucoup. Que peux-tu alors dire de **toutes** les autres parties ?
5. Une fois tout le tournoi reconstitué, calcule le meilleur score possible pour un joueur autre que Victor, et compare-le à deux points et demi.

## Solution

**Étape 1. Compter les parties.**

Chaque paire de joueurs se rencontre une fois. Avec quatre joueurs, il y a

$$\frac{4 \times 3}{2} = 6 \text{ parties},$$

et chaque joueur en dispute trois (une contre chacun des trois autres).

**Étape 2. Combien de parties ont eu un vainqueur ?**

Il y a $6$ parties, dont $4$ nulles. Il reste donc exactement

$$6 - 4 = 2 \text{ parties décisives},$$

c'est-à-dire deux parties seulement où quelqu'un a gagné et quelqu'un a perdu.

**Étape 3. Reconstituer les trois parties de Victor.**

Victor a joué trois parties et a marqué un demi-point. Chaque partie lui rapportait $1$, un demi-point, ou rien.

- S'il avait gagné une partie, il aurait déjà au moins $1$ point : trop.
- S'il avait fait deux parties nulles, il aurait au moins $1$ point : trop encore.

Il ne reste qu'une possibilité : **Victor a fait une partie nulle et a perdu les deux autres.**

**Étape 4. Toutes les autres parties sont nulles.**

Les deux défaites de Victor sont des parties décisives. Or le tournoi n'en compte que deux au total. Ces deux-là sont donc **les** deux parties décisives du tournoi, et toutes les autres parties sont nulles.

En particulier, les trois parties que Basile, Bruno et Blaise ont jouées entre eux sont toutes nulles.

**Étape 5. Le meilleur score possible.**

Prenons l'un des trois autres joueurs, par exemple Bruno. Ses trois parties sont :

- deux parties contre les deux autres, toutes deux nulles : cela lui rapporte $\tfrac12 + \tfrac12 = 1$ point ;
- une partie contre Victor : au mieux une victoire, soit $1$ point.

Son total est donc au maximum

$$1 + 1 = 2 \text{ points}.$$

**Conclusion.**

Aucun joueur autre que Victor ne peut dépasser $2$ points. Bruno ne peut donc pas avoir marqué deux points et demi : **ce n'est pas possible**, il s'est trompé.

## Going further

1. Montrer que les quatre scores du tournoi sont forcément un demi-point, un point et demi, deux points et deux points. Peut-on savoir avec certitude qui a marqué un point et demi ?
2. Vérifier que la somme des quatre scores vaut $6$. Pourquoi cette somme est-elle égale au nombre de parties, quels que soient les résultats ?
3. Si Bruno avait annoncé $2$ points, sa déclaration aurait-elle été possible ? Et s'il avait annoncé un point et demi ?
