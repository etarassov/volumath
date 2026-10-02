---
id: "13002"
title: "Une équation fonctionnelle sans solution"
grade: 10
theme: algebra
difficulty: 3
duration_min: 20
tags: [equation fonctionnelle, substitution, systeme, impossibilite]
adapted_from: null
see_also: []
created: 2026-10-01
source:
  name: "Olympiades françaises de mathématiques, épreuve de sélection (Coupe Animath d'automne) du 5 octobre 2011"
  reference: "2017-09_coupe_automne_2011.pdf, exercice 4 ; corrigé 2017-09_coupe_automne_2011_corrige.pdf. Le corrigé commence par « Soit x > 0 » puis conclut avec f(−2), ce qui demande x = −1 : il faut prendre x non nul quelconque."
  url: "https://maths-olympiques.fr/wp-content/uploads/2017/09/coupe_automne_2011.pdf"
  original_language: "fr"
  local_copy: "sources/originals/coupe-animath/2017-09_coupe_automne_2011.pdf"
---

## Statement

On note $\mathbb{R}^*$ l'ensemble des nombres réels non nuls.

Trouver toutes les fonctions $f$, définies sur $\mathbb{R}^*$ et dont toutes les valeurs sont des réels **non nuls**, telles que pour tout réel $x$ non nul :
$$x\, f\left(\frac{x}{2}\right) - f\left(\frac{2}{x}\right) = 1 .$$

## Hints

1. L'égalité contient à la fois $f\left(\frac{x}{2}\right)$ et $f\left(\frac{2}{x}\right)$. Par quel nombre faut-il remplacer $x$ pour que ces deux expressions échangent leurs rôles ?
2. Remplace $x$ par $\frac{4}{x}$. Tu obtiens une deuxième égalité avec les deux mêmes inconnues $f\left(\frac{x}{2}\right)$ et $f\left(\frac{2}{x}\right)$.
3. Ces deux égalités forment un système de deux équations à deux inconnues. Résous-le pour trouver $f\left(\frac{2}{x}\right)$.
4. Tu trouves une formule pour $f$. Vérifie si elle respecte toutes les conditions de l'énoncé, en particulier en $-2$.

## Solution

**Une deuxième égalité.** Soit $x$ un réel non nul. L'égalité de l'énoncé est vraie pour $x$ :
$$x\, f\left(\frac{x}{2}\right) - f\left(\frac{2}{x}\right) = 1 . \qquad (1)$$
Elle est vraie aussi pour le nombre non nul $\frac{4}{x}$. Or $\frac{4/x}{2} = \frac{2}{x}$ et $\frac{2}{4/x} = \frac{x}{2}$, donc en remplaçant $x$ par $\frac{4}{x}$ on obtient
$$\frac{4}{x}\, f\left(\frac{2}{x}\right) - f\left(\frac{x}{2}\right) = 1 .$$
On multiplie par $x$ :
$$4\, f\left(\frac{2}{x}\right) - x\, f\left(\frac{x}{2}\right) = x . \qquad (2)$$

**On résout le système.** En additionnant $(1)$ et $(2)$, les termes en $f\left(\frac{x}{2}\right)$ disparaissent :
$$3\, f\left(\frac{2}{x}\right) = 1 + x, \qquad \text{donc} \qquad f\left(\frac{2}{x}\right) = \frac{1 + x}{3}.$$

**La contradiction.** Cette égalité est vraie pour tout $x$ non nul. Prenons $x = -1$ : on obtient
$$f(-2) = \frac{1 + (-1)}{3} = 0 .$$
Mais l'énoncé demande que toutes les valeurs de $f$ soient non nulles. C'est impossible.

**Conclusion.** Il n'existe **aucune** fonction qui vérifie les conditions de l'énoncé.

*Remarque.* Si l'on pose $y = \frac{2}{x}$, c'est-à-dire $x = \frac{2}{y}$, la formule trouvée s'écrit
$$f(y) = \frac{1 + \frac{2}{y}}{3} = \frac{y + 2}{3y}.$$
C'est la seule fonction possible, et elle vérifie bien l'égalité de l'énoncé (voir le prolongement). Le seul défaut de cette fonction est de s'annuler en $-2$. Le piège du problème est là : on trouve une formule, et on oublie de vérifier qu'elle convient.

## Going further

1. On remplace la condition « valeurs non nulles » par « valeurs réelles quelconques ». Montrer que la fonction $f(y) = \frac{y+2}{3y}$ vérifie alors l'égalité de l'énoncé pour tout $x$ non nul, et que c'est la seule.
2. Trouver toutes les fonctions $g$ définies sur $\mathbb{R}^*$ telles que $g(x) + 2\,g\left(\frac{1}{x}\right) = x$ pour tout $x$ non nul.
