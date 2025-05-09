---
author : "Sihan Wei"
title: "2021年度总结"
date: 2021-12-29T18:37:42-05:00
tags : ["年度总结"]
categories : ["suibi"]
description : "2021年过去了，我很怀念它。"
image: "lake.jpg"
draft: false
math: true
aliases: /post/2021/2021年度总结/
---

## 引言

2021年就快要过去了，我很怀念它。

其实我本来是不太爱写年度总结这种东西的，一方面是因为懒，另一方面也是因为懒。

不过今年总归是有点特殊的，毕竟经历了不少人和事。从旧的学校毕业了，在新的学校开始了新的旅程。于是最后决定写点什么纪念一下。

说是年度总结，其实更像是个申请总结。时间跨度大概是从去年暑假到今年开学。

## 八月
我的Thesis，或者说Capstone Project更合理一点，是实现Nesterov那篇关于Tensor Methods的算法。简单来说，常用的gradient descent是基于泰勒的一阶展开

$$
f(y)\approx f(x)+\langle \nabla f(x),y-x\rangle
$$

然而大家都知道first-order method收敛很慢，即使是在strongly convex的条件下也只有 \(O\left(\log(1/\epsilon)\right)\)。Nesterov提出了一种利用 \(p\) 阶\((p\geq2)\)泰勒展开来求解优化问题的算法

$$
\arg\min_{y\in\mathbb{R}^n}\sum_{r=0}^{p} \frac{1}{r !} \nabla^{r} f(x) [y-x, \ldots, y-x]+\frac{M_p}{(p+1) !}\|y-x\|_{2}^{p+1}
$$

这个算法的优点是快，在`条件`拉满的情况下可以达到

$$O\left((1/\epsilon)^\frac{M_p}{5p+2}\right)$$

<del>这个算法的缺点是，`条件`过于严格，又要convex又要Lipschitz。没人会傻乎乎地用这玩意训练神经网络。</del>这段划掉。

这个东西写了大概两个月，暑假结束的时候跟老板简单聊了聊。老板建议我把代码整理一下，可以搞个package。然后设计一些实验，看看能不能投出去。

我最后拒绝了这个提议，因为我觉得这玩意实在没啥用。

八月底的时候正式把申请提上了议程。我简单地做了个个人主页，**优点是发套瓷邮件的时候不需要在附件里放CV，直接在邮件正文里附上主页链接就好了。因为很多老师不太喜欢下载附件。另一个好处是可以在网页里加上tracker，这样在Google Analytics里根据主页访问记录的地址和时间就可以判断哪些老师浏览了我的主页，从而继续跟进。**

因为疫情，当时好多学校都hiring freeze了（虽然这个是针对AP招聘的，不过侧面也反映出学校没钱）。当时心里很慌，因为感觉疫情加持下的申请会异常激烈。有一天逛一亩三分地的时候，看到一位Georgia Tech的AP在找RA，而且他本人还是UMN的校友，就很高兴地给他发了封邮件。他很快就回复了，说是约个时间面试。

面试很流水线化，我简单做了个slides讲了一下就结束了。这个老师之前是ME系的PhD，现在Aerospace Engineering (就是搞火箭的那个系)当AP。之前他一直在做控制理论和优化，不知道为什么突然转行搞起ML theory了。他想让我做nonconvex-nonconcave minimax optimization，相当于是给我挖了个新坑。因为GAN和adversarial training很火，催生了这么个研究它们背后理论的领域。我想了一下，好像可以从optimizer的角度搞点东西，现在主流的训练还在用Adam或者SGD，说不定可以把我之前做的破烂往里面塞一塞。我最后搞了个second-order(再高阶的用来训练神经网络想着都玄幻)的方法，在MNIST跑了下效果还行，不过ImageNet还是算了。这个坑填到这我就放弃了，别问，问就是拿到offer了，谁还给他免费打工啊。

## 九月

新学期开学的时候，系里面组织了一个类似于新老生见面会的活动。新生会填一个问卷，回答诸如research interest，以及对哪个lab或者professor感兴趣的问题。系里面会统一收集起来，根据新生的兴趣给他们匹配lab。然后每一个lab出一个老生作为代表 (Lab Ambassador)，回答新生的问题。

