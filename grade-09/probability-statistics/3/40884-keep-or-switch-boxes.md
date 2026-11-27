---
id: "40884"
title: "Garder ou changer de boîte"
grade: 9
theme: probability-statistics
difficulty: 3
duration_min: 40
tags: [probabilite, arbre, strategie, jeu, equiprobabilite, evenement-contraire]
adapted_from: null
see_also: ["40885", "40886", "1014"]
same_as: []
created: 2026-11-27
source:
  name: "Concours général des lycées 2024, mathématiques"
  reference: "cg-2024-s-sujet.pdf, problème 2 « Bonbons cachés », partie 1 « Sophie et Germain testent trois boîtes » et partie 2 « Une stratégie pour Sophie », questions 1 à 4 ; on précise que Sophie choisit au hasard au premier tour, ce que le sujet laisse implicite"
  url: "https://www.freemaths.fr/annales-composition-mathematiques-concours-general/concours-general-mathematiques-sujet-serie-s-2024.pdf"
  original_language: "fr"
  local_copy: "sources/originals/concours-general/cg-2024-s-sujet.pdf"
---

## Statement

Germain dispose de boîtes opaques. Il cache un paquet de bonbons dans l'une d'elles et laisse les autres vides. Sophie, qui ne sait pas où est le paquet, essaie de le gagner. Dans tous les jeux ci-dessous, quand Sophie fait son tout premier choix, elle n'a aucune information et choisit une boîte au hasard.

**Avec trois boîtes.**

1. Sophie choisit une des trois boîtes et l'ouvre. Avec quelle probabilité trouve-t-elle le paquet ?
2. Germain cache à nouveau le paquet dans l'une des trois boîtes, puis propose un jeu en deux tours.
   - Au premier tour, Sophie désigne une boîte à Germain, sans l'ouvrir.
   - Au second tour, Germain, qui sait où est le paquet, élimine une boîte **vide** parmi les deux boîtes que Sophie n'a pas désignées. Il laisse ensuite à Sophie la possibilité de changer son choix pour l'autre boîte restante.

   Sophie ouvre alors la boîte qu'elle a finalement choisie.

   a) Si Sophie garde son premier choix, quelle est sa probabilité de gagner ?

   b) Si elle change de boîte, quelle est sa probabilité de gagner ?

   c) Quelle est la meilleure stratégie : garder ou changer ?

**Avec $n$ boîtes.** Soit maintenant $n$ un entier, $n \geqslant 3$. Germain dispose de $n$ boîtes numérotées de $1$ à $n$ et cache le paquet dans l'une d'elles.

3. Premier jeu, en deux tours.
   - Au premier tour, Sophie désigne une boîte, sans l'ouvrir.
   - Au second tour, Germain élimine $n - 2$ boîtes vides parmi les $n - 1$ boîtes que Sophie n'a pas désignées. Il reste donc deux boîtes, et Sophie peut changer son choix.

   a) Avec quelle probabilité la boîte désignée au premier tour est-elle la bonne ?

   b) Au second tour, Sophie a-t-elle intérêt à garder son choix ou à le changer ?

4. Second jeu, en $n - 1$ tours.
   - Au premier tour, Sophie désigne une boîte, sans l'ouvrir.
   - À chacun des tours suivants (tours numéro $2, 3, \ldots, n-1$), Germain élimine, comme il veut, **une** boîte vide, non encore éliminée et différente de celle que Sophie désigne à ce moment-là. Puis Sophie peut changer son choix pour n'importe quelle boîte non éliminée.

   À la fin du tour $n - 1$, Sophie ouvre la boîte qu'elle désigne.

   a) Si Sophie garde son premier choix pendant tout le jeu, quelle est sa probabilité de gagner ?

   b) Comment peut-elle jouer pour être sûre de gagner avec une probabilité au moins égale à $\frac{n-1}{n}$ ?

## Hints

1. **Question 2.** Faites un arbre dont la première étape est : « la boîte désignée au premier tour contient le paquet » ou « elle est vide ». Quelles sont les probabilités de ces deux branches ?
2. **Question 2.** Dans la branche où la boîte désignée est vide, Germain a-t-il le choix de la boîte qu'il élimine ? Que contient alors la boîte qui reste ?
3. **Question 3.** C'est le même raisonnement qu'à la question 2, avec $n$ boîtes au lieu de trois.
4. **Question 4.** Germain n'a jamais le droit d'éliminer la boîte que désigne Sophie. Combien de boîtes reste-t-il à la fin du jeu ?
5. **Question 4.** Et si Sophie attendait le tout dernier tour pour changer d'avis ?

