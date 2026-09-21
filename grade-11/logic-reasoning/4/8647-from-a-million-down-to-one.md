---
id: "8647"
title: "D'un million jusqu'à 1"
grade: 11
theme: logic-reasoning
difficulty: 4
duration_min: 45
tags: [strategie gagnante, recurrence forte, partie entiere, parite]
adapted_from: null
see_also: []
created: 2026-09-20
source:
  name: "POFM, stage olympique de Valbonne 2023, Groupe A"
  reference: "valbonne-2023.pdf, Groupe A, « Jeux » (Théo & Augustin), exercice 14 (Olympiades de Saint-Pétersbourg 2001, problème 13)"
  url: "https://maths-olympiques.fr/wp-content/uploads/2023/12/valbonne-2023.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm/valbonne-2023.pdf"
---

## Statement

Aline écrit le nombre $1\,000\,000$ au tableau.

Ensuite, Hannah et Aline effacent le nombre écrit à tour de rôle et le remplacent, au choix, par

$$n - 1 \qquad \text{ou} \qquad \left\lfloor \frac{n+1}{2} \right\rfloor ,$$

où $n$ est le nombre qui était écrit, et où $\lfloor x \rfloor$ désigne la partie entière de $x$.

C'est Hannah qui joue la première. Celle qui écrit le nombre $1$ a gagné.

Laquelle des deux a une stratégie gagnante ?

## Hints

1. Depuis quels nombres peut-on écrire $1$ en un seul coup ? Vérifie les deux opérations.
2. Appelle **gagnant** un nombre depuis lequel celle qui doit jouer peut forcer la victoire. Détermine à la main si $2$, $3$, $4$, $5$, $6$ sont gagnants ou perdants.
3. Tu vas remarquer que les nombres pairs semblent tous gagnants. Essaie de le démontrer par récurrence.
4. Depuis $2n$, la seconde opération donne $\left\lfloor \dfrac{2n+1}{2} \right\rfloor = n$. Depuis $2n$, on peut donc aller sur $n$, mais aussi sur $2n-1$. Utilise ces deux possibilités selon le cas.
5. Depuis $2n-1$, quels sont les deux coups possibles ? Calcule la seconde opération : tu devrais retomber sur $n$.

## Solution

**Le vocabulaire.** Appelons **gagnant** un nombre $n \geqslant 2$ tel que la joueuse qui doit jouer, avec $n$ écrit au tableau, peut forcer la victoire, et **perdant** sinon.

**Le tout premier cas.** On écrit $1$ en un coup depuis $n$ si $n - 1 = 1$, c'est-à-dire $n = 2$, ou si $\left\lfloor \dfrac{n+1}{2} \right\rfloor = 1$, c'est-à-dire $n = 2$ également (pour $n \geqslant 2$). Donc :

$$\textbf{2 est gagnant, et c'est le seul nombre depuis lequel on gagne en un coup.}$$

**Le calcul des deux coups depuis $2n$ et depuis $2n-1$.** Pour la suite, notons que

$$\left\lfloor \frac{2n+1}{2} \right\rfloor = n \qquad \text{et} \qquad \left\lfloor \frac{(2n-1)+1}{2} \right\rfloor = \left\lfloor \frac{2n}{2} \right\rfloor = n .$$

Autrement dit :

- depuis $2n$, les deux coups mènent à $2n - 1$ ou à $n$ ;
- depuis $2n-1$, les deux coups mènent à $2n - 2$ ou à $n$.

**Affirmation : tout nombre pair $\geqslant 2$ est gagnant.**

*Démonstration par récurrence forte sur $n \geqslant 1$, la propriété étant « $2n$ est gagnant ».*

*Initialisation.* $2$ est gagnant, comme on vient de le voir.

*Hérédité.* Soit $n \geqslant 2$, et supposons que tous les nombres pairs de $2$ à $2n - 2$ soient gagnants. Montrons que $2n$ est gagnant. Deux cas se présentent.

- **Si $n$ est perdant.** Alors la joueuse joue $2n \to n$, et son adversaire se retrouve sur un nombre perdant. Elle gagne.

- **Si $n$ est gagnant.** Regardons alors le nombre $2n - 1$. Ses deux coups mènent à $2n-2$ et à $n$. Or $2n - 2$ est pair et compris entre $2$ et $2n-2$, donc gagnant par hypothèse de récurrence ; et $n$ est gagnant par hypothèse du cas. **Tous les coups depuis $2n-1$ mènent donc à un nombre gagnant pour l'adversaire : $2n-1$ est perdant.** La joueuse joue alors $2n \to 2n-1$ et gagne.

Dans les deux cas $2n$ est gagnant, ce qui achève la récurrence. $\square$

**Conclusion.** Le nombre de départ $1\,000\,000$ est pair, donc gagnant. C'est Hannah qui joue la première :

$$\boxed{\text{Hannah a une stratégie gagnante.}}$$

## Going further

La démonstration est élégante parce qu'elle ne cherche pas à classer tous les nombres : elle se contente de traiter les pairs, ce qui suffit. La ruse est de ne pas décider tout de suite quel coup jouer depuis $2n$, mais de **séparer deux cas** et de trouver un bon coup dans chacun.

Si tu veux la liste complète, calcule à la main les positions perdantes jusqu'à $30$ : tu trouveras $3, 7, 9, 11, 15, 19, 23, 25, 27$. Elles sont toutes impaires, ce qui est cohérent avec ce qu'on vient de démontrer, mais leur répartition n'a rien d'évident.
