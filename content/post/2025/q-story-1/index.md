---
author : "Sihan Wei"
title: "阿Q正传（一）"
date: 2025-03-22T19:22:18-04:00
tags : ["发疯实录", "ML鲁迅宇宙"]
categories : ["ml-story"]
description : "“我这是做基础科学，他们是在擦玻璃。”——阿Q"
image : "aq.jpg"
draft: false
---


阿Q的姓氏无从考证。他自己说，他原本在 submission system 里总是排在最后，因为 theory 的 paper 一般按字母顺序排作者名，姓赵的话，Z 是一定压轴的。他一直觉得这就是他被忽视的根源。后来有人说他姓赵，他也不否认；有人说他不配姓赵，他也不争。于是 reviewer 和 fellow student 都叫他阿Q。

他说他是参加过 ICML 的人。虽然没有人见过他的 poster，也没有找到那年他的论文，但他很有把握地说：“我那个 paper 给了我 6 6 4，怎么就 reject 呢？你懂不懂 reviewer 是怎么想的？”

每当有人在 group meeting 上汇报新出的 transformer 方法时，他就斜眼看一眼，冷笑道：“这不就是堆参数吗？我们那会儿讲的是 generalization error bound，这些人只是调得巧。”

有人问：“你现在研究什么？”

他说：“我在重写 PAC-Bayes bound，用 Rényi divergence 替 KL，这东西你们看不懂。”

众人默然。

他感到众人沉默，是因为被他震慑了。

---

阿Q最常去的是组里的slack channel。他每天都要在群里发几段 reviewer 的 comment，一边贴，一边点评：“你看，他写了 'interesting direction'，我就知道他们 reject 我不是因为质量，是因为看不懂。”

他的 rejection folder 里已经有七十二封信，他说这是他理论道路上的勋章。

他常说：“我跟你们不一样，我不是为了发 paper 而发 paper，我是有思想的。那种靠 data augmentation 和 scaling law 刷榜的，是Engineering，不是 science。”

大家起初还会应一两句，后来也就不再回复。他便更加坚定地认为，自己已经远远走在了他们前面，只是这些人还没有意识到而已。

---

有一天，他偷偷在 arXiv 上挂了一篇和 LLM 有关的短文，标题是《Towards Understanding Prompt Optimization via PAC-Bayesian Lens》。

有人在群里贴了一条招聘信息：“某大厂招 NLP research scientist，要求熟悉 prompt tuning。”

他立刻发言：“现在的大厂啊，早就不搞 serious research 了。真正想做 science 的，是不会去做 prompt engineering 的。”

同学问：“你那篇 PAC-Bayes 的 prompt paper，是不是也在调 prompt？”

他一愣，旋即大笑：“我那是从原理上解释 prompt 的 generalization 啊，能一样么？懂点 math 再来问我。”

---

他的 advisor 在slack群里祝贺 lab 里有几个同学发了 NeurIPS、ICLR，还有一个拿了 best paper。他没有恭喜，也没有发祝贺表情，而是悄悄发了一条朋友圈：

> “人心浮躁，真正的研究者不屑争名逐利。愿守住理论的孤独。”

底下没人点赞。

他觉得大家是在默默支持他，怕显得太明显。

---

那天他又收到了一个 rejection。

他把 OpenReview 上的 rebuttal 页面截图发到了群里，配文：“胜利了！胜利了！Reviewer B 开始认真提建议了，还说我的 proof 有启发性，这说明我的方向引起了重视。”

他的 rejection folder 里多了一封信，他的精神胜利记录，也就更完整了一点。

---

后来有人发现，他那年所谓的 ICML paper，是和赵教授的组联合投稿的，最终被 withdraw 了。

赵教授是著名的 last author，一直稳居 alphabet 排名的末位，却从不忘在所有论文里标注自己为 corresponding。他说：“阿Q？只是来旁听过几次组会，连共一作都不算。”

阿Q愤愤地说：“那不过是借了我一点想法罢了。”

然后他又补了一句：“我其实……也算是赵家人。”

没人应声。

他笑了笑，自顾自地关了 rejection 页面，打开 OverLeaf，开始写他的新草稿。

标题是：《A Philosophical View on Generalization in the Age of Data-Centric AI》。

他觉得，这一次，他们总该看懂了。

(未完待续)


{{< quote author="鲁迅" source="《阿Q正传》" url="https://zh.wikisource.org/wiki/%E9%98%BFQ%E6%AD%A3%E5%82%B3">}}
我又不知道阿Q的名字是怎麼寫的。他活著的時候，人都叫他阿Quei，死了以後，便沒有一個人再叫阿Quei了，那裏還會有“著之竹帛”的事。若論“著之竹帛”，這篇文章要算第一次，所以先遇著了這第一個難關。我曾仔細想：阿Quei，阿桂還是阿貴呢？倘使他號月亭，或者在八月間做過生日，那一定是阿桂了；而他既沒有號——也許有號，只是沒有人知道他，——又未嘗散過生日徵文的帖子：寫作阿桂，是武斷的。又倘使他有一位老兄或令弟叫阿富，那一定是阿貴了；而他又只是一個人：寫作阿貴，也沒有佐證的。其餘音Quei的偏僻字樣，更加湊不上了。先前，我也曾問過趙太爺的兒子茂才先生，誰料博雅如此公，竟也茫然，但據結論說，是因為陳獨秀辦了《新青年》提倡洋字，所以國粹淪亡，無可查考了。我的最後的手段，只有托一個同鄉去查阿Q犯事的案卷，八個月之後纔有回信，說案卷裏並無與阿Quei的聲音相近的人。我雖不知道是真沒有，還是沒有查，然而也再沒有別的方法了。生怕註音字母還未通行，只好用了“洋字”，照英國流行的拼法寫他為阿Quei，略作阿Q。這近於盲從《新青年》，自己也很抱歉，但茂才公尚且不知，我還有什麼好辦法呢。
{{< /quote >}}