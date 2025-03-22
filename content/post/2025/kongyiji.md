---
author : "Sihan Wei"
title: "ML theory界的孔乙己"
date: 2025-03-22T04:17:24-04:00
tags : ["发疯实录"]
image : "kongyiji.jpeg"
categories : ["随笔"]
description : "读paper发疯的时候写的，博君一笑。本文是与ChatGPT合作完成的。"
draft: false
---

## 序章：致敬鲁迅先生

公司 pantry 的角落里有一块白板，常年写着一些谁也看不懂的公式。旁边一张桌子，散着几张顶会的 reject letter，纸上 reviewer 评论说“bound is tight but practically irrelevant”。这地方原来是留给 visiting intern 用的，现在久而久之，就成了孔乙己的“工位”。

孔乙己是做 learning theory 的，据说读过书，还在 NeurIPS 上发过 poster。有一次 all-hands meeting，他在群聊里发了一串 LaTeX 数学公式，说是要解释 AUC 和 generalization gap 的关系，结果被 HR 警告了一次，说“请文明发言”。

他每天中午都会在咖啡机旁遇到我们这些实习生，常常问：“你读过 learning theory 吗？”我们一开始还会点点头，后来知道他下一句总是：“我便考你一考。generalization bound 是怎么写的？”便学乖了，低头冲咖啡，假装没听见。

有一回，他对我说：“你知道 uniform convergence 吗？……我教给你，记着！这些 bound 应该记着。将来做 senior scientist 的时候，写 promotion doc 要用。”我心里好笑，我们组连 offline metric 都快不要了，还 promotion doc 呢。

我懒懒地答他道：“谁要你教，不就是 Hoeffding inequality 加个 union bound 吗？”

孔乙己显得极高兴，将两根细长的手指在白板上敲着，点头说：“对呀对呀！……PAC bound 有四样写法，你知道么？”

我努着嘴走远。他刚用咖啡搅拌棒蘸了点拿铁，想在白板上写式子，讲一讲 Rademacher complexity 和 KL divergence 的 tradeoff，见我毫不热心，便又叹了一口气，显出极惋惜的样子。

他其实也不是不想工作，只是进了组以后一直想做一个“理论支撑部署”的项目，写了半年 proposal，最后老板让他先 review 一下现有的 pipeline。他不服，写了一封一万五千字的 reply，附上五页 appendix，解释“为什么这不是我应该做的工作”。

现在大家说他是“last theory holdout”，还没接受 large language model 统治世界的事实。有人问他，“你怎么看 foundation models 的 future？”他一边抿着剩下的咖啡，一边念叨：“large model…… large variance…… no bound……怎么能 deploy 呢……”

他是真的读过书。只是这年头，读过书的人没人 care bound，写不出 report summary 的人，连实习都留不下来。

---

## 第一章：读过书的人

孔乙己是做 learning theory 的。

最早知道他，是在 Reddit 上的一个 AMA。他还在读 PhD，头像是一张顶会 poster，署名第一，学校是个大家都听过的藤校。他的自我介绍这样写着：“做 generalization 理论，探索真实世界学习背后的本质规律。”

在那个帖子底下，他写了长长的一段话，引用了 PAC learning、VC dimension 和 Occam's Razor，又狠狠批了 transformer：“你们这些搞 LLM 的，连 basic bound 都不会推，还敢说是做科研？”底下有人反驳，他立刻贴了十几条 arXiv 链接，说自己不屑于和“只会调超参的人”辩论。

那年，他刚上四年级，刚好 paper 被 NeurIPS workshop 收了个 oral。他在朋友圈发了一张自己在黑板前讲 bound 的照片，配文是：“This is what *real understanding* looks like.”

导师是圈内出了名的学院派老教授，paper 写得比代码还多。他曾在系里 seminar 上说过：“做 theory 的人，不能和 trend 同流合污。”

孔乙己听了频频点头，讲座结束后站起来问了三个问题，都是关于“能不能给 attention 的 generalization bound 更 tight 一点”。他自己其实没有看 transformer，但这不妨碍他用七页证明说明“这种结构 inherently 不 generalize”。