我当时为了老板能在推荐信里给我多写几句好话，便主动请缨。完事之后，系里面还让我们把Twitter个人主页好好弄一下，然后带个UMN CS的tag发推自我介绍，这样新老生相互之间可以很快认识（不得不说美国人真的很热衷于connection这一套）。我闲得无聊把自己几百年不用的Twitter也找出来稍微搞了一下，没想到这个后来居然给我带来了不少机会，下面会谈到。

这学期还申请到了TA，不过是在商学院，给一群Business Analytics专业的学生教Python。当TA的经历也蛮有意思的，给这些学生讲课让我想起了自己当年刚学写代码的时候也是啥都不懂，总是问一堆很天真的问题，虽然现在代码写的依然很烂。

第一次Office hour的时候，一个黑人小哥发邮件问我，为什么按照课上示例的代码运行会报错。我看了下他发的截图，检查之后发现代码没有问题，就给他开了个Zoom视频，发现他用Spyder（就是下载anaconda自带的那玩意儿）一行一行地在运行代码。于是运行到`if`语句那一行的时候，编译器说你这个代码不完整啊，就给报错了。我就给他讲，你点这个绿三角运行整个文件就好了。小哥对我很是感激，然后就盯上我了，可劲给我发邮件问问题，有一次直接说

> I'm writing to ask if we can meet physically...

直接给我整害怕了。那封邮件我没回，后面这小哥好像就自暴自弃了，好几次作业都没做。

这门课还有一个叫Sarah的美国女生，我对她印象很深，因为她每次Office hour都会问一个多小时的问题，经常在后面排队的学生因为等太久最后全溜了。然后她每次结束的时候都会给我说好多遍sorry和thank you，然后下次继续。可惜学期过去三分之二的时候她withdraw了，当时我还有点小泄气，感觉之前的努力都白费了。

## 十月

上面提到我把自己的Twitter主页搞了一下，在Bio里加了一句

> I am looking for a PhD position from Fall 2021.

接下来除了写套瓷邮件之外，还会在Twitter上follow一些我关注的老师，绝大多数都是Junior Professor，因为我觉得这些人最缺人，成功率比较高。

意外的是，我刚给一个老师点了关注，他就直接回关了，还给我发了一封邮件
<figure>
<img src="email1.jpeg" class="clickable-image w-60">
</figure>
这个老师做的是distributed optimization。我跟他前前后后大概meeting了四次左右，我觉得他人非常Nice，学术水平也很高，但是本身他是控制背景出身，发的很多都是那边的会议，比如CDC，ACC什么的。我自己可能还是更想做传统的ML一点。于是最后没有申请他家。

除此之外，我还套瓷了一位老板的熟人，他也很快回我了，说最晚会在一月底面试，还说他跟我老板很熟，问我老板会不会给我写推荐信。

我本来想着靠老板这层关系怎么着也能捞个面试，结果就被放鸽子了。
## 十一月

这个月还是比较辛苦的。写SOP，上课，写作业，final project，TA的工作也不能落下，每周还要开组会。总之每天都是焦头烂额的状态。

感恩节假期窝在家里把SOP肝了出来，让几位好朋友帮忙看看，提了提意见。不放心又花钱去一个叫`papersogay`的网站上找母语者改了一下。这个网站名字虽然听起来很`gay`，但实际使用起来一点也不`gay`，推荐的mentor里有很多好看的小姐姐。我找了一位Yale本科毕业的白人小姐姐，价格是按字数收费，花了100多刀吧，最后成稿还算满意。

在填网申之前最后找老板聊了一次。老板问我申请了多少项目，我说10个左右。老板说你申请太少了，今年这情况15个才保险。于是我又赶紧补申了几个。

针对我的SOP老板还提了一嘴，说我写得不错，但是research interest写得太窄了，全篇都在讲你对theory感兴趣。做theory的老师就那么几个，还不一定今年招人。有些做应用的老师可能对你也感兴趣，但你SOP这么写，人家可能就觉得你不想搞application，你就会因此失去很多机会。

