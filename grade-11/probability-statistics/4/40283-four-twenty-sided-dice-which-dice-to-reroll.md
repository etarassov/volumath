---
id: "40283"
title: "Quatre dés à vingt faces : quels dés relancer ?"
grade: 11
theme: probability-statistics
difficulty: 4
duration_min: 45
tags: [probabilite, des, esperance, variable-aleatoire, evenement-contraire, strategie, optimisation]
adapted_from: null
see_also: ["40282"]
same_as: []
created: 2026-11-27
source:
  name: "Concours général des lycées 2009, mathématiques, série S"
  reference: "cg-2009-s-sujet.pdf, exercice II « Jouons aux dés », questions 5 et 6. L'énoncé précise le critère de choix (rendre l'espérance du score final la plus grande possible), que le sujet laissait implicite."
  url: "https://www.freemaths.fr/annales-composition-mathematiques-concours-general/concours-general-mathematiques-sujet-serie-s-2009.pdf"
  original_language: "fr"
  local_copy: "sources/originals/concours-general/cg-2009-s-sujet.pdf"
---

## Statement

Je joue avec $4$ dés à $20$ faces, numérotées de $1$ à $20$. Quand on lance un dé, chaque face apparaît avec la même probabilité $\frac{1}{20}$, et les dés sont indépendants.

Quand, parmi les quatre dés, un nombre apparaît au moins deux fois, je marque le nombre de points correspondant à ce nombre. Par exemple, 3 - 4 - 12 - 16 ne rapporte rien, 2 - 8 - 11 - 11 rapporte $11$ points, 4 - 9 - 9 - 9 rapporte $9$ points, 7 - 7 - 14 - 14 rapporte $7 + 14 = 21$ points, et 2 - 2 - 2 - 2 rapporte $2$ points.

On admet que, quand on lance les quatre dés, l'espérance du nombre de points marqués vaut $\frac{47\,103}{16\,000} \approx \text{2,94}$.

Désormais, après avoir lancé les quatre dés, j'ai le droit de relancer une fois entre $0$ et $4$ dés de mon choix. Mon score est celui des quatre dés après cette relance. Je choisis les dés à relancer de façon à rendre l'espérance de mon score final la plus grande possible. On pourra utiliser le fait que l'espérance d'une somme de variables aléatoires est la somme de leurs espérances.

1. J'ai obtenu 11 - 7 - 2 - 2. J'hésite entre tout relancer, garder seulement le $11$ et relancer les trois autres dés, et garder seulement les deux $2$ et relancer les deux autres dés. Que dois-je faire ?
2. Cette fois, j'ai obtenu quatre nombres différents $a_1 > a_2 > a_3 > a_4$. Quels dés dois-je relancer ?

## Hints

1. **Question 1.** Si je garde les deux $2$, j'ai déjà $2$ points assurés. Quels points supplémentaires les deux dés relancés peuvent-ils apporter ?
2. **Question 1.** Si je garde le $11$ et relance trois dés, le $11$ rapporte $11$ points dès qu'au moins un des trois nouveaux dés montre $11$. Un autre nombre $b$ rapporte $b$ points quand au moins deux des trois nouveaux dés montrent $b$.
3. **Question 1.** Comme dans le calcul de l'espérance sans relance, écrire le score comme une somme : pour chaque nombre $b$, une variable qui vaut $b$ si $b$ rapporte des points et $0$ sinon.
4. **Question 2.** Il ne sert à rien de garder un petit nombre quand on peut garder un plus grand à la place. Il reste donc à comparer cinq choix : ne rien garder, garder $a_1$, garder $a_1$ et $a_2$, garder $a_1$, $a_2$ et $a_3$, tout garder.
5. **Question 2.** Calculer l'espérance quand on garde un seul dé de valeur $v$, en fonction de $v$, puis quand on en garde deux de valeurs $v$ et $w$, puis trois.
6. **Question 2.** Garder trois dés rapporte au plus $\frac{20 + 19 + 18}{20}$ en moyenne. Comparer avec $\text{2,94}$.

## Solution

Dans tout ce qui suit, on calcule l'espérance du score final pour chaque choix possible, et on garde le choix qui donne la plus grande.

*Deux probabilités utiles.* Pour un nombre $b$ donné :

- quand on lance $3$ dés, la probabilité qu'au moins un dé montre $b$ est $1 - \left(\frac{19}{20}\right)^3 = 1 - \frac{6859}{8000} = \frac{1141}{8000}$ ; la probabilité qu'au moins deux dés montrent $b$ est $\frac{3 \times 19 + 1}{8000} = \frac{58}{8000}$ (exactement deux : $3$ choix des deux dés et $19$ valeurs pour le troisième ; ou bien les trois) ;
- quand on lance $2$ dés, la probabilité qu'au moins un dé montre $b$ est $1 - \left(\frac{19}{20}\right)^2 = \frac{39}{400}$, et la probabilité que les deux montrent $b$ est $\frac{1}{400}$ ;
- quand on lance $1$ dé, la probabilité qu'il montre $b$ est $\frac{1}{20}$.

*La méthode.* Le score final est la somme, sur tous les nombres $b$ de $1$ à $20$, des points rapportés par $b$ ($b$ points ou rien). Son espérance est donc la somme, pour $b$ de $1$ à $20$, de $b$ fois la probabilité que $b$ rapporte des points.

