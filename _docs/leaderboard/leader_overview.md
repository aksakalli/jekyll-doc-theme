---
title: Leaderboards
permalink: /docs/leader_overview/
---

Public leaderboards allow researchers to keep track of state-of-the-art methods and encourage reproducible research. <br/>
**Important**: Please make sure your experimental protocol follows the rules [here](../leader_rules).

-----

### How Leaderboards Work?

Once you have developed your model and got results, you can submit your test results to our leaderboards. 
For each dataset, we require you to submit the following information.

- **OGB version**: The OGB version used to conduct the experiments. **Must satisfy the version requirement for each dataset.**
- **Method**: The name of the method.
- **External data:** When building your model, indicate whether you use external data (in the form of external pre-trained models, raw text, external unlabeled/labeled data)? If "Yes", please clearly indicate that in your method name above, e.g., GIN (pre-trained on PubChem).
- **Dataset**: The name of an OGB dataset that you use to evaluate the method.
- **Test performance**: Raw test performance output by OGB model evaluators, where **average (`torch.mean`) and unbiased standard deviation (`torch.std`) must be taken over 10 different random seeds.** You can either not fix random seeds at all, or use the random seeds from 0 to 9. We highly discourage you to tune the random seeds. For the large [`ogbn-papers100M`](../nodeprop/#ogbn-papers100M), you only need to use 3 random seeds to report the performance.
- **Validation performance**: Validation performance of the model that is used to report the test performance above.
- **Contact**: A person's name and email address to contact about the method and code. 
- **Code**: The Github repository or directory containining all code to reproduce the result. **A placeholder repository is not allowed.**
    - We recommend using Pytorch.
    - The authors are responsible for addressing any inquiry about their code. 
    - **Please add `README` and provide enough instruction (i.e., exact command) to reproduce the submitted result.** A good example is [this](https://github.com/snap-stanford/ogb/tree/master/examples/lsc/pcqm4m).
- **Paper**: The original paper describing the method (arXiv link is recommended. paper needs not be peer-reviewed). **If your method has any original component (e.g., even just combining existing methods XXX and YYY), you have to write a technical report describing it (e.g., how you exactly combined XXX and YYY).**
- **#Params**: The number of parameters of your model, which can be calculated by `sum(p.numel() for p in model.parameters())`. If you use multi-stage training (e.g., apply node2vec and then MLP), please sum up all the parameters (both node2vec and MLP parameters).
- **Tuned hyper-parameters**: Please kindly disclose all the hyper-parameters you tuned, and how much you tuned for each of them. Please follow the following form: `"lr: [0.001*, 0.01], num_layers: [4*,5], hidden_channels: [128, 256*], dropout: [0*, 0.5], epochs: early-stop*"`, where the asterisks (\*) denote the hyper-parameters you eventually selected (based on validation performance) to report the test performance. This information will not appear in the leaderboard for the time being, but it is important for us to keep the record and encourage the fair model selection.
- **Hardware**: The hardware (primarily for GPU) used for the experiments, e.g., GeForce RTX 2080 (11GB GPU). If multiple GPUs are used, please specify so.
- **Officiality**: Whether the implementation is **official** (implementation by authors who proposed the method) or **unofficial** (re-implementation of the method by non-authors).

**Note:** OGB is a platform for reproducible and reliable research. We will remove any invalid submissions, so please make sure all the results are correct and reproducible before submitting them.
Please [contact us](mailto:ogb@cs.stanford.edu) if there is anything unclear or you have found any problematic submission on the leaderboards.

**To authors of original papers/methods:** We highly encourage you to contribute your **official result** to the OGB leaderboards. Even if your method is published *before* the OGB release, please still evaluate your method on OGB datasets and contribute to the leaderboards. **This would be a great opporunity to let people know about your work and compare with it.** 

**To contributors who re-implement existing methods:** Even if you are not the original authors, we still encourage you to contribute your **unofficial result** to the leaderboards. This would be valuable especially when your own implementation of existing methods achieve **significantly better** performance than the official counterpart (e.g., by running for longer epochs, or by tuning hyper-parameters more carefully).
Simple tricks can sometimes make methods significantly better!
If your submission is a non-trivial extension of an exiting method, we encourage you to make it an official submission and write an original technical report. Otherwise, please explicitly mention the extension both in the method name and Github `README`. 

----

### How to Submit?

Use the [Google form](https://forms.gle/7PB7375i5P1rHgng6) to make a submission. 

The results will be posted after we check the model validity (expect to take about about a week). 

-----

### Explore Leaderboards

* [Node Property Prediction](../leader_nodeprop)

* [Link Property Prediction](../leader_linkprop)

* [Graph Property Prediction](../leader_graphprop)
