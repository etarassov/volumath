---
id: "2611"
title: "Le duel à trois : faut-il viser ?"
grade: 12
theme: probability-statistics
difficulty: 5
duration_min: 50
tags: [probabilite-conditionnelle, suite-geometrique, strategie, arbre]
adapted_from: null
see_also: []
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), High School Circle, Probability I (Anand Rajagopalan)"
  reference: "Handout-451-519.pdf, exercice 3"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-451-519.pdf"
---

## Statement

Alice, Bruno et Camille jouent à un jeu de ballons d'eau. Chacun tire à son tour sur un adversaire de son choix ; celui qui est touché est éliminé et ne tire plus. **Le gagnant est le dernier joueur encore en jeu.**

Leur adresse est connue de tous :

- Alice touche sa cible avec probabilité $\text{0,3}$ ;
- Bruno ne rate jamais ;
- Camille touche sa cible avec probabilité $\text{0,5}$.

On tire dans l'ordre Alice, Bruno, Camille, Alice, Bruno, Camille... en sautant les joueurs éliminés. Les tirs sont indépendants les uns des autres.

Bruno et Camille jouent tous les deux la même règle : **ils visent toujours l'adversaire le plus adroit encore en jeu**.

Alice, elle, a trois possibilités à son premier tir : viser Bruno, viser Camille, ou **tirer exprès à côté**. Calculer sa probabilité de gagner dans chacun des trois cas, et dire ce qu'elle doit faire.

## Hints

1. Commence par les situations à deux joueurs, ce sont les briques de base. Si Alice et Bruno restent seuls et qu'Alice tire la première, quelle est sa probabilité de gagner ? Attention, Bruno ne rate jamais.
2. Si Alice et Camille restent seules et que Camille tire la première, pose $a$ = probabilité qu'Alice gagne dans cette situation et $b$ = probabilité qu'Alice gagne si c'est elle qui tire. Écris deux équations reliant $a$ et $b$, puis résous.
3. Que fait Bruno quand les trois joueurs sont encore en jeu ? Et Camille ?
4. Pour chacune des trois options d'Alice, fais un arbre : « je touche » / « je rate », et regarde à chaque fois dans quelle situation à deux joueurs on retombe.
5. Compare les trois nombres. Le résultat est surprenant.

## Solution

**Étape 1 : les duels à deux joueurs.**

*Alice contre Bruno, Alice tire la première.* Si elle touche, elle gagne. Si elle rate, Bruno tire et ne rate jamais : Alice est éliminée. Donc
$$P(\text{Alice gagne}) = \text{0,3} .$$

*Alice contre Bruno, Bruno tire le premier.* Alice est éliminée tout de suite : sa probabilité de gagner est $0$.

*Alice contre Camille.* Notons $b$ la probabilité qu'Alice gagne quand c'est à elle de tirer, et $a$ la probabilité qu'Alice gagne quand c'est à Camille de tirer. En regardant le premier tir dans chaque cas :
$$b = \text{0,3} + \text{0,7}\,a \qquad \text{et} \qquad a = \text{0,5} \times 0 + \text{0,5}\,b .$$

En remplaçant $b$ dans la deuxième équation :
$$a = \text{0,5}\,(\text{0,3} + \text{0,7}\,a) = \text{0,15} + \text{0,35}\,a, \qquad \text{donc} \qquad \text{0,65}\,a = \text{0,15},$$
$$a = \frac{\text{0,15}}{\text{0,65}} = \frac{3}{13} \approx \text{0,231} \qquad \text{et} \qquad b = \text{0,3} + \text{0,7} \times \frac{3}{13} = \frac{6}{13} \approx \text{0,462}.$$

**Étape 2 : ce que font Bruno et Camille quand tout le monde est en jeu.**

- **Bruno** vise l'adversaire le plus adroit : Camille ($\text{0,5}$) est plus adroite qu'Alice ($\text{0,3}$). Bruno vise donc Camille, et comme il ne rate jamais, **Camille est éliminée**.
- **Camille** vise l'adversaire le plus adroit : c'est Bruno, qui ne rate jamais.

**Étape 3 : les trois options d'Alice.**

*Option 1 : Alice vise Bruno.*

- Elle touche (probabilité $\text{0,3}$) : Bruno est éliminé. C'est au tour de Camille, face à Alice. On est dans le duel « Alice contre Camille, Camille tire ». Alice gagne avec probabilité $a = \dfrac{3}{13}$.
- Elle rate (probabilité $\text{0,7}$) : c'est au tour de Bruno, les trois sont en jeu, donc Bruno élimine Camille. Le tour de Camille est sauté, et c'est à Alice de tirer face à Bruno : elle gagne avec probabilité $\text{0,3}$.

$$P_1 = \text{0,3} \times \frac{3}{13} + \text{0,7} \times \text{0,3} = \frac{9}{130} + \frac{21}{100} = \frac{363}{1300} \approx \text{0,279}.$$

*Option 2 : Alice vise Camille.*

- Elle touche (probabilité $\text{0,3}$) : Camille est éliminée. C'est au tour de Bruno, face à Alice, et Bruno ne rate jamais. Alice gagne avec probabilité $0$.
- Elle rate (probabilité $\text{0,7}$) : comme ci-dessus, Bruno élimine Camille, puis Alice tire sur Bruno : probabilité $\text{0,3}$.

$$P_2 = \text{0,3} \times 0 + \text{0,7} \times \text{0,3} = \text{0,21}.$$

*Option 3 : Alice tire exprès à côté.*

Personne n'est éliminé par ce tir. C'est au tour de Bruno, les trois sont en jeu : il élimine Camille. Le tour de Camille est sauté, et Alice tire face à Bruno.

$$P_3 = \text{0,3}.$$

**Étape 4 : comparaison.**

$$P_2 = \text{0,21} \ < \ P_1 \approx \text{0,279} \ < \ P_3 = \text{0,3}.$$

$$\boxed{\text{Alice a intérêt à tirer exprès à côté.}}$$

**Pourquoi, au fond ?** Comparons directement les options 1 et 3 en les écrivant de la même façon :
$$P_1 = \text{0,3} \times \frac{3}{13} + \text{0,7} \times \text{0,3}, \qquad P_3 = \text{0,3} \times \text{0,3} + \text{0,7} \times \text{0,3} .$$

Les deux options se ressemblent : dans les deux cas, si Alice ne touche personne, Bruno élimine Camille et Alice se retrouve à tirer la première sur Bruno. La seule différence est ce qui se passe si Alice touche Bruno : elle se retrouve alors sous le feu de Camille, avec seulement $\dfrac{3}{13} \approx \text{0,23}$ de chances, moins bien que les $\text{0,3}$ qu'elle a en laissant Bruno vivant.

**En éliminant le plus fort, Alice perd son meilleur allié : c'est Bruno qui se charge d'éliminer Camille.** Le plus faible des trois a tout intérêt à laisser les deux autres se neutraliser.

## Going further

On a supposé que Bruno et Camille visent toujours le plus adroit. On peut vérifier que c'est bien leur meilleur choix. Par exemple, si Bruno visait Alice au lieu de Camille, il se retrouverait ensuite sous le tir de Camille qui tire la première : il survivrait avec probabilité $\text{0,5}$. En visant Camille, il se retrouve sous le tir d'Alice qui tire la première : il survit avec probabilité $\text{0,7}$. Il vise donc bien Camille.
