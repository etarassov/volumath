---
title: "Entraînement au Concours général"
group: "Groupe 2 : 1re et Terminale"
date: 2026-11-28
blocks:
  1:
    title: "Les nombres joviaux"
    exercises: ["40684"]
  2:
    title: "Garder ou changer de boîte"
    exercises: ["40884", "40886"]
---

## Overview

**Le but.** Faire connaître aux élèves la forme du Concours général, et les mettre en
confiance sur deux vrais problèmes du concours, choisis plus abordables que ceux qu'ils
trouveront le jour de l'épreuve. La fiche à distribuer est `sujet.pdf` : elle est présentée
comme un vrai sujet, avec ses consignes, ses deux problèmes, ses parties et ses questions
numérotées.

**À dire en introduction : la forme du concours.**

- L'épreuve dure cinq heures et comporte trois problèmes longs et indépendants. Depuis 2021,
  tout se traite avec le programme de spécialité mathématiques de Terminale.
- Un problème compte une dizaine à une vingtaine de questions, réparties en parties. Il
  commence souvent par une définition nouvelle (des nombres « joviaux », « pointus »,
  « pétillants », des fonctions « k-fortes ») et par quelques questions faciles pour la prendre
  en main.
- Les questions s'enchaînent : une question sert souvent à la suivante. On a le droit
  d'utiliser le résultat d'une question qu'on n'a pas su faire, à condition de le dire.
- Personne ne finit. En 2024, d'après le rapport du jury, la question 4 du premier problème
  bloquait déjà beaucoup de candidats, et le troisième problème a été peu abordé. Il faut
  choisir ses questions, et passer à un autre problème quand on bloque.
- Une réponse partielle bien rédigée compte : un exemple, un cas particulier, une piste
  justifiée. Une copie presque vide ne rapporte rien.
- Il y avait 7234 candidats en 2024, dont moins d'un tiers de filles : le jury encourage
  chaque année les lycéennes à se présenter.

**Les deux problèmes.** Ce sont deux problèmes du concours, raccourcis.

- Le problème 1 est la partie I du problème 2 du sujet 2019 (les nombres joviaux), en entier.
  C'est de l'arithmétique : fractions, nombres premiers, constructions.
- Le problème 2 reprend le problème 2 du sujet 2024 (des boîtes et un paquet de bonbons),
  parties 1, 2 et 4. La partie 3 du vrai sujet, de niveau Terminale et très difficile, est
  retirée. La partie 4 ne s'en sert pas : c'est l'occasion de montrer qu'on peut sauter une
  partie entière et traiter la suivante.

Aucun des deux ne demande d'outil de Terminale : les élèves de 1re ont tout ce qu'il faut. Il y
a plus de questions que de temps, et c'est voulu, comme au vrai concours. Dire aux élèves de
choisir l'ordre des problèmes, et de changer de problème quand ils bloquent.

**La correspondance avec ces notes.** La partie 1 de ces notes est le problème 1 du sujet, la
partie 2 est le problème 2. Le problème 2 y est coupé en deux exercices, numérotés 2 et 3 :
les questions 1 à 4 du sujet sont celles de l'exercice 2, et la question 5 du sujet est
l'exercice 3, découpée dans le sujet en trois étapes ($n = 3$, $n = 4$, puis $n$ quelconque).

**La correction au tableau.** Ne pas tout corriger. Pour chaque problème, montrer les deux ou
trois idées qui font avancer, en partant de ce que les élèves ont trouvé. Les notes de chaque
problème disent lesquelles.

## Block 1

**Les idées à montrer au tableau.**

1. **Majorer une somme de fractions** en prenant les plus petits dénominateurs permis. C'est
   ce qui règle la question 2 ($\frac{1}{2} + \frac{1}{3} < 1$, donc pas d'ordre $2$) et le
   début de la question 5 ($\frac{1}{3} + \frac{1}{4} + \frac{1}{5} < 1$, donc $a_1 = 2$).
2. **Un nombre premier n'est jamais jovial** (question 3). C'est la question la plus riche.
   On multiplie l'égalité par $p$ et par le produit $M$ des autres dénominateurs. Tous les
   termes deviennent des multiples de $p$, sauf un, qui vaut $M$. Or $M$ est un produit de
   nombres plus petits que $p$, donc il n'est pas multiple de $p$. Les élèves proposent
   souvent de « mettre au même dénominateur » : c'est la même idée, il suffit de la mener
   jusqu'au bout.
3. **Fabriquer de nouveaux nombres joviaux** (questions 6 et 7) :
   $\frac{1}{p} = \frac{1}{p + 1} + \frac{1}{p(p + 1)}$, et remplacer $\frac{1}{p}$ par une
   écriture de $\frac{1}{p}$ comme somme de fractions. À partir de $6$, on obtient $42$, puis
   $1806$.

**Ce que le jury attend et que les élèves oublient.** Les dénominateurs doivent être
**distincts et rangés**. Aux questions 6 et 7, il faut vérifier par exemple que $2 < 2a_1$, ou
que $p < p b_1$. Une construction juste mais sans cette vérification n'est pas complète.

**Pour ceux qui ont fini.** Montrer que $15$ est jovial, par exemple avec
$\frac{1}{2} + \frac{1}{3} + \frac{1}{10} + \frac{1}{15} = 1$.

## Block 2

**Les idées à montrer au tableau.**

1. **Pourquoi changer de boîte** (question 2). Beaucoup d'élèves connaissent la réponse
   $\frac{2}{3}$, mais pas la raison, et d'autres répondent $\frac{1}{2}$ « parce qu'il reste
   deux boîtes ». L'argument à écrire : en changeant, Sophie gagne **exactement quand son
   premier choix était faux**, ce qui arrive avec probabilité $\frac{2}{3}$. La question 3 est
   la même avec $n$ boîtes : $\frac{n-1}{n}$.
2. **Garder jusqu'au bout, puis changer** (question 4 b). Germain n'a jamais le droit
   d'éliminer la boîte que Sophie désigne. Si elle garde sa première boîte jusqu'au dernier
   tour, il reste à la fin cette boîte et une autre ; en changeant, elle gagne dès que son
   premier choix était faux.
3. **Un message caché dans l'élimination** (question 5, la réponse est $n \geqslant 4$). Au
   tableau, faire le cas $n = 4$ avec un tableau. Sophie désigne la boîte $1$, et Germain
   élimine au tour $2$ :

   | le paquet est dans la boîte | $1$ | $2$ | $3$ | $4$ |
   |---|---|---|---|---|
   | Germain élimine la boîte | $2$ | $3$ | $4$ | $2$ |

   Si la boîte $3$ ou la boîte $4$ disparaît, Sophie sait où est le paquet. Si c'est la boîte
   $2$, le paquet est dans la boîte $1$ ou dans la boîte $4$, donc la boîte $3$ est vide :
   Sophie la désigne, Germain ne peut plus l'éliminer, et au dernier tour la seule autre boîte
   restante est celle du paquet. Pour $n = 3$, il n'y a qu'une élimination, et elle ne peut pas
   séparer les trois cas.

**Ce qu'en dit le jury.** En 2024, la première partie (trois boîtes) était bien connue des
candidats, la suite beaucoup moins, et la partie retirée ici n'a été traitée que dans de très
rares copies. La question 5 est la quatrième et dernière partie du vrai sujet, qui venait
après celle-là : un élève qui la résout peut en être fier.