## Solution

**1.** Sophie choisit au hasard une boîte parmi trois, et une seule contient le paquet. Sa probabilité de gagner est $\frac{1}{3}$.

**2.** Au premier tour, la boîte désignée contient le paquet avec probabilité $\frac{1}{3}$ (question 1), et elle est vide avec probabilité $\frac{2}{3}$.

a) Si Sophie garde son choix, elle gagne exactement quand sa première boîte était la bonne. Sa probabilité de gagner est $\frac{1}{3}$.

b) Supposons que Sophie change de boîte. Regardons les deux cas.

- Sa première boîte contient le paquet. Les deux autres sont vides, Germain en élimine une, et Sophie passe à l'autre, vide. Elle perd.
- Sa première boîte est vide. Parmi les deux autres, l'une contient le paquet et l'autre est vide. Germain doit éliminer une boîte vide : il n'a pas le choix, il élimine la boîte vide. La boîte qui reste contient donc le paquet, et Sophie, en changeant, gagne.

Elle gagne donc exactement quand sa première boîte était vide. Sa probabilité de gagner est $\frac{2}{3}$.

c) Comme $\frac{2}{3} > \frac{1}{3}$, la meilleure stratégie est de **changer** de boîte.

**3.** a) Sophie choisit au hasard une boîte parmi $n$, dont une seule contient le paquet : la probabilité est $\frac{1}{n}$.

b) Après le second tour, il reste deux boîtes : celle de Sophie et une autre.

- Si la boîte de Sophie contient le paquet (probabilité $\frac{1}{n}$), changer fait perdre.
- Si elle est vide (probabilité $\frac{n-1}{n}$), le paquet est dans l'une des $n - 1$ autres boîtes, et Germain, qui n'élimine que des boîtes vides, ne l'élimine pas. La boîte qui reste est donc la bonne, et changer fait gagner.

En gardant, Sophie gagne avec probabilité $\frac{1}{n}$. En changeant, avec probabilité $\frac{n-1}{n}$. Comme $n \geqslant 3$, on a $n - 1 > 1$, donc $\frac{n-1}{n} > \frac{1}{n}$ : Sophie a intérêt à **changer**.

**4.** a) Germain n'élimine jamais la boîte que désigne Sophie. Si elle garde sa première boîte du début à la fin, cette boîte n'est jamais éliminée, et Sophie gagne exactement quand elle contenait le paquet. Sa probabilité de gagner est $\frac{1}{n}$.

b) Germain élimine une boîte à chacun des tours $2, 3, \ldots, n-1$, soit $n - 2$ boîtes en tout. À la fin du dernier tour, après l'élimination, il reste donc exactement $2$ boîtes.

Voici une stratégie : Sophie garde sa première boîte pendant les tours $2, 3, \ldots, n - 2$ ; au tour $n - 1$, après la dernière élimination, elle change pour l'autre boîte restante.

Sa première boîte n'a jamais été éliminée, puisqu'elle la désignait à chaque tour. Les deux boîtes restantes sont donc sa première boîte et une autre. Le paquet, lui, n'est jamais éliminé.

- Si sa première boîte contenait le paquet (probabilité $\frac{1}{n}$), elle perd en changeant.
- Sinon (probabilité $\frac{n-1}{n}$), le paquet est dans l'autre boîte restante, et elle gagne.

Avec cette stratégie, et quoi que fasse Germain, Sophie gagne avec probabilité $\frac{n-1}{n}$.

**Bilan.** Quand l'adversaire sait où est le paquet et n'a le droit d'éliminer que des boîtes vides, ses éliminations donnent de l'information. Garder sa boîte, c'est gagner seulement si le premier choix, fait au hasard, était le bon ; changer au dernier moment, c'est gagner dans tous les autres cas. Avec trois boîtes, c'est le célèbre problème de Monty Hall : changer double les chances.

## Going further

- Dans la suite du sujet, on montrait qu'on ne peut pas faire mieux que $\frac{n-1}{n}$ dans le second jeu, si Germain choisit au hasard la boîte du paquet et les boîtes qu'il élimine. Avec $n = 4$, essayez de vous en convaincre en simulant le jeu avec des cartes.
- Une variante qui trompe beaucoup de monde : à la question 2, si Germain ne savait pas où est le paquet et éliminait une des deux autres boîtes au hasard, en tombant par chance sur une boîte vide, changer ne servirait plus à rien. Pourquoi ?
- Pour le meneur de club : le rapport du jury note que cette première partie était bien connue des candidats, alors que la suite du problème a été très peu abordée.