**1.** *Tout relancer.* L'espérance vaut $\frac{47\,103}{16\,000} \approx \text{2,944}$.

*Garder le $11$ et relancer trois dés.* Le $11$ rapporte $11$ points si au moins un des trois nouveaux dés montre $11$. Un nombre $b \neq 11$ rapporte $b$ points si au moins deux des trois nouveaux dés montrent $b$. La somme des nombres $b \neq 11$ vaut $210 - 11 = 199$. L'espérance vaut
$$11 \times \frac{1141}{8000} + 199 \times \frac{58}{8000} = \frac{12\,551 + 11\,542}{8000} = \frac{24\,093}{8000} \approx \text{3,012}.$$

*Garder les deux $2$ et relancer deux dés.* Le $2$ rapporte toujours ses $2$ points, et un nouveau $2$ n'ajoute rien. Un nombre $b \neq 2$ rapporte $b$ points si les deux nouveaux dés montrent $b$. La somme des $b \neq 2$ vaut $208$. L'espérance vaut
$$2 + 208 \times \frac{1}{400} = \text{2,52}.$$

**Conclusion :** il faut garder le $11$ et relancer les trois autres dés : environ $\text{3,01}$ points en moyenne, contre $\text{2,94}$ en relançant tout et $\text{2,52}$ en gardant les deux $2$.

**2.** Les quatre nombres sont différents, donc je ne marque rien pour l'instant. Comparons les choix selon le nombre de dés gardés.

*Aucun dé gardé :* $E_0 = \frac{47\,103}{16\,000}$.

*Un dé gardé, de valeur $v$ :* $v$ rapporte des points si l'un au moins des trois nouveaux dés montre $v$, et chaque autre $b$ si au moins deux des nouveaux dés montrent $b$ :
$$E_1(v) = v \times \frac{1141}{8000} + (210 - v) \times \frac{58}{8000} = \frac{12\,180 + 1083\,v}{8000}.$$
Elle augmente avec $v$ : le meilleur dé à garder seul est $a_1$.

*Deux dés gardés, de valeurs $v \neq w$ :* $v$ et $w$ rapportent des points si au moins un des deux nouveaux dés les montre, et chaque autre $b$ si les deux nouveaux dés montrent $b$ :
$$E_2(v, w) = (v + w) \times \frac{39}{400} + (210 - v - w) \times \frac{1}{400} = \frac{210 + 38\,(v + w)}{400}.$$
Elle augmente avec $v + w$ : le meilleur choix est de garder $a_1$ et $a_2$.

*Trois dés gardés, de valeurs $u$, $v$, $w$ différentes :* seul l'un d'eux peut former une paire avec le dé relancé, donc $E_3 = \frac{u + v + w}{20}$, au mieux $\frac{a_1 + a_2 + a_3}{20}$.

*Quatre dés gardés :* le score est $0$.

*Comparaisons.* On écrit tout sur $16\,000$ :
$$E_0 = \frac{47\,103}{16\,000}, \quad E_1(a_1) = \frac{24\,360 + 2166\,a_1}{16\,000}, \quad E_2(a_1, a_2) = \frac{8400 + 1520\,(a_1 + a_2)}{16\,000}.$$

- *Trois dés gardés, c'est toujours moins bien que tout relancer :* $a_1 + a_2 + a_3 \leq 20 + 19 + 18 = 57$, donc $E_3 \leq \frac{57}{20} = \text{2,85} < \text{2,94} \approx E_0$.
- *Deux dés gardés, ce n'est jamais mieux qu'un seul.* On a
  $$16\,000 \times \left(E_1(a_1) - E_2(a_1, a_2)\right) = 15\,960 + 646\,a_1 - 1520\,a_2 .$$
  Comme $a_2 \leq a_1 - 1$, cette quantité est au moins $15\,960 + 646\,a_1 - 1520\,a_1 + 1520 = 874\,(20 - a_1) \geq 0$. Elle est nulle seulement si $a_1 = 20$ et $a_2 = 19$.
- *Garder $a_1$ ou tout relancer ?* $E_1(a_1) > E_0$ équivaut à $2166\,a_1 > 22\,743$, soit $a_1 > \text{10,5}$, c'est-à-dire $a_1 \geq 11$.

**Conclusion :**

- si le plus grand nombre $a_1$ vaut au moins $11$, je garde le dé qui montre $a_1$ et je relance les trois autres ;
- si $a_1 \leq 10$, je relance les quatre dés.

Dans le seul cas $a_1 = 20$, $a_2 = 19$, garder le $20$ et le $19$ est exactement aussi bon que garder le $20$ seul : l'espérance vaut $\frac{423}{100} = \text{4,23}$ dans les deux cas.

**Bilan.** Avec une relance, la bonne stratégie est simple : ne garder qu'un seul dé, le plus grand, et seulement s'il vaut au moins $11$. Garder plus de dés réduit trop les chances de former une paire. Pour la combinaison 11 - 7 - 2 - 2, cela confirme qu'il vaut mieux garder le $11$ que les deux $2$, qui assurent pourtant déjà des points.

## Going further

- Pour la combinaison 11 - 7 - 2 - 2, il y a d'autres choix que les trois proposés. Que vaut l'espérance si l'on garde le $11$ et les deux $2$ et qu'on relance le $7$ ? Existe-t-il un choix meilleur que garder le $11$ seul ?
- Que devient la stratégie de la question 2 si l'on a droit à deux relances successives ?