老板还提到，当年他申请的时候，虽然已经有7-8篇不错的文章了（不错，指CVPR一作），但是还是因为SOP写得太窄而丧失了一些机会。当时他拿了不少不错的offer，比如Princeton，UIUC，UW之类的。CMU还给他发了conditional offer，因为他托福没考到100。结果他又考了2次，全是99，就放弃了CMU。我表示难以置信，因为他在新加坡待了很多年，不像是会被英语拖累的人。

最后我问老板今年打不打算招人，他说还没想好，不过就算招人也最多收一个，因为组里人实在太多了。他才来我们系第二年，已经7个PhD了(绝大多数是从别的老师那里跑路过来投奔他的)，还有一群MS和本科生，有点带不过来。

有意思的是今年我们组里一共三个人申请PhD，老板最后一个人也没要，而是招了个Native Hawaiian。主要是之前我们组里只有中国人和印度人，看来老板为了diversity也是费了不少心。当然最后大家的去处都不错，另外两个印度妹子分别去了Wisconsin和UCSB。
## 十二月

这个月主要就是填网申。绝大多数学校的deadline都是12.15，老板让我开个Google共享文档，他提交一封推荐信就打个勾，我也好实时跟进状态。

然而事实证明根本就没要，老板效率实在一流，我的邮箱一直在提示收到邮件
> Professor XXX has submitted a recommendation letter for you...

大概半小时左右，17个项目的推荐信就全部提交完毕了。

## 一月

一月份的记忆有些模糊了，毕竟过去了太久。那段时间刚刚提交完申请，心里面多多少少有些忐忑。正好寒假闲在家里无事，就想着要不要再套套瓷。本着死马当成活马医的心态，索性又给自己感兴趣的AP写了好几封邮件。结果不出所料，果然绝大多数邮件都石沉大海。

然而还是有一位PSU的老师捞了我一把。她说她面我主要是因为我是CS的学生，却想申EE的PhD，因为在她印象里CS的学生很好找工作，去湾区随便就是十几万刀。我没好意思告诉她我就是因为代码写的烂找不到工作才申请PhD的。

聊了一会后她说她做的领域还是比较辛苦的，因为你可能浪费几个月时间就为了搞懂一段证明，最后还一无所获。她说我给你一篇我之前的论文，你读一下，做个presentation，我们再谈你要不要继续做这个方向。于是约了2月10号再meeting一次。

## 二月

8号的时候收到了Boston University的PhD录取，我记得当时我正在睡午觉，被邮件声吵醒的时候还有些恼火，然而看到开头的`Congratulations`果然还是没绷住笑了出来。

说实话我跟BU其实还挺有缘分的。18年申master的时候，当时心里没底，看BU写的是2.15截止，想着病急乱投医不申白不申（90刀申请费⚠️），干脆也填了网申。然而那会他家拒我特干脆，1.22提交的网申，1月底就给我发来拒信了。说实话当时心里没啥波动，安慰自己说overqualified了，唯一肉痛的就是那90刀的申请费。

BU给的钱多，PSU钱少；BU在大城市Boston，PSU在村里。没有犹豫，我果断写邮件给之前PSU的那个老师，说我拿到了offer了，paper也不读了，presentation也不做了，直接开摆。
<figure>
<img src="email3.jpeg" class="clickable-image w-60">
</figure>
二月中的时候面了CU Boulder。其实他家CS我没啥特别想跟的老师，不过因为通神在那念书，想着不行的话去那跟通神做个伴也不错。

面我的是个国人AP，因为SOP里提了他的名字所以倒也在意料之中。上来开始跟我整多普勒效应，直接人麻掉了。完事还顺带跟我聊了一下线性代数，好在那段时间一直在搞Optimization，很多基本概念也都比较熟悉，因此侥幸过关。

聊到最后他开始给我画饼，说Boulder是个好地方，来了可以滑雪，比你申请的什么UIUC啊，Purdue啊地方好多了。还说你来了第一学期应该是做TA，但是系里面应该会额外发个几千刀的小奖。我当时一听这话以为自己稳了，<del>然而三月初收到了拒信</del>。

二月底的时候收到了现在advisor的面试邀请。一开始面我的是组里的大师兄，简单聊聊做过的项目，考察了一些基本知识，愉快结束。过了几天二师兄又发来面试邀请，同样的流程，讲讲project，二师兄还问了我最喜欢的ML算法是什么，我说是SVM，毕竟让我第一次接触到了Lagrange dual，从此走上了搞Optimization的不归路。过了一周老板也发来面试邀请，好家伙，搁这升级打怪呢。

