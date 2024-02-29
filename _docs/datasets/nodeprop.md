---
title: Dynamic Node Property Prediction
permalink: /docs/nodeprop/
---

<style>
r { color: rgb(231, 41, 138) }
b { color: Blue }
g { color: rgb(27, 158, 119) }
</style>


##### The task is to predict properties of single nodes at a future time.

### Summary

#### - Datasets

Scale | Name      | Package          | #Nodes  | #Edges\* | #Steps | Surprise  | Metric    |
|:---------:|:--------|:-----:|----------------:|----------------------:|---------------------:|:-------------------------:|
<r>Small</r> | [tgbn-trade](#tgbn-trade) | 0.8.0  | 255  | 468,245  | 32       | 0.023      | NDCG@10 |
<b>Medium</b> | [tgbn-genre](#tgbn-genre) | 0.8.0  | 1,505 | 17,858,395| 133,758       | 0.005  | NDCG@10 |
<g>Large</g> | [tgbn-reddit](#tgbn-reddit) | 0.8.0  | 11,766  | 27,174,118 |  21,889,537    | 0.013      | NDCG@10 |
<g>Large</g> | [tgbn-token](#tgbn-token) | 0.9.0  | 61,756  | 72,936,998 |  2,036,524    | 0.014      | NDCG@10 |

#### - Module
Datasets are available in <code>Numpy</code> arrays, <code>Pytorch</code> tensors and <code>PyG TemporalData</code> objects.
We also provide the evaluator.

<a name="tgbn-trade"/>

----------

### Dataset `tgbn-trade` ([Leaderboard](../leader_nodeprop/#tgbn-trade)):

**Temporal Graph:** The `tgbn-trade` dataset is the international agriculture trading network between nations of the United Nations (UN) from 1986 to 2016. Each node is a nation and an edge represents the sum trade value of all agriculture products from one nation to another one. As the data is reported annually, the time granularity of the dataset is yearly. 

**Prediction task:** The considered task for this dataset is to predict the proportion of agriculture trade values from one nation to other nations during the next year.

#### References
[1] G. K. MacDonald, K. A. Brauman, S. Sun, K. M. Carlson, E. S. Cassidy, J. S. Gerber, and P. C. West. Rethinking agricultural trade relationships in an era of globalization. BioScience,65(3):275–289, 2015. <br/>

##### License: MIT license


<a name="tgbn-genre"/>

------

### Dataset `tgbn-genre` ([Leaderboard](../leader_nodeprop/#tgbn-genre)):

**Temporal Graph:** The `tgbn-genre` dataset is a bipartite and weighted interaction network between users and the music genres of songs they listen to. Both users and music genres are represented as nodes while an interaction specifies a user listens to a music genre at a given time. The edge weights denote the percentage of which a song belongs to a certain genre. The dataset is constructed by cross referencing the songs in the LastFM-song-listens dataset with that of music genres in the million-song dataset. The LastFM-song-listens dataset has one month of who-listens-to-which-song information for 1000 users and the million-song dataset provides genre weights for all songs in the LastFM-song-listens dataset. We only retain genres with at least 10% weights for each song that are repeated at least a thousand times in the dataset. In addition, the genre names are further cross references to remove genre names with typos. 

**Prediction task:** The considered task for this dataset is to rank with which set of music genres a user will interact the most over the course of the next week.


#### References
[2] S. Kumar, X. Zhang, and J. Leskovec. Predicting dynamic embedding trajectory in temporal interaction networks. In Proceedings of the 25th ACM SIGKDD international conference on knowledge discovery & data mining, pages 1269–1278, 2019. <br/>
[3] B. Hidasi and D. Tikk. Fast als-based tensor factorization for context-aware recommendation from implicit feedback. In Machine Learning and Knowledge Discovery in Databases: European Conference, ECML PKDD 2012, Bristol, UK, September 24-28, 2012. Proceedings, Part II 23, pages 67–82. Springer, 2012. <br/>
[4] T. Bertin-Mahieux, D. P. Ellis, B. Whitman, and P. Lamere. The million song dataset. 2011. <br/>
##### License: MIT license


<a name="tgbn-reddit"/>

----------

### Dataset `tgbn-reddit` ([Leaderboard](../leader_nodeprop/#tgbn-reddit)):

**Temporal Graph:** The `tgbn-reddit` dataset is a users and subreddits interaction network. Both users and subreddits are nodes and each edge indicates that a user posted on a subreddit at a given time. The dataset spans from 2005 to 2019. 

**Prediction task:** The task considered for this dataset is to rank with which subreddits a user will interact the most over the next week.

#### References
[5] A. Nadiri and F. W. Takes. A large-scale temporal analysis of user lifespan durability on the reddit social media platform. In Companion Proceedings of the Web Conference 2022, pages 677–685, 2022. <br/>
##### License: CC BY-NC license (Attribution-NonCommercial)



<a name="tgbn-token"/>

----------

### Dataset `tgbn-token` ([Leaderboard](../leader_nodeprop/#tgbn-token)):

**Temporal Graph:** The `tgbn-token` dataset is a user and cryptocurrency token transaction network. Both users and tokens are nodes and each edge indicates the transaction from a user to a token. The edge weights indicate the amount of token transferred and considering the disparity between weights, we normalized the edge weights using logarithm. 

**Prediction task:** The task considered for this dataset is to predict how frequently a user will interact with various types of tokens over the next week.


#### References
[6] K. Shamsi, Y. R. Gel, M. Kantarcioglu, and C. G. Akcora. Chartalist: Labeled graph datasets for utxo and account-based blockchains. In Advances in Neural Information Processing Systems 36: Annual Conference on Neural Information Processing Systems 2022, NeurIPS 2022, November 29-December 1, 2022, New Orleans, LA, USA, pages 1–14, 2022. <br/>
##### License: CC BY-NC license (Attribution-NonCommercial)





<a name="numpy"/>

----------

### Numpy Arrays

To load a dataset replace the name variable with a dataset name. See more from the [TGB tutorial](https://github.com/shenyangHuang/TGB/blob/main/docs/tutorials/Edge_data_numpy.ipynb)

```python
from tgb.nodeproppred.dataset import NodePropPredDataset

name = "tgbn-trade"

dataset = NodePropPredDataset(name=name, root="datasets", preprocess=True)

data = dataset.full_data

type(data['sources']) #all source nodes of edges
```

<a name="pytorch"/>

### Pytorch Tensors

To load a dataset replace the name variable with a dataset name. 

```python
from tgb.nodeproppred.dataset_pyg import PyGNodePropPredDataset

name = "tgbn-trade"

dataset = PyGNodePropPredDataset(name=name, root="datasets")

dataset.src #all source nodes of edges
```

<a name="pyg"/>

#### Pytorch Geometric TemporalData

```python
from tgb.nodeproppred.dataset_pyg import PyGNodePropPredDataset

name = "tgbn-trade"

dataset = PyGNodePropPredDataset(name=name, root="datasets")

data = dataset.get_TemporalData()

type(data) #TemporalData object
```


<a name="eval"/>

----------

### Performance Evaluator

Please see detailed example of `nodeproppred` [here](https://github.com/shenyangHuang/TGB/tree/main/examples/nodeproppred)

```python
from tgb.nodeproppred.evaluate import Evaluator

name = "tgbn-trade"

evaluator = Evaluator(name=name)

metric = dataset.eval_metric
```

