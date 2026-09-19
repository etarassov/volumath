---
id: "1201"
title: "Personne ne repart avec son chapeau"
grade: 12
theme: probability-statistics
difficulty: 3
duration_min: 35
tags: [denombrement, crible, probabilite, factorielle, nombre-e]
adapted_from: null
see_also: []
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), Advanced 1, «Irrational Numbers Part II: The Number e»"
  reference: "Handout-4425-4240.pdf, problème 1 (réponse dans Handout-4426-4240.pdf)"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-4425-4240.pdf"
---

## Statement

À la fin d'une soirée, $N$ invités viennent reprendre leur chapeau au vestiaire. Le gardien a perdu toutes les étiquettes : il rend les chapeaux au hasard, un par personne. Les $N!$ façons de les distribuer sont équiprobables.

1. Pour $N = 4$, calculer la probabilité que **personne** ne reparte avec son propre chapeau.
2. Reprendre le calcul pour $N = 5$, puis pour $N = 6$.
3. Calculer la valeur décimale de l'inverse de chacune de ces trois probabilités. Quel nombre célèbre voit-on apparaître ?

## Hints

1. Il y a $N!$ distributions possibles. Tout le travail consiste à compter celles où aucun invité ne reçoit son propre chapeau.
2. Compter directement ces distributions est pénible. Compter l'événement contraire est plus simple : « au moins un invité reçoit son propre chapeau ».
3. Notons $A_i$ l'ensemble des distributions dans lesquelles l'invité numéro $i$ reçoit son propre chapeau. L'événement contraire est $A_1 \cup A_2 \cup \dots \cup A_N$.
4. Pour une réunion d'ensembles qui se chevauchent, on utilise la formule du crible : on ajoute les cardinaux un à un, on retranche les intersections deux à deux, on rajoute les intersections trois à trois, et ainsi de suite en alternant les signes.
5. Si l'on impose à $k$ invités bien précis de recevoir leur propre chapeau, les $N-k$ chapeaux restants se distribuent librement : cela fait $(N-k)!$ distributions. Et il y a $\binom{N}{k}$ façons de choisir ces $k$ invités.
6. Pour la dernière question, comparer les trois nombres obtenus à $e \approx \text{2,71828}$.

## Solution

**Mise en place.**

Numérotons les invités de $1$ à $N$. Une distribution des chapeaux est une façon d'associer à chaque invité un chapeau, chaque chapeau servant une fois : il y en a exactement $N!$, et elles sont équiprobables.

Notons $A_i$ l'ensemble des distributions dans lesquelles l'invité $i$ reçoit **son** chapeau. L'événement « au moins un invité repart avec son chapeau » est $A_1 \cup A_2 \cup \dots \cup A_N$. L'événement qui nous intéresse est son contraire.

**Compter les intersections.**

Choisissons $k$ invités, disons $i_1 < i_2 < \dots < i_k$. L'ensemble $A_{i_1} \cap \dots \cap A_{i_k}$ contient les distributions où ces $k$ invités reçoivent leur propre chapeau ; les $N-k$ autres chapeaux vont aux $N-k$ autres invités de façon totalement libre. Il y a donc

$$\left| A_{i_1} \cap \dots \cap A_{i_k} \right| = (N-k)!$$

et il y a $\binom{N}{k}$ choix possibles pour le groupe de $k$ invités.

**La formule du crible.**

$$\left| A_1 \cup \dots \cup A_N \right| = \binom{N}{1}(N-1)! - \binom{N}{2}(N-2)! + \binom{N}{3}(N-3)! - \dots$$

Le nombre $D_N$ de distributions où personne ne reçoit son chapeau s'obtient en retirant ce total de $N!$ :

$$D_N = N! - \binom{N}{1}(N-1)! + \binom{N}{2}(N-2)! - \binom{N}{3}(N-3)! + \dots + (-1)^N \binom{N}{N} 0!$$

**Le cas $N = 4$.**

$$D_4 = 24 - 4 \times 6 + 6 \times 2 - 4 \times 1 + 1 \times 1 = 24 - 24 + 12 - 4 + 1 = 9.$$

La probabilité cherchée vaut donc

$$p_4 = \frac{9}{24} = \frac{3}{8} = \text{0,375}.$$

*(On peut vérifier ce $9$ à la main : sur les $24$ permutations de quatre objets, il y en a bien neuf sans point fixe.)*

**Le cas $N = 5$.**

$$D_5 = 120 - 5 \times 24 + 10 \times 6 - 10 \times 2 + 5 \times 1 - 1 \times 1 = 120 - 120 + 60 - 20 + 5 - 1 = 44,$$

$$p_5 = \frac{44}{120} = \frac{11}{30} \approx \text{0,3667}.$$

**Le cas $N = 6$.**

$$D_6 = 720 - 6 \times 120 + 15 \times 24 - 20 \times 6 + 15 \times 2 - 6 \times 1 + 1 \times 1 = 265,$$

$$p_6 = \frac{265}{720} = \frac{53}{144} \approx \text{0,3681}.$$

**Les inverses.**

$$\frac{1}{p_4} = \frac{8}{3} \approx \text{2,667}, \qquad \frac{1}{p_5} = \frac{30}{11} \approx \text{2,727}, \qquad \frac{1}{p_6} = \frac{144}{53} \approx \text{2,717}.$$

On reconnaît le nombre $e \approx \text{2,71828}$.

**Pourquoi.** En divisant la formule de $D_N$ par $N!$, chaque terme $\binom{N}{k}(N-k)!$ devient

$$\frac{1}{N!} \cdot \frac{N!}{k!\,(N-k)!} \cdot (N-k)! = \frac{1}{k!},$$

de sorte que

$$p_N = \frac{1}{0!} - \frac{1}{1!} + \frac{1}{2!} - \frac{1}{3!} + \dots + \frac{(-1)^N}{N!}.$$

C'est exactement la somme qui converge vers $\dfrac{1}{e}$, et c'est pourquoi $\dfrac{1}{p_N}$ s'approche de $e$.

**Conclusion.** La probabilité que personne ne reparte avec son chapeau vaut $\dfrac{3}{8}$ pour $4$ invités, $\dfrac{11}{30}$ pour $5$ invités et $\dfrac{53}{144}$ pour $6$ invités. Elle ne tend pas vers $0$ quand le nombre d'invités grandit : elle se stabilise autour de $\dfrac{1}{e} \approx \text{0,368}$.

## Going further

1. Montrer que $p_N$ ne varie plus guère à partir de $N = 7$ : l'écart entre $p_N$ et $\dfrac{1}{e}$ est inférieur à $\dfrac{1}{(N+1)!}$.
2. Combien de distributions laissent **exactement un** invité avec son propre chapeau ? Comparer avec $D_N$.