大家都说，这人——**读过书**。

---

## 第二章：找实习的人

孔乙己是读过书的，可是，**找不到实习**。

他开始投实习那年，ChatGPT 正好火遍全球。校内的同学不是在 OpenAI 实习，就是在 Anthropic、Google DeepMind 做 LLM pretraining。大家都在做 self-supervised learning 和 alignment，他却仍然执着于自己那套“distribution shift 下的 uniform stability”。

导师让他写简历。他花了两周，写了六页 PDF，全是 theorem 和 lemma，标题叫：“Research Summary – Towards Trustworthy Learning via Rigorous Risk Control”。最后一页是他自己画的图，图注写着：“Figure 4.7: Bound does not improve, but it is tight。”

没有一段工业经验，也没有代码链接。他曾经尝试加一个 GitHub，但主页上写着：“Repository removed due to theoretical errors in implementation assumptions.”

他照常投了三十多家公司，几乎都石沉大海。

他后来听说，一个跟他同届的学生，主攻 AutoML，发了一堆调参论文，进了 Meta 的 RLHF team。他不服，说：“这种连问题都没搞清楚的领域，发 paper 如流水，根本谈不上科学。”他在自己的 note 里写道：

> “真理不可通过 A/B test 验证，理论才是机器学习的灵魂。”

他还申请了一个 MLE 实习，面试官问：“你怎么看最近 dropout 在 production 中的不稳定性？”

孔乙己答：“你们这是 overfitting 实践经验。我有一篇未发的论文，指出 dropout 实际上可以用 PAC-Bayes 框架来统一解释。”

面试官礼貌微笑，说：“好深奥。我们 infra 组暂时还用不到。”

那年夏天，他没有找到实习。他仍然每天在 lab 里推式子，有时去旁听 LLM 组的组会，听一半摇头离开。他说那些人“连 math 都不配谈”，用的词全是“token”、“prompt”、“alignment”，没有一个是“loss”、“bound”、“hypothesis class”。

他其实也羡慕，但他嘴硬。他说：“他们是潮水，我是地基。等这股风过去了，大家会想起我的。”

只不过那股风，过去了一个 transformer，又来了一个 SSM。他依旧在白板前写 KL divergence，写着写着，就又到了秋天。

---

## 第三章：毕业的人

孔乙己是在第七年毕业的。

原本他第五年就打算毕业。那时候他还写了一份邮件草稿，要群发告别，说自己将“以理论之眼投身现实”，实现“从 PAC 到 Product 的跃迁”。但那年，他把最得意的一篇论文投到了 ICML，被 Reviewer 2 留下一句评价：

> “The bound is tight but practically useless.”

他一怒之下没有 rebuttal，把论文重新写了一版，把所有式子换成了 measure-theoretic 的表述，结果篇幅超了三十页，NeurIPS desk reject。

第六年，导师说：“你可以考虑毕业了。”

孔乙己说：“我还没写完那篇 information-theoretic regret bound 的 follow-up 呢。再给我一年。”

导师点点头。他已经习惯了孔乙己推迟进度，也知道自己早已无法干预这位弟子对 tight bound 的执念。

这一年，实验室搬了新楼，年轻的师弟师妹都用起了 JAX 和 PyTorch 2。他仍然在 server 上 ssh 进一台 Ubuntu 14.04，写着纯 numpy 的脚本，运行一个只能复现 appendix 图的 toy example。

第七年春天，他终于发出了一篇论文，是个小 workshop，在一个很新的理论 track。他在推特上发了动态：

> “七年磨一式，唯愿后人得见真实的 complexity。”

没人点赞。

他终于决定毕业。简历依旧是六页，PDF 里还加了页码，脚注引用了自己两篇 rejected 的 arXiv。导师给他写了推荐信，语气也比从前谨慎了些，只说他“学术兴趣明确，逻辑严密，独立性强”。最后一句是：“更适合研究型岗位。”

后来他去了一个 B 轮创业公司做 research engineer。公司在做“可解释性 + differential privacy”，是个 niche niche 的领域。

他的 offer 上写的是：“title：Research Engineer；scope：参与理论模型验证和文档撰写；base：比市场价略低。”

