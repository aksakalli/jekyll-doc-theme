---
title: Link Property Prediction
permalink: /docs/linkprop/
---

##### The task is to predict properties of edges (pairs of nodes).

### Summary

#### - Datasets

Scale | Name      | Package | #Nodes | #Edges\* |  Split Type   | Task Type     | Metric       |
|:---------:|:--------|:---------:|----------:|----------:|:----------------:|:------------------:|:----------------:|
Medium | [ogbl-ppa](#ogbl-ppa)      | >=1.1.1   | 576,289 |    30,326,273 |    Throughput  | Link prediction   |     Hits@100              |
Small | [ogbl-collab](#ogbl-collab)  | >=1.2.1       | 235,868 |    1,285,465 |     Time  | Link prediction   |     Hits@50              |
Small | [ogbl-ddi](#ogbl-ddi)       | >=1.2.1  | 4,267 |    1,334,889 |     Protein target  | Link prediction   |     Hits@20              |
Medium | [ogbl-citation2](#ogbl-citation2) | >=1.2.4       | 2,927,963 |    30,561,187 |     Time  | Link prediction   |     MRR      |
Medium | [ogbl-wikikg2](#ogbl-wikikg2)  | >=1.2.4       | 2,500,604 |    17,137,181 |     Time  | KG completion   |    MRR     |
Small | [ogbl-biokg](#ogbl-biokg)   | >=1.2.0      | 93,773 |  5,088,434 |  Random  | KG completion   |    MRR     |
Medium | [ogbl-vessel](#ogbl-vessel)*   | >=1.3.4      | 3,538,495 |  5,345,897 |  Random  | Link prediction   |    ROC-AUC     |

**Note:** For undirected graphs, the loaded graphs will have the doubled number of edges because we add the bidirectional edges automatically.
\* indicates the externally-contributed datasets.

#### - Module
We prepare different [data loader](#loader) variants: (1) [Pytorch Geometric one](#pyg) (2) [DGL one](#dgl) and (3) [library-agnostic one](#libagn).
We also prepare a unified [performance evaluator](#eval).

<a name="ogbl-ppa"/>

----------

### Dataset `ogbl-ppa` ([Leaderboard](../leader_linkprop/#ogbl-ppa)):

**Graph:** The `ogbl-ppa` dataset is an undirected, unweighted graph. Nodes represent proteins from 58 different species, and edges indicate biologically meaningful associations between proteins, e.g., physical interactions, co-expression, homology or genomic neighborhood [1]. We provide a graph object constructed from training edges (no validation and test edges are contained). Each node contains a 58-dimensional one-hot feature vector that indicates the species that the corresponding protein comes from.

**Prediction task:** The task is to predict new association edges given the training edges.
The evaluation is based on how well a model ranks positive test edges over negative test edges.
Specifically, we rank each positive edge in the validation/test set against 3,000,000 randomly-sampled negative edges, and count the ratio of positive edges that are ranked at K-th place or above (Hits@K). We found K=100 to be a good threshold to rate a model's performance in our initial experiments.
Overall, this metric is way more challenging than ROC-AUC because the model needs to consistently rank the positive edges higher than *nearly all* the negative edges.

**Dataset splitting:** We provide a biological throughput split of the edges into training/validation/test edges.
Training edges are protein associations that are measured experimentally by a high-throughput technology (e.g., cost-effective, automated experiments that make large scale repetition feasible or are obtained computationally (e.g., via text-mining). In contrast, validation and test edges contain protein associations that can only be measured by low-throughput, resource-intensive experiments performed in laboratories.
In particular, the goal is to predict a particular type of protein association, e.g., physical protein-protein interaction, from other types of protein associations (e.g., co-expression, homology, or genomic neighborhood) that can be more easily measured and are known to correlate with associations that we are interested in. 


#### References

[1] Damian Szklarczyk, Annika L Gable, David Lyon, Alexander Junge, Stefan Wyder, Jaime Huerta- Cepas, Milan Simonovic, Nadezhda T Doncheva, John H Morris, Peer Bork, et al. STRING v11: protein–protein association networks with increased coverage, supporting functional discovery in genome-wide experimental datasets. Nucleic Acids Research, 47(D1):D607–D613, 2019. <br/>
##### License: CC-0

<a name="ogbl-collab"/>

----------

### Dataset `ogbl-collab` ([Leaderboard](../leader_linkprop/#ogbl-collab)):

**Graph:** The `ogbl-collab` dataset is an undirected graph, representing a subset of the collaboration network between authors indexed by MAG.
Each node represents an author and edges indicate the collaboration between authors. All nodes come with 128-dimensional features, obtained by averaging the word embeddings of papers that are published by the authors. All edges are associated with two meta-information: the year and the edge weight, representing the number of co-authored papers published in that year. 
The graph can be viewed as a dynamic multi-graph since there can be multiple edges between two nodes if they collaborate in more than one year. 


**Prediction task:** The task is to predict the future author collaboration relationships given the past collaborations. The goal is to rank true collaborations higher than false collaborations. Specifically, we rank each true collaboration among a set of 100,000 randomly-sampled negative collaborations, and count the ratio of positive edges that are ranked at K-place or above (Hits@K). We found K = 50 to be a good threshold in our preliminary experiments.

**Dataset splitting:** We split the data according to time, in order to simulate a realistic application in collaboration recommendation. Specifically, we use the collaborations until 2017 as training edges, those in 2018 as validation edges, and those in 2019 as test edges.


#### References

[1] Kuansan Wang, Zhihong Shen, Chiyuan Huang, Chieh-Han Wu, Yuxiao Dong, and Anshul Kanakia.Microsoft academic graph:  When experts are not enough. Quantitative Science Studies, 1(1):396–413, 2020. <br/>
##### License: ODC-BY


<a name="ogbl-ddi"/>

----------

### Dataset `ogbl-ddi` ([Leaderboard](../leader_linkprop/#ogbl-ddi)):

**Graph:** The `ogbl-ddi` dataset is a homogeneous, unweighted, undirected graph, representing the drug-drug interaction network [1]. Each node represents an FDA-approved or experimental drug. Edges represent interactions between drugs and can be interpreted as a phenomenon where the joint effect of taking the two drugs together is considerably different from the expected effect in which drugs act independently of each other. 


**Prediction task:** The task is to predict drug-drug interactions given information on already known drug-drug interactions. The evaluation metric is similar to [`ogbl-collab`](#ogbl-collab), where we would like the model to rank true drug interactions higher than non-interacting drug pairs. Specifically, we rank each true drug interaction among a set of approximately 100,000 randomly-sampled negative drug interactions, and count the ratio of positive edges that are ranked at K-place or above (Hits@K). We found K = 20 to be a good threshold in our preliminary experiments.

**Dataset splitting:** We develop a *protein-target split*, meaning that we split drug edges according to what proteins those drugs target in the body. As a result, the test set consists of drugs that predominantly bind to different proteins from drugs in the train and validation sets. This means that drugs in the test set work differently in the body, and have a rather different biological mechanism of action than drugs in the train and validation sets. The protein-target split thus enables us to evaluate to what extent the models can generate practically useful predictions [2], i.e., non-trivial predictions that are not hindered by the assumption that there exist already known and very similar medications available for training.


#### References

[1] David S Wishart, Yannick D Feunang, An C Guo, Elvis J Lo, Ana Marcu, Jason R Grant, TanvirSajed, Daniel Johnson, Carin Li, Zinat Sayeeda, et al.  DrugBank 5.0:  a major update to theDrugBank database for 2018. Nucleic Acids Research, 46(D1):D1074–D1082, 2018. <br/>
[2] Emre Guney. Reproducible drug repurposing: When similarity does not suffice. In Pacific Symposiumon Biocomputing, pp. 132–143, 2017. <br/>
##### License: CC-0


<a name="ogbl-citation2"/>

----------

### Dataset `ogbl-citation2` ([Leaderboard](../leader_linkprop/#ogbl-citation2)):

**Graph:** The `ogbl-citation2` dataset is a directed graph, representing the citation network between a subset of papers extracted from MAG [1]. 
Dach node is a paper with 128-dimensional word2vec features [2] that summarizes its title and abstract, and each directed edge indicates that one paper cites another. All nodes also come with meta-information indicating the year the corresponding paper was published. 


**Prediction task:** The task is to predict missing citations given existing citations. Specifically, 
for each source paper, two of its references are randomly dropped, and we would like the model to rank the missing two references higher than 1,000 negative reference candidates.
The negative references are randomly-sampled from all the previous papers that are not referenced by the source paper. 
The evaluation metric is Mean Reciprocal Rank (MRR), where the reciprocal rank of the true reference among the negative candidates is calculated for each source paper, and then the average is taken over all source papers. 

**Dataset splitting:** We split the edges according to time, in order to simulate a realistic application in citation recommendation (e.g., a user is writing a new paper and has already cited several existing papers, but wants to be recommended additional references). To this end, we use the most recent papers (those published in 2019) as the source papers for which we want to recommend the references. For each source paper, we drop *two* papers from its references---the resulting two dropped edges (pointing from the source paper to the dropped papers) are used respectively for validation and testing. All the rest of the edges are used for training.

**Version:**
`ogbl-citation2` is available for `ogb>=1.2.4`.
The previous version `ogbl-citation` is deprecated for `ogb>=1.2.4` due to a bug in negative samples of validation/test sets (many nodes are not sampled as negative samples). The issue is resolved in `ogbl-citation2`.
The deprecated leaderboard of `ogbl-citation` can be found [here](../leader_deprecated/#ogbl-citation).


#### References

[1] Kuansan Wang, Zhihong Shen, Chiyuan Huang, Chieh-Han Wu, Yuxiao Dong, and Anshul Kanakia.Microsoft academic graph:  When experts are not enough. Quantitative Science Studies, 1(1):396–413, 2020. <br/>
[2] Tomas Mikolov, Ilya Sutskever, Kai Chen, Greg S Corrado, and Jeff Dean. Distributed representationsof words and phrases and their compositionality. In Advances in Neural Information Processing Systems (NeurIPS), pp. 3111–3119, 2013. <br/>
##### License: ODC-BY

<a name="ogbl-wikikg2"/>

----------

### Dataset `ogbl-wikikg2` ([Leaderboard](../leader_linkprop/#ogbl-wikikg2)):

**Graph:** The `ogbl-wikikg2` dataset is a Knowledge Graph (KG) extracted from the Wikidata knowledge base [1]. It contains a set of triplet edges (`head`, `relation`, `tail`), capturing the different types of relations between entities in the world, e.g., (Canada, citizen, Hinton). We retrieve all the relational statements in Wikidata and filter out rare entities. Our KG contains 2,500,604 entities and 535 relation types.


**Prediction task:** The task is to predict new triplet edges given the training edges. The evaluation metric follows the standard filtered metric widely used in KG. Specifically, we corrupt each test triplet edges by replacing its `head` or `tail` with randomly-sampled 1,000 negative entities (500 for `head` and 500 for `tail`), while ensuring the resulting triplets do not appear in KG. The goal is to rank the true `head` (or `tail`) entities higher than the negative entities, which is measured by Mean Reciprocal Rank (MRR).

**Dataset splitting:** We split the triplets according to time, simulating a realistic KG completion scenario that aims to fill in missing triplets that are not present at a certain timestamp.
Specifically, we downloaded Wikidata at three different time stamps [2] \(May, August, and November of 2015\), and construct three KGs, where we only retain entities and relation types that appear in the earliest May KG.
We use the triplets in the May KG for training, and use the additional triplets in the August and November KGs for validation and test, respectively.
Note that our dataset split is different from the existing Wikidata KG dataset that adopts conventional random split [3], which does not reflect the practical usage.

**Version:**
`ogbl-wikikg2` is available for `ogb>=1.2.4`.
The previous version `ogbl-wikikg` is deprecated for `ogb>=1.2.4` due to a bug in negative samples of validation/test sets (many nodes are not sampled as negative samples). The issue is resolved in `ogbl-wikikg2`.
The deprecated leaderboard of `ogbl-wikikg` can be found [here](../leader_deprecated/#ogbl-wikikg).


#### References

[1] Denny Vrandecˇic ́ and Markus Krötzsch. Wikidata: a free collaborative knowledgebase. Communications of the ACM, 57(10):78–85, 2014. <br/>
[2] [https://archive.org/search.php?query=creator\%3A\%22Wikidata+editors\%22](https://archive.org/search.php?query=creator\%3A\%22Wikidata+editors\%22) <br/>
[3] Xiaozhi Wang, Tianyu Gao, Zhaocheng Zhu, Zhiyuan Liu, Juanzi Li, and Jian Tang. Kepler: A unified model for knowledge embedding and pre-trained language representation. arXiv preprint arXiv:1911.06136, 2019. <br/>
##### License: CC-0


<a name="ogbl-biokg"/>

----------

### Dataset `ogbl-biokg` ([Leaderboard](../leader_linkprop/#ogbl-biokg)):

**Graph:** The `ogbl-biokg` dataset is a Knowledge Graph (KG), which we created using data from a large number of biomedical data repositories. 
It contains 5 types of entities: diseases (10,687 nodes), proteins (17,499), drugs (10,533 nodes), side effects (9,969 nodes), and protein functions (45,085 nodes). There are 51 types of directed relations connecting two types of entities, including 38 kinds of drug-drug interactions, 8 kinds of protein-protein interaction, as well as drug-protein, drug-side effect, function-function relations. All relations are modeled as directed edges, among which the relations connecting the same entity types (e.g., protein-protein, drug-drug, function-function) are always symmetric, i.e., the edges are bi-directional. 

This dataset is relevant to both biomedical and fundamental ML research.
On the biomedical side, the dataset allows us to get better insights into human biology and generate predictions that can guide downstream biomedical research. On the fundamental ML side, the dataset presents challenges in handling a noisy, incomplete KG with possible contradictory observations.
This is because the `ogbl-biokg` dataset involves heterogeneous interactions that span from the molecular scale (e.g., protein-protein interactions within a cell) to whole populations (e.g., reports of unwanted side effects experienced by patients in a particular country). Further, triplets in the KG come from sources with a variety of confidence levels, including experimental readouts, human-curated annotations, and automatically extracted metadata. 


**Prediction task:** The task is to predict new triplets given the training triplets. The evaluation protocol is exactly the same as [`ogbl-wikikg2`](#ogbl-wikikg2), except that here we only consider ranking against *entities of the same type*. For instance, when corrupting head entities of the protein type, we only consider negative protein entities.

**Dataset splitting:** For this dataset, we adopt a random split. While splitting the triplets according to time is an attractive alternative, we note that it is incredibly challenging to obtain accurate information as to when individual experiments and observations underlying the triplets were made. We strive to provide additional dataset splits in future versions of the OGB. <br/>
##### License: CC-0

<a name="ogbl-vessel"/>

----------

### Dataset `ogbl-vessel` ([Leaderboard](../leader_linkprop/#ogbl-vessel)):

**Graph:** The `ogbl-vessel` dataset is an undirected, unweighted spatial graph of the whole mouse brain [1]. To generate it we developed a graph extraction pipeline, where nodes represent bifurcation points, and edges represent the vessels. The node features are 3-dimensional, representing the spatial (x, y, z) coordinates of the nodes in Allen Brain atlas reference space.

The `ogbl-vessel` graph aims to inspire researchers in the neuroscience domain to adapt graph-structure representations for their research. For machine learning researchers, the presented dataset raises challenging graph learning research questions in terms of incorporating biological priors into learning algorithms, or in scaling these algorithms to handle sparse, spatial graphs with millions of nodes and edges. In the original repository we provide an alternative line graph representation and additional edge features. 

This dataset is externally contributed by [Johannes C.Paetzold](mailto:johannes.paetzold@tum.de), to whom any inquiry should be directed.

**Prediction task:**  The task is to predict links between two nodes. The link prediction task aims at predicting if a vessel exists (1) or not (0), and serves for graph completion and missing link detection.

**Dataset splitting:** We split the whole brain graph randomly, using a 80/10/10 split ratio and provide a spatial sampling strategy for the negative edges. 

#### References
[1] Johannes C. Paetzold, Julian McGinnis, Suprosanna Shit, Ivan Ezhov, Paul Büschl, Chinmay Prabhakar, Anjany Sekuboyina, Mihail Todorov, Georgios Kaissis, Ali Ertürk, Stephan Günnemann, Björn Menze. Whole Brain Vessel Graphs: A Dataset and Benchmark for Graph Learning and Neuroscience. Thirty-fifth Conference on Neural Information Processing Systems Datasets and Benchmarks Track. 2021. arXiv:2108.13233  <br/>
[2] Mihail Ivilinov Todorov, Johannes Christian Paetzold, Oliver Schoppe, Giles Tetteh, Suprosanna Shit, Velizar Efremov, Katalin Todorov-Völgyi, Marco Düring, Martin Dichgans, Marie Piraud, Bjoern Menze, Ali Ertürk. Machine learning analysis of whole mouse brain vasculature. Nature methods 17.4 : 442-449. 2020 <br/>
##### License: CC BY-NC 4.0


<a name="loader"/>

----------

### Data Loader

To load a dataset, replace `d_name` with the dataset name (e.g., `"ogbl-ppa"`).

<a name="pyg"/>

#### Pytorch Geometric Loader

```python
from ogb.linkproppred import PygLinkPropPredDataset

dataset = PygLinkPropPredDataset(name = d_name) 

split_edge = dataset.get_edge_split()
train_edge, valid_edge, test_edge = split_edge["train"], split_edge["valid"], split_edge["test"]
graph = dataset[0] # pyg graph object containing only training edges
```

<a name="dgl"/>

#### DGL Loader

```python
from ogb.linkproppred import DglLinkPropPredDataset

dataset = DglLinkPropPredDataset(name = d_name)

split_edge = dataset.get_edge_split()
train_edge, valid_edge, test_edge = split_edge["train"], split_edge["valid"], split_edge["test"]
graph = dataset[0] # dgl graph object containing only training edges
```
`{train,valid,edge}_edge` contains the splitting of edges whose format is dataset-dependent. For instance, it can be a dictionary containing positive and negative edges. For KG, it is a dictionary containing three keys: `head`, `relation`, and `tail`, and i-th triplet in KG is simply i-th elements of `head`, `relation`, and `tail`.
<!-- An undirected graph should include bidirectional edges for each pair of nodes that are connected by an edge. We include the bidirectional edges in the graph object so that messages in GNNs flow in both directions. To keep a low-memory footprint, we did not add in `{train,valid,edge}_edge`. -->

<a name="libagn"/>

#### Library-Agnostic Loader
```python
from ogb.linkproppred import LinkPropPredDataset

dataset = LinkPropPredDataset(name = d_name)

split_edge = dataset.get_edge_split()
train_edge, valid_edge, test_edge = split_edge["train"], split_edge["valid"], split_edge["test"]
graph = dataset[0] # graph: library-agnostic graph object
```
The library-agnostic graph object is a dictionary containing the following keys: `edge_index`, `edge_feat`, `node_feat`, and `num_nodes`, which are detailed below.
- `edge_index`: numpy ndarray of shape `(2, num_edges)`, where each column represents an edge. The first row and the second row represent the indices of source and target nodes. Undirected edges are represented by bi-directional edges.
- `edge_feat`: numpy ndarray of shape `(num_edges, edgefeat_dim)`, where `edgefeat_dim` is the dimensionality of edge features and i-th row represents the feature of i-th edge. This can be `None` if no input edge features are available.
- `node_feat`: numpy ndarray of shape `(num_nodes, nodefeat_dim)`, where `nodefeat_dim` is the dimensionality of node features and i-th row represents the feature of i-th node. This can be `None` if no input node features are available.
- `num_nodes`: number of nodes in the graph.

**Heterogeneous graph:** We represent a heterogeneous graph using dictionaries: `edge_index_dict`, `edge_feat_dict`, `node_feat_dict`, and `num_nodes_dict`. 
- `edge_index_dict`: A dictionary mapping each triplet `(head type, relation type, tail type)` into corresponding `edge_index`.
- `edge_feat_dict`: A dictionary mapping each triplet `(head type, relation type, tail type)` into corresponding `edge_feat`.
- `node_feat_dict`: A dictionary mapping each `node type` into corresponding `node_feat`.
- `num_nodes_dict`: A dictionary mapping each `node type` into corresponding `num_nodes`.

**Note:** Some graph datasets may contain additional meta-information in node or edges such as their time stamps. Although they are not given as default input features, researchers should feel free to exploit these additional information.


<a name="eval"/>

----------

### Performance Evaluator

Evaluators are customized for each dataset.
We require users to pass a pre-specified format to the evaluator.
First, please learn the input and output format specification of the evaluator as follows.

```python
from ogb.linkproppred import Evaluator

evaluator = Evaluator(name = d_name)
print(evaluator.expected_input_format) 
print(evaluator.expected_output_format) 
```

Then, you can pass the input dictionary (denoted by `input_dict` below) of the specified format, and get the performance of your prediction.

```python
# In most cases, input_dict is
# input_dict = {"y_true": y_true, "y_pred": y_pred}
result_dict = evaluator.eval(input_dict)
```