跟老板的面试其实自我感觉表现挺一般的，老板一直在抠细节，抓住一个问题咬着不放，一路问下去，人直接傻掉。好在最后老板看出了我废物的本质，跟我介绍了一下组里的情况后就草草结束了视频通话。

## 三月

三月开门红，没错，因为拒信的颜色是红的。CU Boulder在我自信满满的时候一招出其不意成功地让我破防了。

8号是BU的Open House。因为疫情没法去现场，可惜，本来还想公费去Boston玩一趟。

后面的日子就是在焦虑中度过的，一天刷800次一亩三分地和gradcafe，听到Gmail的邮件提示音就要赶紧打开看看是不是收到offer或者拒信了。然而不仅不是offer，在绝大多数时候连拒信都不是。

眼看着地里面的PhD汇报帖越来越少，我不得不接受一个沉痛的事实——我80%的申请应该都沉到鱼塘里了。于是我果断给我现在的老板发了一封邮件，问他你到底还收不收我，给个痛快话。

我记得特别清楚，那天是周一。周二就收到了JHU的集体AOE系统据。这件事他戏剧性就戏剧性在这里，因为实在太巧合了，以至于我以为这封拒信是自己催出来的。

节目效果发生在周三，我老板回我邮件了————他说他会催committee尽快做决定。

我心想你这不是跟我俩搁这扯犊子了吗，我都收到拒信了，还要尽快做啥决定？我就回他，我已经收到拒信了。结果他说，不可能，肯定是系统搞错了，他还没做任何决定呢，让我再等着。

于是第二天我收到了系里小蜜发来的撤回拒信的邮件。

得，继续等着吧。

## 四月

16号，踩着线，拿到了JHU的offer。果断接了。开香槟咯！

## 五月

该吃吃，该喝喝，准备准备就从UMN毕业了。因为疫情原因今年也是线上的毕业典礼，然而我本该去年就毕业的，因此内心毫无波动。

## 六月

欧洲杯开赛了，每天就窝在家里看球。室友哥伦比亚小哥在家里看美洲杯和世界杯预选赛，我看欧洲杯，两个人聊得不亦乐乎。每天就是嗯混，整天醉生梦死，不知今夕是何年。

月底的时候，老板终于联系我了，说要跟我聊聊下学期的选课以及科研计划。老板给我包办了三门课，然后告诉我，让我做adversarial robustness。接着就让我继续享受假期了。

## 七月

1号的飞机，Minneapolis飞Denver，开始准备享受假期。

很惭愧，自从18年来了明尼之后，我就再也没坐过飞机，这次算是把飞机坐爽了。

到了Denver之后，由通神担任免费司机把我接回他家。这次Boulder之旅印象最深的就是去Rocky Mountain National Park玩了一趟，拍了不少照片。





![Estes Park](estes.jpeg) ![家附近的公园](sky.jpeg)![好山好水好风光](lake.jpg)

![双人成行](red_and_blue.jpeg)![博尔特](boerte.jpg) 

这次旅行的感受就是，Boulder真是个好地方，有车真好。

在Boulder玩了半个月，回来去校医院做了个深度洗牙。躺在病床上，听牙医用小钩子在我的牙齿表面刮来刮去，咯吱咯吱，问题是自己啥也看不到，简直让人毛骨悚然。因为打了麻药，半边脸感觉肿的像猪头，吃东西像在吃棉花糖，吸管咬在嘴里像是软的。

月底的时候就飞来Baltimore了。在明尼呆了三年，走的时候也没有太多舍不得，只是后悔还有好多地方没去过，学校附近还有好多店没吃过，还没跟老板好好道个别。

Farewell, Minneapolis. Hello, Baltimore.

Goodbye, Gophers. Hi, Blue Jays.

## 总结
> 三年羁旅客...

脑子里不知怎么就想起这句诗。在明尼的三年，认识了很多有趣的人，也经历了很多刻骨铭心的事。接下来的一年，希望能好好上课，好好做科研，好好锻炼身体。最大的希望是能回国一趟，见见那些好久没见，想见却又不得见的人。毕竟，

> 我亦飘零久。



