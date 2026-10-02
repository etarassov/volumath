---
id: "2209"
title: "La valeur exacte de sin 75°"
grade: 11
theme: functions-analysis
difficulty: 2
duration_min: 20
tags: [trigonometrie, formules-daddition, valeurs-exactes]
adapted_from: null
see_also: []
same_as: []
created: 2026-09-19
source:
  name: "Los Angeles Math Circle (UCLA), Advanced, Trigonometry #1"
  reference: "Handout-834-918.pdf, problème 8"
  url: "https://circles.math.ucla.edu/circles/archive.shtml"
  original_language: "en"
  local_copy: "sources/originals/ucla-lamc/Handout-834-918.pdf"
---

## Statement

On rappelle les formules d'addition :

$$\sin(\alpha + \beta) = \sin\alpha\,\cos\beta + \cos\alpha\,\sin\beta, \qquad \cos(\alpha + \beta) = \cos\alpha\,\cos\beta - \sin\alpha\,\sin\beta .$$

1. Calculer les valeurs exactes de $\sin 75°$ et de $\cos 75°$, c'est-à-dire de $\sin\dfrac{5\pi}{12}$ et de $\cos\dfrac{5\pi}{12}$.
2. En déduire la valeur exacte de $\tan 75°$, puis celle de $\sin 15°$ et de $\cos 15°$.

## Hints

1. $75$ n'est pas un angle remarquable, mais c'est la somme de deux angles remarquables. Lesquels ?
2. $75 = 45 + 30$. Les valeurs de $\sin$ et $\cos$ pour $45°$ et $30°$ sont au programme.
3. Pour $\tan 75°$, calcule le quotient et pense à multiplier haut et bas par la quantité conjuguée pour enlever la racine du dénominateur.
4. Pour $15°$, remarque que $15 = 90 - 75$.

## Solution

**1. Les deux valeurs.**

On écrit $75° = 45° + 30°$ et on applique les formules d'addition, avec

$$\cos 45° = \sin 45° = \frac{\sqrt{2}}{2}, \qquad \cos 30° = \frac{\sqrt{3}}{2}, \qquad \sin 30° = \frac{1}{2}.$$

*Le sinus.*

$$\sin 75° = \sin 45°\cos 30° + \cos 45° \sin 30° = \frac{\sqrt{2}}{2}\times\frac{\sqrt{3}}{2} + \frac{\sqrt{2}}{2}\times\frac{1}{2} = \frac{\sqrt{6}}{4} + \frac{\sqrt{2}}{4}.$$

$$\boxed{\ \sin 75° = \frac{\sqrt{6} + \sqrt{2}}{4}\ }$$

*Le cosinus.*

$$\cos 75° = \cos 45°\cos 30° - \sin 45°\sin 30° = \frac{\sqrt{2}}{2}\times\frac{\sqrt{3}}{2} - \frac{\sqrt{2}}{2}\times\frac{1}{2} = \frac{\sqrt{6}}{4} - \frac{\sqrt{2}}{4}.$$

$$\boxed{\ \cos 75° = \frac{\sqrt{6} - \sqrt{2}}{4}\ }$$

*Contrôle numérique.* $\sqrt{6} \approx \text{2,449}$ et $\sqrt{2} \approx \text{1,414}$, donc $\sin 75° \approx \dfrac{\text{3,863}}{4} \approx \text{0,966}$ et $\cos 75° \approx \dfrac{\text{1,035}}{4} \approx \text{0,259}$. La calculatrice donne bien ces valeurs. On vérifie aussi que

$$\sin^2 75° + \cos^2 75° = \frac{(\sqrt6+\sqrt2)^2 + (\sqrt6-\sqrt2)^2}{16} = \frac{(8 + 4\sqrt3) + (8 - 4\sqrt3)}{16} = \frac{16}{16} = 1 .$$

**2. La tangente, puis l'angle de 15°.**

$$\tan 75° = \frac{\sin 75°}{\cos 75°} = \frac{\sqrt6 + \sqrt2}{\sqrt6 - \sqrt2}.$$

On multiplie le numérateur et le dénominateur par $\sqrt6 + \sqrt2$ :

$$\tan 75° = \frac{\left(\sqrt6+\sqrt2\right)^2}{\left(\sqrt6\right)^2 - \left(\sqrt2\right)^2} = \frac{8 + 4\sqrt3}{6 - 2} = \frac{8 + 4\sqrt3}{4} = 2 + \sqrt3 .$$

$$\boxed{\ \tan 75° = 2 + \sqrt3 \approx \text{3,732}\ }$$

Enfin, comme $15° = 90° - 75°$, les rôles du sinus et du cosinus s'échangent :

$$\sin 15° = \cos 75° = \frac{\sqrt6 - \sqrt2}{4}, \qquad \cos 15° = \sin 75° = \frac{\sqrt6 + \sqrt2}{4}.$$

**Ce qu'il faut retenir.** Tout angle qui s'écrit comme somme ou différence d'angles remarquables a lui aussi une valeur exacte, obtenue sans aucune calculatrice. Les angles de $15°$, $75°$, $105°$ et $165°$ se traitent ainsi.

## Going further

1. Calculer de même $\sin 105°$ et $\cos 105°$, puis $\tan 15°$.
2. Vérifier que $\tan 15° \times \tan 75° = 1$. Pourquoi était-ce prévisible ?
3. Calculer $\sin\dfrac{\pi}{12} \times \sin\dfrac{5\pi}{12}$ et donner le résultat sous la forme la plus simple possible.
