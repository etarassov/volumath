---
id: "40764"
title: "On garde la boule du milieu : petits cas, extrêmes et symétrie"
grade: 11
theme: probability-statistics
difficulty: 3
duration_min: 45
tags: [probabilite, variable-aleatoire, loi-de-probabilite, probabilite-conditionnelle, esperance, symetrie, petits-cas, telescopage]
adapted_from: null
see_also: ["40765", "40766"]
same_as: []
created: 2026-11-27
source:
  name: "Concours général des lycées 2021, mathématiques"
  reference: "cg-2021-s-sujet.pdf, problème 2 « La loi du milieu », parties I et II, questions 1 à 6"
  url: "https://www.freemaths.fr/annales-composition-mathematiques-concours-general/concours-general-mathematiques-sujet-serie-s-2021.pdf"
  original_language: "fr"
  local_copy: "sources/originals/concours-general/cg-2021-s-sujet.pdf"
---

## Statement

Soit $n$ un entier naturel non nul. Dans un sac, on place $2n + 1$ boules indiscernables au toucher, numérotées $0, 1, 2, \ldots, 2n$. On vide peu à peu le sac selon le protocole suivant :

- on tire trois boules simultanément, au hasard ;
- si les trois boules tirées portent les numéros $a$, $b$ et $c$, avec $a < b < c$, on élimine les boules $a$ et $c$ et on remet dans le sac la boule $b$ ;
- on recommence.

Chaque tirage fait perdre deux boules au sac. Au bout de $n$ tirages, il ne reste qu'une seule boule, et on note $D_n$ son numéro.

1. Déterminer la loi de la variable aléatoire $D_1$.
2. Déterminer la loi de la variable aléatoire $D_2$.
3. Déterminer la probabilité $P(D_n = 0)$.
4. Déterminer la probabilité $P(D_n = 1)$ en fonction de $n$.
5. Soit $i$ un entier tel que $0 \leqslant i \leqslant 2n$. Expliquer pourquoi $P(D_n = i) = P(D_n = 2n - i)$.
6. Calculer l'espérance de $D_n$ en fonction de $n$.

## Hints

1. **Question 2.** Il y a $10$ façons de choisir trois boules parmi cinq. Pour chacune, une fois le premier tirage fait, le second tirage est forcé : il prend les trois boules qui restent.
2. **Question 3.** Au dernier tirage, quelle boule garde-t-on ? Peut-elle être la boule $0$ ?
3. **Question 4.** Pour que la boule $1$ reste à la fin, quelles boules doivent se trouver dans le sac au moment du dernier tirage ?
4. **Question 4.** Que devient la boule $1$ si elle est tirée sans la boule $0$ ? Et si elle est tirée avec la boule $0$ ? En déduire que $D_n = 1$ exactement quand ni la boule $0$ ni la boule $1$ n'est tirée lors des $n - 1$ premiers tirages.
5. **Question 4.** Quand le sac contient $m$ boules, quelle est la probabilité qu'un tirage ne contienne ni la boule $0$ ni la boule $1$ ? On peut imaginer que les trois boules sont tirées l'une après l'autre.
6. **Question 5.** Que se passe-t-il si l'on renumérote chaque boule $i$ en $2n - i$ ?

## Solution

**1.** Pour $n = 1$, le sac contient les boules $0$, $1$, $2$. Le seul tirage les prend toutes les trois et garde celle du milieu. Donc $D_1 = 1$ avec probabilité $1$.

**2.** Pour $n = 2$, le sac contient les boules $0$ à $4$. Le premier tirage est l'un des $10$ choix de trois boules parmi cinq, tous équiprobables. Il reste ensuite trois boules : la boule du milieu du premier tirage et les deux boules non tirées. Le second tirage les prend toutes et garde celle du milieu.

| Premier tirage | Boules restantes | $D_2$ |
|---|---|---|
| $0, 1, 2$ | $1, 3, 4$ | $3$ |
| $0, 1, 3$ | $1, 2, 4$ | $2$ |
| $0, 1, 4$ | $1, 2, 3$ | $2$ |
| $0, 2, 3$ | $1, 2, 4$ | $2$ |
| $0, 2, 4$ | $1, 2, 3$ | $2$ |
| $0, 3, 4$ | $1, 2, 3$ | $2$ |
| $1, 2, 3$ | $0, 2, 4$ | $2$ |
| $1, 2, 4$ | $0, 2, 3$ | $2$ |
| $1, 3, 4$ | $0, 2, 3$ | $2$ |
| $2, 3, 4$ | $0, 1, 3$ | $1$ |

Donc $P(D_2 = 1) = \frac{1}{10}$, $P(D_2 = 2) = \frac{8}{10} = \frac{4}{5}$, $P(D_2 = 3) = \frac{1}{10}$, et $P(D_2 = 0) = P(D_2 = 4) = 0$.

