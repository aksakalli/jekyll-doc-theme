---
title: Rules for Leaderboard Submissions
permalink: /docs/leader_rules/
---

----

<!-- ### Introduction -->
Here we present the rules of how we expect the community to use train/validation/test labels for the leaderboard submissions. 
The rules are designed to enforce the standardized experimental protocol for easy and direct model comparison. We acknowledge that these rules are by no means perfect but are a starting point for a standardized comparison for temporal graph learning. There are settings / use cases in temporal graph learning not currently covered in this work. We Hope to continue to expand TGB and improve its evaluation setting and procedures. Feedbacks from the community is highly welcome. 

In the TGB paper, we mainly focus on the <b> <u> streaming setting </u> </b>. Please note that the test set information is only used for updating the memory module (if any) of a temporal graph learning method. Thus, no back-propagation is allowed based on the test set information. For further details, please check Appendix C in the paper.


---
### Rules

The general rules are as follows.
- **Training Split**: All data including edges, nodes, labels can be used in whatever ways to train the model parameters i.e. for graident-descent, model tuning, model input etc. <br/>
- **Validation Split**: Meant for standard hyper-parameters tuning (not allowed: gradient-based search, graident-descent). Can be used for memory module. <br/>
- **Test Split**: Final model evaluation, no hyper-parameters tuning allowed. Can be used for memory module 


<!-- ##### **Remarks**
- For link property prediction datasets (`ogbl-*`), "labels" should be interpreted as "edges."
- Some ML models might want to utilize validation labels more directly. For the sake of leaderboard submissions, we enforce the above rules, i.e., do not allow the validation labels to be used beyond the standard hyper-parameter tuning. See our rationale and discussion [here](https://github.com/snap-stanford/ogb/issues/73#issuecomment-707258886). -->

### Leaderboard Submission
<p class="lead">
<font size="5">
To submit to TGB datasets, please fill in the following <a href="https://forms.gle/SEsXvN1QHo9tSFwx9">google form</a> and reach out to <a href="shenyang.huang@mail.mcgill.ca">shenyang.huang@mail.mcgill.ca</a> if you have any questions. All results should be reported across 5 runs for both validation and test performance. Rules for the Leaderboard is found <a href="../leader_rules">here</a>.
</font>
</p>
