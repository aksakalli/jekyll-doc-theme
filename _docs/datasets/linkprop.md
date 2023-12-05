---
title: Dynamic Link Property Prediction
permalink: /docs/linkprop/
---

<style>
r { color: rgb(231, 41, 138) }
b { color: Blue }
g { color: rgb(27, 158, 119) }
</style>


##### The task is to predict properties of edges (pairs of nodes) at a future time.

### Summary

#### - Datasets

Scale | Name      | Package | #Nodes | #Edges\* |  #Steps  | Surprise     | Metric       |
|:---------:|:--------|:---------:|----------:|----------:|:----------------:|:------------------:|:----------------:|
<r>Small</r> | [tgbl-wiki-v2](#tgbl-wiki-v2)      | 0.7.5   | 9,227 |    157,474  |   152,757  | 0.108   |     MRR              |
<r>Small</r> | [tgbl-review-v2](#tgbl-review-v2)  | 0.7.5       | 352,637 |    4,873,540 |    6,865  | 0.987   |     MRR              |
<b>medium</b> | [tgbl-coin](#tgbl-coin)       | 0.9.0  | 638,486 |  22,809,486 |   1,295,720  | 0.120   |     MRR              |
<g>large</g> | [tgbl-comment](#tgbl-comment) | 0.7.5       | 994,790 |   44,314,507 |   30,998,030  |  0.823   |     MRR      |
<g>large</g> | [tgbl-flight](#tgbl-flight)  | 0.9.2       | 18,143 |   67,169,570 |   1,385  | 0.024   |    MRR     |


#### - Module
Datasets are available in <code>Numpy</code> arrays, <code>Pytorch</code> tensors and <code>PyG TemporalData</code> objects.
We also provide the evaluator.

<a name="tgbl-wiki-v2"/>

----------

### Dataset `tgbl-wiki-v2` ([Leaderboard](../leader_linkprop/#tgbl-wiki-v2)):

**Temporal Graph:** The `tgbl-wiki` dataset stores the co-editing network on Wikipedia pages over one month. The network is a bipartite interaction network where editors and wiki pages are nodes, while one edge represents a given user edits a page at a specific timestamp. Each edge has text features from the page edits. 

**Prediction task:** The task for this dataset is to predict with which wiki page a user will interact at a given time.

#### References

[1] S. Kumar, X. Zhang, and J. Leskovec. Predicting dynamic embedding trajectory in temporal interaction networks. In Proceedings of the 25th ACM SIGKDD international conference on knowledge discovery & data mining, pages 1269–1278, 2019. <br/>
##### License: MIT license

<a name="tgbl-review-v2"/>

----------

### Dataset `tgbl-review-v2` ([Leaderboard](../leader_linkprop/#tgbl-review-v2)):

**Temporal Graph:** The `tgbl-review` dataset is an Amazon product review network from 1997 to 2018 where users rate different products in the electronics category from a scale from one to five. Therefore, the network is a bipartite weighted network where both users and products are nodes and each edge represents a particular review from a user to a product at a given time. Only users with a minimum of 10 reviews within the aforementioned time interval are kept in the network. 


**Prediction task:** The considered task for this dataset is to predict which product a user will review at a given time.


#### References

[2] J. Ni, J. Li, and J. McAuley. Justifying recommendations using distantly-labeled reviews and fine-grained aspects. In Proceedings of the 2019 conference on empirical methods in natural language processing and the 9th international joint conference on natural language processing (EMNLP-IJCNLP), pages 188–197, 2019. <br/>
##### License: [Amazon license](https://s3.amazonaws.com/amazon-reviews-pds/license.txt)


<a name="tgbl-coin"/>

----------

### Dataset `tgbl-coin` ([Leaderboard](../leader_linkprop/#tgbl-coin)):

**Temporal Graph:** This is a cryptocurrency transaction dataset based on the Stablecoin ERC20 transactions dataset. Each node is an address and each edge represents the transfer of funds from one address to another at a time. The network starts from April 1st, 2022, and ends on November 1st, 2022, and contains transaction data of 5 stablecoins and 1 wrapped token. This duration includes the Terra Luna crash where the token lost its fixed price of 1 USD. 


**Prediction task:** The considered task for this dataset is to predict with which destination a given address will interact at a given time.


#### References

[3] K. Shamsi, Y. R. Gel, M. Kantarcioglu, and C. G. Akcora. Chartalist: Labeled graph datasets for utxo and account-based blockchains. In Advances in Neural Information Processing Systems 36: Annual Conference on Neural Information Processing Systems 2022, NeurIPS 2022, November 29-December 1, 2022, New Orleans, LA, USA, pages 1–14, 2022. <br/>
##### License: CC BY-NC license (Attribution-NonCommercial)


<a name="tgbl-comment"/>

----------

### Dataset `tgbl-comment` ([Leaderboard](../leader_linkprop/#tgbl-comment)):

**Temporal Graph:** This dataset is a directed reply network of Reddit where users reply to each other’s threads. Each node is a user and each interaction is a reply from one user to another. The network starts from 2005 and ends at 2010. 

**Prediction task:** The considered task for this dataset is to predict if a given user will reply to another one at a given time.

#### References

[4] A. Nadiri and F. W. Takes. A large-scale temporal analysis of user lifespan durability on the reddit social media platform. In Companion Proceedings of the Web Conference 2022, pages 677–685, 2022. <br/>
##### License: CC BY-NC license (Attribution-NonCommercial)

<a name="tgbl-flight"/>

----------

### Dataset `tgbl-flight` ([Leaderboard](../leader_linkprop/#tgbl-flight)):

**Temporal Graph:**  This dataset is a crowd sourced international flight network from 2019 to 2022. The airports are modeled as nodes, while the edges are flights between airports at a given day. The node features include the type of the airport, the continent where the airport is located, the ISO region code of the airport as well as its longitude and latitude. The edge feature is the associated flight number.

**Prediction task:** The considered task for this dataset is to predict if a given flight will exist between a source and destination airport at a specified day.

#### References

[5] M. Strohmeier, X. Olive, J. Lübbe, M. Schäfer, and V. Lenders. Crowdsourced air traffic data from the opensky network 2019–2020. Earth System Science Data, 13(2):357–366, 2021. <br/>

##### License: [Opensky license](https://zenodo.org/record/7323875#.ZEmhTnZKguU)



<a name="numpy"/>

----------

### Numpy Arrays

To load a dataset replace the name variable with a dataset name. See more from the [TGB tutorial](https://github.com/shenyangHuang/TGB/blob/main/docs/tutorials/Edge_data_numpy.ipynb)

```python
from tgb.linkproppred.dataset import LinkPropPredDataset

name = "tgbl-wiki"

dataset = LinkPropPredDataset(name=name, root="datasets", preprocess=True)

data = dataset.full_data

type(data['sources']) #all source nodes of edges
```

<a name="pytorch"/>

### Pytorch Tensors

To load a dataset replace the name variable with a dataset name. 

```python
from tgb.linkproppred.dataset_pyg import PyGLinkPropPredDataset

name = "tgbl-wiki"

dataset = PyGLinkPropPredDataset(name=name, root="datasets")

dataset.src #all source nodes of edges
```

<a name="pyg"/>

#### Pytorch Geometric TemporalData

```python
from tgb.linkproppred.dataset_pyg import PyGLinkPropPredDataset

name = "tgbl-wiki"

dataset = PyGLinkPropPredDataset(name=name, root="datasets")

data = dataset.get_TemporalData()

type(data) #TemporalData object
```


<a name="eval"/>

----------

### Performance Evaluator

Please see detailed example of `linkproppred` [here](https://github.com/shenyangHuang/TGB/tree/main/examples/linkproppred)

```python
from tgb.linkproppred.evaluate import Evaluator

name = "tgbl-wiki"

evaluator = Evaluator(name=name)

metric = dataset.eval_metric
```