**3.** La dernière boule est celle que l'on garde au dernier tirage : c'est la boule du milieu de trois boules. La boule $0$ est plus petite que toutes les autres, elle n'est jamais la boule du milieu. Donc $P(D_n = 0) = 0$.

**4.** *Quand la boule $1$ reste-t-elle à la fin ?* Au dernier tirage, la boule $1$ doit être celle du milieu, donc il faut qu'une boule plus petite soit tirée avec elle : la boule $0$. Ainsi, les deux boules $0$ et $1$ sont encore dans le sac au moment du dernier tirage.

Or la boule $0$ est éliminée dès qu'elle est tirée. La boule $1$, si elle est tirée sans la boule $0$, est la plus petite des trois et elle est éliminée ; si elle est tirée avec la boule $0$, la boule $0$ disparaît. Dans les deux cas, on ne peut plus avoir $0$ et $1$ ensemble au dernier tirage. Donc $D_n = 1$ si et seulement si ni la boule $0$ ni la boule $1$ n'est tirée lors des $n - 1$ premiers tirages. (Dans ce cas, le dernier tirage prend $0$, $1$ et une boule plus grande, et garde bien la boule $1$.)

*Un tirage qui évite $0$ et $1$.* Supposons que le sac contienne $m$ boules, dont $0$ et $1$. Tirer trois boules simultanément revient à les tirer l'une après l'autre sans remise. La probabilité qu'aucune ne soit $0$ ou $1$ est

$$\frac{m-2}{m} \times \frac{m-3}{m-1} \times \frac{m-4}{m-2} = \frac{(m-3)(m-4)}{m(m-1)}.$$

*Le produit.* Lors des $n - 1$ premiers tirages, le sac contient successivement $m = 2n+1, 2n-1, \ldots, 5$ boules. En multipliant les probabilités conditionnelles (chaque tirage évite $0$ et $1$ sachant que les précédents l'ont fait),

$$P(D_n = 1) = \frac{(2n-2)(2n-3)}{(2n+1)(2n)} \times \frac{(2n-4)(2n-5)}{(2n-1)(2n-2)} \times \cdots \times \frac{2 \times 1}{5 \times 4}.$$

Au numérateur on trouve tous les entiers de $1$ à $2n - 2$ ; au dénominateur, tous les entiers de $4$ à $2n + 1$. Après simplification, il reste

$$P(D_n = 1) = \frac{1 \times 2 \times 3}{(2n-1)(2n)(2n+1)} = \frac{3}{n(2n-1)(2n+1)}.$$

Pour $n = 1$, il n'y a aucun tirage avant le dernier et la formule donne bien $1$ ; pour $n = 2$, elle donne $\frac{1}{10}$, comme à la question 2.

**5.** Renumérotons chaque boule $i$ en $2n - i$. L'ordre des numéros est renversé, donc la boule du milieu de trois boules reste la boule du milieu : la règle « on garde la boule du milieu » ne change pas, et les tirages sont toujours faits au hasard. L'expérience avec les nouveaux numéros est donc exactement la même expérience. La boule restante porte l'ancien numéro $D_n$ et le nouveau numéro $2n - D_n$ : les variables $D_n$ et $2n - D_n$ ont la même loi. Ainsi $P(D_n = i) = P(2n - D_n = i) = P(D_n = 2n - i)$.

**6.** En utilisant la question 5 puis en changeant l'indice $i$ en $2n - i$ :

$$E(D_n) = \sum_{i=0}^{2n} i\, P(D_n = i) = \sum_{i=0}^{2n} i\, P(D_n = 2n - i) = \sum_{j=0}^{2n} (2n - j)\, P(D_n = j) = 2n - E(D_n).$$

Donc $E(D_n) = n$.

**Bilan.** La dernière boule n'est jamais la boule $0$ ni la boule $2n$ ; c'est la boule $1$ avec probabilité $\frac{3}{n(2n-1)(2n+1)}$, et c'est la boule $2n - 1$ avec la même probabilité. La loi de $D_n$ est symétrique par rapport à $n$, et son espérance vaut $n$.

## Going further

- Pour $n = 3$, on trouve $P(D_3 = 3) = \frac{109}{175}$, $P(D_3 = 2) = P(D_3 = 4) = \frac{4}{25}$ et $P(D_3 = 1) = P(D_3 = 5) = \frac{1}{35}$. Pouvez-vous vérifier $P(D_3 = 1)$ avec la formule de la question 4 ?
- Dans la suite du sujet, on montrait que la boule du milieu, la boule $n$, est toujours la plus probable (exercice 40766), mais que sa probabilité tend vers $0$ quand $n$ grandit (exercice 40765).