他没讲价。他说自己“只求一个地方继续思考”。

---

## 第四章：进公司的人

孔乙己进了公司，却从未真正融入过公司。

他的办公桌在走廊尽头，旁边是一台没人用的打印机和一面已经褪色的公告栏。他搬来那块写了七年的白板，用酒精擦了一遍，上面仍隐约可见 “\(\mathbb{E}_{S \sim D^n}\left[R(h_S)\right] \leq \hat{R}_S(h_S) + \text{Complexity Term}\)” 的痕迹。

他每天早上八点半就来，泡一壶冻顶乌龙，打开 terminal，进一个 `bound_experiments` 的目录，里面是他复现自己 PAC-Bayes 推导的脚本。每次模型跑出来结果，他不是看 accuracy，而是把 empirical risk 和 KL divergence 画在一张图上，用 marker 在白板上标注：“偏差可控。”

他其实是有项目的，公司的产品在做 privacy-preserving recommender，他的任务是“从理论上分析机制稳定性”。但大家都在忙上线和 metric，他交了两份报告，没人看；他约了一次 1-on-1，老板说：“你这个方向我们暂时搁一搁哈，先看看 infra 那边的优化能不能搞搞。”

他点头，说“可以”，回工位后继续看那篇发表于二十年前的论文：《On the Stability and Generalization of Learning Algorithms》。

有一次组会，大家在讨论一个新上线的模型效果，PM 问：“有没有人能解释一下为什么线上 performance 比 offline 高？”

孔乙己清了清嗓子，说：“其实这是 non-IID 训练下的一种局部 regularization 效果，我最近写了一个 note，里面讲了 generalized Rademacher complexity 在局部区域的演化过程，可以 unified explain 这类现象。”

PM 点点头，说：“你这个听起来好厉害……但能不能先看看线上用户路径是不是变了？”

他开始变得沉默。

同一批进公司的同事，有的成了 tech lead，有的跳槽去了大厂做 foundation model 预训练。他还在看那些没人看的 arXiv 论文，改着自己的旧代码。有时他也试图转向热门方向，比如看了看 alignment safety，想写个“bound-aware preference model”，写了三页之后发现根本找不到数据集，就搁下了。

他拒绝了写文档，也不喜欢开 sprint。他说：“我不是来写 JIRA ticket 的。”有同事劝他：“你可以转 Applied 吗？可能会更有 impact。”他摇头：“做理论的，不能退。”

后来公司裁员。他没有被裁，但老板和他说：“要不你去 infra 帮忙？最近要重写 feature store，缺人。”

他点点头，说：“好。”但第二天，他照旧坐在角落，把白板擦干净，重新写下那一句：

> “A tight bound is still a bound.”

他开始变得透明。新人不知道他是干什么的，以为他是 legacy team 留下的“技术文献管理员”。只有年会上有人还记得，举着啤酒说：“欸，你就是那个做 PAC 的吧？”

他笑笑，举杯，说：“做过。”

---

## 第五章：变成传说的人

没人记得孔乙己是什么时候开始变得“神秘”的。

一开始，他还时常在 Slack 上发点理论笔记，转发一两篇 ICML 的 old-school 论文，底下偶尔会有人点个赞，更多的时候是既看不懂也不回复。后来他发得少了，只在公司的 Confluence 上写长文，标题常常是：

	•“On the Unstated Assumptions of Generalization in Real-World Deployment”
	•“A Note on the Stability of Feature Drift under Distribution Shift”
	•“Appendix: Why ‘Test Accuracy’ Is Not the Whole Story”

这些文章没人评论，也没有 tag reviewer。他自己默默上传、默默保存，有时会在文章末尾留一句话：

“I don’t expect anyone to read this now. But one day, someone might need it.”

再后来，他的头像变灰了，Slack 状态永远显示“Do Not Disturb”，组会也不再出声，只是静静地坐着，偶尔点点头。

有实习生新加入，看到他办公桌上那块白板，上面写着一行公式：“\(\mathrm{KL}(Q \| P)+\widehat{R}_S(h) \leq \mathcal{B}(n, \delta)\)”。他们小声议论：

	“这是谁的座位？”

	“听说以前是个做 theory 的。”

	“还在公司吗？”

	“不确定，org chart 上已经找不到了。”

