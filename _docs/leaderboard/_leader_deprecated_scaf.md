---
title: Deprecated Leaderboards
permalink: /docs/leader_deprecated/
---

##### Check leaderboards for
###### - [ogbl-citation](#ogbl-citation)
###### - [ogbl-wikikg](#ogbl-wikikg)
###### - [ogbg-code](#ogbg-code)
###### **Note:** These leaderboards are deprecated and will no longer updated.

The **bold** method name indicates that the implementation is **official** (by the author of the original paper). <br/>
**Package** denotes the required package version for each dataset to be eligible for the leaderboard.



<a name="ogbl-citation"/>

-------

### Deprecated Leaderboard for ogbl-citation
##### The MRR score on the test and validation sets. The higher, the better.

#### Package: >=1.1.1, <=1.2.3
###### Deprecated due to a bug in test/val negative samples. [`ogbl-citation2`](../linkprop/#ogbl-citation2) fixes the issue.
###### The new leaderboard for [`ogbl-citation2`](../linkprop/#ogbl-citation2)  can be found [here](../leader_linkprop/#ogbl-citation2).

#ogbl-citation


<a name="ogbl-wikikg"/>

-------

### Deprecated Leaderboard for ogbl-wikikg
##### The MRR score on the test and validation sets. The higher, the better.

#### Package: >=1.1.1, <=1.2.3
###### Deprecated due to a bug in test/val negative samples. [`ogbl-wikikg2`](../linkprop/#ogbl-wikikg2) fixes the issue.
###### The new leaderboard for [`ogbl-wikikg2`](../linkprop/#ogbl-wikikg2) can be found [here](../leader_linkprop/#ogbl-wikikg2).

#ogbl-wikikg

<a name="ogbg-code"/>

-------

### Deprecated Leaderboard for ogbg-code
##### The F1 score on the test and validation sets. The higher, the better.

#### Package: >=1.2.0, <=1.2.4
###### Deprecated due to prediction target leakage in input graph. [`ogbg-code2`](../graphprop/#ogbg-code2) fixes the issue.
###### The new leaderboard for [`ogbg-code2`](../graphprop/#ogbg-code2) can be found [here](../leader_graphprop/#ogbg-code2).

#ogbg-code




