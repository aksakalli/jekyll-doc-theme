---
title: Graph Property Prediction
permalink: /docs/graphprop/
---

##### The task is to predict properties of entire graphs or subgraphs.

### Summary

#### - Datasets

Scale | Name  | Package   | #Graphs   | #Nodes per graph | #Edges per graph\* | #Tasks | Split Type  | Task Type   | Metric                           |
|:-----:|:-------|----------:|----------:|-------------:|------------------:|:-----------:|:----------:|
Small | [ogbg-molhiv](#ogbg-mol) | >=1.1.1 | 41,127 | 25.5 | 27.5 | 1   | Scaffold  |  Binary classification | ROC-AUC  |
Medium | [ogbg-molpcba](#ogbg-mol)| >=1.2.2  | 437,929 | 26.0 | 28.1 | 128   | Scaffold  |  Binary classification | AP  |
Medium | [ogbg-ppa](#ogbg-ppa) | >=1.1.1 | 158,100 | 243.4 | 2,266.1 | 1  | Species  |  Multi-class classification | Accuracy  |
Medium | [ogbg-code2](#ogbg-code2) | >=1.2.5 | 452,741 | 125.2 | 124.2 | 1  | Project  |  Sub-token prediction | F1 score  |


**Note:** For undirected graphs, the loaded graphs will have the doubled number of edges because we add the bidirectional edges automatically.


#### - Module
We prepare different [data loader](#loader) variants: (1) [Pytorch Geometric one](#pyg) (2) [DGL one](#dgl) and (3) [library-agnostic one](#libagn).
We also prepare a unified [performance evaluator](#eval).

<a name="ogbg-mol"/>

----------

### Datasets `ogbg-molhiv` ([Leaderboard](../leader_graphprop/#ogbg-molhiv)) and `ogbg-molpcba` ([Leaderboard](../leader_graphprop/#ogbg-molpcba)):

**Graph:** 
The `ogbg-molhiv` and `ogbg-molpcba` datasets are two molecular property prediction datasets of different sizes: `ogbg-molhiv` (small) and `ogbg-molpcba` (medium). They are adopted from the MoleculeNet [1], and are among the largest of the MoleculeNet datasets. All the molecules are pre-processed using RDKit [2]. Each graph represents a molecule, where nodes are atoms, and edges are chemical bonds. Input node features are 9-dimensional, containing atomic number and chirality, as well as other additional atom features such as formal charge and whether the atom is in the ring or not.
The full description of the features is provided in [code](https://github.com/snap-stanford/ogb/blob/master/ogb/utils/features.py). The script to convert the SMILES string [3] to the above graph object can be found [here](https://github.com/snap-stanford/ogb/blob/master/ogb/utils/mol.py).
Note that the script requires [RDkit](https://www.rdkit.org/docs/GettingStartedInPython.html) to be installed. The script can be used to pre-process external molecule datasets so that those datasets share the same input feature space as the OGB molecule datasets. This is particularly useful for pre-training graph models, which has great potential to significantly increase generalization performance on the (*downstream*) OGB datasets [4].

Beside the two main datasets, we additionally provide 10 smaller datasets from MoleculeNet. They are `ogbg-moltox21`, `ogbg-molbace`, `ogbg-molbbbp`, `ogbg-molclintox`, `ogbg-molmuv`, `ogbg-molsider`, and `ogbg-moltoxcast` for (multi-task) binary classification, and `ogbg-molesol`, `ogbg-molfreesolv`, and `ogbg-mollipo` for regression. Evaluators are also provided for these datasets. These datasets can be used to stress-test molecule-specific methods or transfer learning [4].

For encoding these raw input features, we prepare simple modules called `AtomEncoder` and `BondEncoder`. They can be used as follows to embed raw atom and bond features to obtain `atom_emb` and `bond_emb`.
```python
from ogb.graphproppred.mol_encoder import AtomEncoder, BondEncoder
atom_encoder = AtomEncoder(emb_dim = 100)
bond_encoder = BondEncoder(emb_dim = 100)

atom_emb = atom_encoder(x) # x is input atom feature
edge_emb = bond_encoder(edge_attr) # edge_attr is input edge feature
```

#### Datasets

**Prediction task:**  The task is to predict the target molecular properties as accurately as possible, where the molecular properties are cast as binary labels, e.g, whether a molecule inhibits HIV virus replication or not. Note that some datasets (e.g., `ogbg-molpcba`) can have multiple tasks, and can contain `nan` that indicates the corresponding label is not assigned to the molecule.
For evaluation metric, we closely follow [1].
Specifically, for `ogbg-molhiv`, we use ROC-AUC for evaluation. For `ogbg-molpcba`, as the class balance is extremely skewed (only 1.4% of data is positive) and the dataset contains multiple classification tasks, we use the Average Precision (AP) averaged over the tasks as the evaluation metric.


**Dataset splitting:**
We adopt the *scaffold splitting* procedure that splits the molecules based on their two-dimensional structural frameworks. The scaffold splitting attempts to separate structurally different molecules into different subsets, which provides a more realistic estimate of model performance in prospective experimental settings [1].

#### References

[1] Zhenqin Wu, Bharath Ramsundar, Evan N Feinberg, Joseph Gomes, Caleb Geniesse, Aneesh SPappu, Karl Leswing, and Vijay Pande. Moleculenet: a benchmark for molecular machine learning. Chemical Science, 9(2):513–530, 2018. <br/>
[2] Greg Landrum et al. RDKit: Open-source cheminformatics, 2006. <br/>
[3] Eric Anderson, Gilman D. Veith, and David Weininger. SMILES: a line notation and computerized interpreter for chemical structures, 1987. <br/>
[4] Weihua Hu, Bowen Liu, Joseph Gomes, Marinka Zitnik, Percy Liang, Vijay Pande, and Jure Leskovec.Strategies  for pre-training  graph  neural networks. In International Conference  on Learning Representations (ICLR), 2020.<br/>
##### License: MIT

<a name="ogbg-ppa"/>

----------

### Dataset `ogbg-ppa` ([Leaderboard](../leader_graphprop/#ogbg-ppa)): 

**Graph:** The `ogbg-ppa` dataset is a set of undirected protein association neighborhoods extracted from the protein-protein association networks of 1,581 different species [1] that cover 37 broad taxonomic groups (e.g., mammals, bacterial families, archaeans) and span the tree of life [2]. To construct the neighborhoods, we randomly selected 100 proteins from each species and constructed 2-hop protein association neighborhoods centered on each of the selected proteins [3]. We then removed the center node from each neighborhood and subsampled the neighborhood to ensure the final protein association graph is small enough (less than 300 nodes). Nodes in each protein association graph represent proteins, and edges indicate biologically meaningful associations between proteins. The edges are associated with 7-dimensional features, where each element takes a value between 0 and 1 and represents the approximate confidence of a particular type of protein protein association such as gene co-occurrence, gene fusion events, and co-expression.


**Prediction task:** Given a protein association neighborhood graph, the task is a 37-way multi-class classification to predict what taxonomic group the graph originates from. The ability to successfully tackle this problem has implications for understanding the evolution of protein complexes across species, the rewiring of protein interactions over time, the discovery of functional associations between genes even for otherwise rarely-studied organisms, and would give us insights into key bioinformatics tasks, such as biological network alignment. 

**Dataset splitting:** We adopt the *species split*, where the neighborhood graphs in validation and test sets are extracted from protein association networks of species that are not seen during training but belong to one of the 37 taxonomic groups.
This split stress-tests the model's capability to extract graph features that are essential to the prediction of the taxonomic groups, which is important for biological understanding of protein associations.

#### References
[1] Damian Szklarczyk, Annika L Gable, David Lyon, Alexander Junge, Stefan Wyder, Jaime Huerta- Cepas, Milan Simonovic, Nadezhda T Doncheva, John H Morris, Peer Bork, et al. STRING v11: protein–protein association networks with increased coverage, supporting functional discovery in genome-wide experimental datasets. Nucleic Acids Research, 47(D1):D607–D613, 2019. <br/>
[2] Laura A Hug, Brett J Baker, Karthik Anantharaman, Christopher T Brown, Alexander J Probst, Cindy J Castelle, Cristina N Butterfield, Alex W Hernsdorf, Yuki Amano, Kotaro Ise, et al. A new view of the tree of life. Nature Microbiology, 1(5):16048, 2016. <br/>
[3] Marinka Zitnik, Marcus W Feldman, Jure Leskovec, et al. Evolution of resilience in protein interactomes across the tree of life. Proceedings of the National Academy of Sciences, 116(10): 4426–4433, 2019. <br/>
##### License: CC-O


<a name="ogbg-code2"/>

----------

### Dataset `ogbg-code2` ([Leaderboard](../leader_graphprop/#ogbg-code2)): 

**Graph:** The `ogbg-code2` dataset is a collection of Abstract Syntax Trees (ASTs) obtained from approximately 450 thousands Python method definitions. Methods are extracted from a total of 13,587 different repositories across the most popular projects on GitHub. Our collection of Python methods originates from GitHub CodeSearchNet, a collection of datasets and benchmarks for machine-learning-based code retrieval.
In `ogbg-code2`, we contribute an additional feature extraction step, which includes: AST edges, AST nodes, and tokenized method name. Altogether, `ogbg-code2` allows us to capture source code with its underlying graph structure, beyond its token sequence representation.


**Prediction task:** The task is to predict the sub-tokens forming the method name, given the Python method body represented by AST and its node features.
This task is often referred to as "code summarization", because the model is trained to find succinct and precise description (i.e., the method name chosen by the developer) for a complete logical unit (i.e., the method body). Code summarization is a representative task in the field of machine learning for code not only for its straightforward adoption in developer tools, but also because it is a proxy measure for assessing how well a model captures the code semantic [1]. 
Following [2,3], we use an F1 score to evaluate predicted sub-tokens against ground-truth sub-tokens.


**Dataset splitting:** We adopt a *project split* [4], where the ASTs for the train set are obtained from GitHub projects that do not appear in the validation and test sets. This split respects the practical scenario of training a model on a large collection of source code (obtained, for instance, from the popular GitHub projects), and then using it to predict method names on a separate code base. The project split stress-tests the model's ability to capture code's semantics, and avoids a model that trivially memorizes the idiosyncrasies of training projects (such as the naming conventions and the coding style of a specific developer) to achieve a high test score.

**Version:**
`ogbg-codeg2` is available for `ogb>=1.2.5`.
The previous version `ogbg-code` is deprecated for `ogb>=1.2.5` due to prediction target (i.e., method name) leakage in input AST. The issue is resolved in `ogbg-code2`, where the method name and its recursive definition in AST are replaced with a special token `_mask_`.
The deprecated leaderboard of `ogbg-code` can be found [here](../leader_deprecated/#ogbg-code).

#### References
[1] Miltiadis Allamanis, Earl T Barr, Premkumar Devanbu, and Charles Sutton. A survey of machinelearning for big code and naturalness.ACM Computing Surveys (CSUR), 51(4):1–37, 2018. <br/>
[2] Uri Alon, Shaked Brody, Omer Levy, and Eran Yahav. code2seq: Generating sequences from structured representations of code. arXiv preprint arXiv:1808.01400, 2018. <br/>
[3] Uri Alon, Meital Zilberstein, Omer Levy, and Eran Yahav. code2vec: Learning distributed rep-resentations of code. Proceedings of the ACM on Programming Languages,  3(POPL):1–29,2019. <br/>
[4] Miltiadis Allamanis. The adverse effects of code duplication in machine learning models of code. In Proceedings of the 2019 ACM SIGPLAN International Symposium on New Ideas, New Paradigms, and Reflections on Programming and Software, pp. 143–153, 2019. <br/>
##### License: MIT


<a name="loader"/>

----------------

### Data Loader

To load a dataset replace, d_name with the dataset name (e.g., `"ogbg-molhiv"`).

<a name="pyg"/>

#### Pytorch Geometric Loader

```python
from ogb.graphproppred import PygGraphPropPredDataset
from torch_geometric.data import DataLoader

dataset = PygGraphPropPredDataset(name = d_name) 

split_idx = dataset.get_idx_split() 
train_loader = DataLoader(dataset[split_idx["train"]], batch_size=32, shuffle=True)
valid_loader = DataLoader(dataset[split_idx["valid"]], batch_size=32, shuffle=False)
test_loader = DataLoader(dataset[split_idx["test"]], batch_size=32, shuffle=False)
```
Note that the prediction targets are stored in `dataset.y`.

<a name="dgl"/>

#### DGL Loader

```python
from ogb.graphproppred import DglGraphPropPredDataset, collate_dgl
from torch.utils.data import DataLoader

dataset = DglGraphPropPredDataset(name = d_name)

split_idx = dataset.get_idx_split()
train_loader = DataLoader(dataset[split_idx["train"]], batch_size=32, shuffle=True, collate_fn=collate_dgl)
valid_loader = DataLoader(dataset[split_idx["valid"]], batch_size=32, shuffle=False, collate_fn=collate_dgl)
test_loader = DataLoader(dataset[split_idx["test"]], batch_size=32, shuffle=False, collate_fn=collate_dgl)
```
Note that the i-th example and its prediction targets can be obtained by `graph, label = dataset[i]`.

<a name="libagn"/>

#### Library-Agnostic Loader
```python
from ogb.graphproppred import GraphPropPredDataset

dataset = GraphPropPredDataset(name = d_name)

split_idx = dataset.get_idx_split()
train_idx, valid_idx, test_idx = split_idx["train"], split_idx["valid"], split_idx["test"]

### set i as an arbitrary index
graph, label = dataset[i] # graph: library-agnostic graph object
```
The library-agnostic graph object is a dictionary containing the following keys: `edge_index`, `edge_feat`, `node_feat`, and `num_nodes`, which are detailed below.
- `edge_index`: numpy ndarray of shape `(2, num_edges)`, where each column represents an edge. The first row and the second row represent the indices of source and target nodes. Undirected edges are represented by bi-directional edges.
- `edge_feat`: numpy ndarray of shape `(num_edges, edgefeat_dim)`, where `edgefeat_dim` is the dimensionality of edge features and i-th row represents the feature of i-th edge. This can be `None` if no input edge features are available.
- `node_feat`: numpy ndarray of shape `(num_nodes, nodefeat_dim)`, where `nodefeat_dim` is the dimensionality of node features and i-th row represents the feature of i-th node. This can be `None` if no input node features are available.
- `num_nodes`: number of nodes in the graph.

**Note:** Some graph datasets may contain additional meta-information in node or edges such as their time stamps. Although they are not given as default input features, researchers should feel free to exploit these additional information.

<a name="eval"/>

----------

### Performance Evaluator

Evaluators are customized for each dataset.
We require users to pass a pre-specified format to the evaluator.
First, please learn the input and output format specification of the evaluator as follows.

```python
from ogb.graphproppred import Evaluator

evaluator = Evaluator(name = d_name)
print(evaluator.expected_input_format) 
print(evaluator.expected_output_format)  
```

Then, you can pass the input dictionary (denoted by `input_dict` below) of the specified format and get the performance of your prediction.

```python
# In most cases, input_dict is
# input_dict = {"y_true": y_true, "y_pred": y_pred}
result_dict = evaluator.eval(input_dict)
```