有一次 infra 组线上开会，发现某段老代码竟然有注释，写得极细致，还附带了 markdown 文档和理论推导。大家惊讶地说：“现在谁还写这么认真的文档？”

有人点开 commit history，署名是：KongYJ@company.com

大家恍然大悟：“啊，是他。”

但再往下找，他已经半年没提交过任何代码。Git 账号也处于 dormant 状态。只有每个月底的 meeting notes 里，还会悄悄出现一两条评论，引用某篇十年前的 paper，说：“可以从 complexity 的角度再看看这个问题。”

没人回他。他也不再等待回复。

每年年末，公司有一个“年度最佳文档”评选，鼓励员工撰写高质量的技术总结。那年不知谁提名了孔乙己的一篇旧笔记，标题叫：

	“What Is Lost When We Forget the Bound?”

没有人投票，但 HR 给了他一个“特别致敬奖”，附赠一张印着公司 logo 的笔记本。他收下了，说了一句：

	“谢谢。我会继续记着这些。”

至此，他已然不属于任何 team。也没人知道他工号还是否有效。他的电脑仍然每天按时上线，Slack 每周固定显示 green light 两小时，Confluence 上每隔一个月更新一篇无访客的新笔记。

偶尔有人路过角落的那张桌子，看见那块白板上仍写着那句旧话：

	“Bound is tight. Heart is broken.”

---

## 终章：不在 chart 上的人

那年，公司转型做 LLM 了。

老板在 All Hands 上激动地宣布：“我们下一阶段的战略重点，是构建企业级大模型平台。我们要对标 OpenAI！”全场鼓掌，连 infra 都有人开始上 huggingface。

技术文档全换成 prompt 设计、LoRA 微调、in-context learning。组会的名字也改了，叫做“Alignment Brainstorming Sync”。每周有一半时间用来试不同 checkpoint，剩下的时间就是写 prompt 和总结 slide。

孔乙己当然是不适应的。他翻了翻那篇爆红的 LLM 论文，低声念了一句：“连定义都不写清楚，也能叫 paper？”

他试图参与一次 prompt 讨论会，说自己在想“bound-aware prompt optimization”，想设计一个目标函数，把 prompt tuning 变成一个带分布不确定性的 optimization 问题。

没人懂他在说什么。有个组员好心劝他：“我们现在走的是 empirical way，不太考虑 generalization theory 啦。”他说：“你们这是回到 pre-Vapnik 时代了。”

他渐渐不再参加组会。部门 chart 更新后，他的名字没有出现在任何一个 team 下。有人问 HR：“孔乙己是不是离职了？”HR 查了一下，说：“不是，他的工号还在。但没有 active assignment。”

再后来，公司换了楼。他的工位被清掉，白板也被擦干净，只留下几条模糊的笔迹，像极了一些无法证伪的公式。

白板边缘贴着的一张纸掉落在地，上面写着：

	“如果世界都不再在意 bound，那我就是最后一个 bound 的守夜人。”

最后一次有人“见到”他，是在某个开源 repo 的 commit 记录里。

那天，有个新入职的 engineer 遇到一个稀奇古怪的 loss function，顺手在公司旧文档里搜了一下，竟然跳出一篇三年前的笔记，作者正是孔乙己。他试着按照那篇笔记的推导重写了代码，metrics 提高了 0.3%。他在 repo 上开了一个 PR，title 写着：

	“Implement forgotten bound (credit to K.Y.J.)”

第二天清晨，PR 下多了一条评论：

	“Glad to know someone still cares about the bound. – K.”

再之后，账号不再上线。

不知过了多久后的一天，某个新来的实习生，在一个过时的 dashboard 页面底部看到这样一行小字：

	“PAC bounds are not dead. They are just waiting. — K.Y.J.”

他问：“这是谁？”

没人回答。

但某个老员工听见这句话，笑了。他说：“孔乙己还欠十九页报告呢！”

到了春天，他又说了一次。再往后，再也没人提起过他。




