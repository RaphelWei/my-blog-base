---
author : "Sihan Wei"
title: "ML theory界的孔乙己"
date: 2025-03-22T04:17:24-04:00
tags : ["发疯实录"]
categories : ["随笔"]
description : "以下的内容是我读paper发疯的时候写的，如果能博君一笑，那就是我最大的幸福。"
draft: false
---
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
