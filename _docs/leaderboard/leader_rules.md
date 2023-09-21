---
title: Rules for Leaderboard Submissions
permalink: /docs/leader_rules/
---

----

### Preamble
Here we present the rules of how we expect the community to use train/validation/test labels for the leaderboard submissions. 
The rules are designed to enforce the standardized experimental protocol for easy and direct model comparison. We acknowledge that these rules are by no means perfect but are a starting point for a standardized comparison for temporal graph learning. There are settings / use cases in temporal graph learning not currently covered in this work. We Hope to continue to expand TGB and improve its evaluation setting and procedures. Feedbacks from the community is highly welcome. 

In this work, we consider the <b> <u> streaming setting </u> </b> where information from the test set is only employed for updating the memory module in temporal graph learning methods and no back-propagation is possible based on the test set information. (see Appendix C in the paper for more details.)


---
### Rules

The general rules are as follows.
- **Training Split**: All data including edges, nodes, labels can be used in whatever ways to train the model parameters i.e. for graident-descent, model tuning, model input etc. <br/>
- **Validation Split**: Meant for standard hyper-parameters tuning (not allowed: gradient-based search, graident-descent). Can be used for memory module. <br/>
- **Test Split**: Final model evaluation, no hyper-parameters tuning allowed. Can be used for memory module 
<!-- 
**The only exception is the [`ogbl-collab`](../linkprop/#ogbl-collab) dataset**, where the task is to predict author collaborations at a particular year given all the past collaborations. For this dataset only, we allow validation labels to be used both for model training and as model input, **after all the model hyper-parameters are fixed using the validation labels.** -->

<!-- ##### **Remarks**
- For link property prediction datasets (`ogbl-*`), "labels" should be interpreted as "edges."
- Some ML models might want to utilize validation labels more directly. For the sake of leaderboard submissions, we enforce the above rules, i.e., do not allow the validation labels to be used beyond the standard hyper-parameter tuning. See our rationale and discussion [here](https://github.com/snap-stanford/ogb/issues/73#issuecomment-707258886). -->

