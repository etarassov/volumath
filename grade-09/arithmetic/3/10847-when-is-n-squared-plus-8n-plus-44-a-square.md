---
id: "10847"
title: "Quand n² + 8n + 44 est-il un carré ?"
grade: 9
theme: arithmetic
difficulty: 3
duration_min: 20
tags: [carre-parfait, identites-remarquables, factorisation, parite, encadrement]
adapted_from: null
see_also: []
same_as: []
created: 2026-10-01
source:
  name: "POFM, envoi d'entraînement 2018-2019 n° 2 (arithmétique)"
  reference: "2018-11_envoi-2.pdf, Exercices Juniors, exercice 2 ; corrigé 2018-12_corrige-envoi-2.pdf (le corrigé encadre entre deux carrés ; la solution ci-dessous factorise une différence de carrés, l'encadrement est proposé en prolongement)"
  url: "https://maths-olympiques.fr/wp-content/uploads/2018/11/envoi-2.pdf"
  original_language: "fr"
  local_copy: "sources/originals/pofm-envois/2018-11_envoi-2.pdf"
---

## Statement

Trouver la somme de tous les entiers $n \geqslant 0$ tels que $n^2 + 8n + 44$ soit un carré parfait, c'est-à-dire le carré d'un entier.

## Hints

1. Calcule $n^2 + 8n + 44$ pour $n = 0, 1, 2, 3$.
2. Fais apparaître un carré : $n^2 + 8n + 44 = (n + 4)^2 + \ldots$
3. Si ce nombre vaut $k^2$, factorise $k^2 - (n + 4)^2$. De combien de façons peut-on écrire $28$ comme produit de deux entiers positifs ?
4. Les deux facteurs ont la même parité. Pourquoi ?

## Solution

**Réponse : seul $n = 2$ convient, donc la somme vaut $2$.**

### Étape 1 : on fait apparaître un carré

On a $(n + 4)^2 = n^2 + 8n + 16$, donc
$$n^2 + 8n + 44 = (n + 4)^2 + 28 .$$

### Étape 2 : une différence de deux carrés

Supposons que $n^2 + 8n + 44 = k^2$, avec $k \geqslant 0$ entier. D'après l'étape 1, $k^2 - (n + 4)^2 = 28$, et en factorisant :
$$(k - n - 4)(k + n + 4) = 28 .$$
Le second facteur $k + n + 4$ est au moins égal à $4$, donc positif. Comme le produit vaut $28 > 0$, le premier facteur est positif lui aussi.

*Les deux facteurs ont la même parité.* Leur différence vaut
$$(k + n + 4) - (k - n - 4) = 2(n + 4),$$
qui est paire. Ils sont donc tous les deux pairs, ou tous les deux impairs.

*Les possibilités.* On écrit $28$ comme produit de deux entiers positifs, le plus petit en premier :
$$28 = 1 \times 28 = 2 \times 14 = 4 \times 7 .$$
Dans $1 \times 28$ et $4 \times 7$, un facteur est pair et l'autre impair. Il reste seulement
$$k - n - 4 = 2 \qquad \text{et} \qquad k + n + 4 = 14 .$$
En soustrayant, $2(n + 4) = 12$, donc $n + 4 = 6$ et **$n = 2$**, puis $k = 8$.

### Étape 3 : vérification

Pour $n = 2$ : $4 + 16 + 44 = 64 = 8^2$. C'est bien un carré.

### Conclusion

**Le seul entier qui convient est $n = 2$, et la somme demandée vaut $2$.**

## Going further

1. Une autre méthode. Montre que pour $n \geqslant 3$, on a $(n + 4)^2 < n^2 + 8n + 44 < (n + 6)^2$. Montre aussi que $n^2 + 8n + 44$ et $(n + 5)^2$ n'ont jamais la même parité. Conclus.
2. Pour quels entiers $n \geqslant 0$ le nombre $n^2 + 8n + 76$ est-il un carré ?
