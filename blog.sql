*
Date: 2019-10-18 23:25:56
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for nb_about
-- ----------------------------
DROP TABLE IF EXISTS `nb_about`;
CREATE TABLE `nb_about` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `content` text NOT NULL,
  `md_content` text NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `tab` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of nb_about
-- ----------------------------

-- ----------------------------
-- Table structure for nb_article
-- ----------------------------
DROP TABLE IF EXISTS `nb_article`;
CREATE TABLE `nb_article` (
  `id` bigint(20) NOT NULL,
  `appreciable` tinyint(1) NOT NULL DEFAULT '0',
  `approve_cnt` int(11) NOT NULL,
  `author_id` bigint(20) DEFAULT NULL,
  `cate_id` bigint(20) NOT NULL,
  `commented` tinyint(1) NOT NULL DEFAULT '0',
  `content` text NOT NULL,
  `cover` varchar(255) DEFAULT NULL,
  `draft` tinyint(1) NOT NULL DEFAULT '1',
  `md_content` text,
  `modify` datetime DEFAULT NULL,
  `post` datetime NOT NULL,
  `summary` varchar(300) DEFAULT NULL,
  `text_content` text,
  `title` varchar(100) NOT NULL,
  `top` int(11) DEFAULT NULL,
  `url_seq` varchar(100) DEFAULT NULL,
  `view` int(11) NOT NULL,
  `cate_refer_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKm9lpoad6mhygm6ybseq2kkg30` (`cate_refer_id`),
  CONSTRAINT `FKm9lpoad6mhygm6ybseq2kkg30` FOREIGN KEY (`cate_refer_id`) REFERENCES `nb_cate` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of nb_article
-- ----------------------------
INSERT INTO `nb_article` VALUES ('1564936050961', '1', '84', '1', '1', '1', '<h3 id=\"h3-u6B64u5904u6DFBu52A0u5185u5BB9\"><a name=\"此处添加内容\" class=\"reference-link\"></a><span class=\"header-link octicon octicon-link\"></span>此处添加内容</h3><p>JavaWeb交流学习群:830841208</p>\n', null, '0', '### 此处添加内容\nJavaWeb交流学习群:830841208\n', null, '2019-08-05 00:27:31', '此处添加内容JavaWeb交流学习群:8308', '此处添加内容JavaWeb交流学习群:830841208', 'JavaWeb交流学习群:830841208', '0', '', '860', '1');
INSERT INTO `nb_article` VALUES ('1571408504937', '0', '112', '1', '1', '0', '<p>一、优质管理的四大要素：</p>\n<pre class=\"prettyprint linenums prettyprinted\" style=\"\"><ol class=\"linenums\"><li class=\"L0\"><code><span class=\"lit\">1</span><span class=\"pun\">、选择正确的人。</span></code></li><li class=\"L1\"><code></code></li><li class=\"L2\"><code><span class=\"lit\">2</span><span class=\"pun\">、为他们分配正确的工作。</span></code></li><li class=\"L3\"><code></code></li><li class=\"L4\"><code><span class=\"lit\">3</span><span class=\"pun\">、保持他们的积极性。</span></code></li><li class=\"L5\"><code></code></li><li class=\"L6\"><code><span class=\"lit\">4</span><span class=\"pun\">、帮助团队凝聚起来并保持团队的凝聚力。(其他一切都只是“文案”。)</span></code></li></ol></pre><p>二、安全和变化：</p>\n<pre class=\"prettyprint linenums prettyprinted\" style=\"\"><ol class=\"linenums\"><li class=\"L0\"><code><span class=\"lit\">1</span><span class=\"pun\">、除非感到安全，否则人们就不能去迎接变化。</span></code></li><li class=\"L1\"><code></code></li><li class=\"L2\"><code><span class=\"lit\">2</span><span class=\"pun\">、在所有成功的工程中(以及在绝大多数其他有价值的工作中)，变化都是基本的要素之一。</span></code></li><li class=\"L3\"><code></code></li><li class=\"L4\"><code><span class=\"lit\">3</span><span class=\"pun\">、安全感的缺乏会让人们反对变化。</span></code></li><li class=\"L5\"><code></code></li><li class=\"L6\"><code><span class=\"lit\">4</span><span class=\"pun\">、逃避风险是致命的，因为这会让你也得不到与风险同在的利益。</span></code></li><li class=\"L7\"><code></code></li><li class=\"L8\"><code><span class=\"lit\">5</span><span class=\"pun\">、人们可能会因为来自客观世界的直接的恐吓而觉得没有安全感，但是如果察觉到管理者可能滥用权力来惩罚自己，他们也会觉得没有安全感。</span></code></li></ol></pre><p>三、负面效应：</p>\n<pre class=\"prettyprint linenums prettyprinted\" style=\"\"><ol class=\"linenums\"><li class=\"L0\"><code><span class=\"lit\">1</span><span class=\"pun\">、威胁不是提高业绩最好的方法。</span></code></li><li class=\"L1\"><code></code></li><li class=\"L2\"><code><span class=\"lit\">2</span><span class=\"pun\">、如果分配的时间一开始就不够，不管威胁有多么吓人，工作也无法按时完成。</span></code></li><li class=\"L3\"><code></code></li><li class=\"L4\"><code><span class=\"lit\">3</span><span class=\"pun\">、更糟糕的是，如果目标没有实现，你就必须兑现你的威胁。</span></code></li></ol></pre><p>四、管理者必需的身体部位：</p>\n<pre class=\"prettyprint linenums prettyprinted\" style=\"\"><ol class=\"linenums\"><li class=\"L0\"><code><span class=\"lit\">1</span><span class=\"pun\">、管理涉及到心、肠胃、灵魂和鼻子。</span></code></li><li class=\"L1\"><code></code></li><li class=\"L2\"><code><span class=\"lit\">2</span><span class=\"pun\">、因此．．．用心来领导，相信你的肠胃(相信你的预感)，构筑团队的灵魂，训练一个能嗅出谎言的鼻子。</span></code></li></ol></pre><p>五、用指挥战争来作为管理的一个比喻：</p>\n<pre class=\"prettyprint linenums prettyprinted\" style=\"\"><ol class=\"linenums\"><li class=\"L0\"><code><span class=\"lit\">1</span><span class=\"pun\">、在战役开始的时候，管理者真正的工作已经完成了。</span></code></li></ol></pre><p>六、面试和招聘：</p>\n<pre class=\"prettyprint linenums prettyprinted\" style=\"\"><ol class=\"linenums\"><li class=\"L0\"><code><span class=\"lit\">1</span><span class=\"pun\">、招聘涉及到所有与管理相关的身体部位：心、灵魂、鼻子和肠胃(但是主要是肠胃)。--该处肠胃是指感觉</span></code></li><li class=\"L1\"><code></code></li><li class=\"L2\"><code><span class=\"lit\">2</span><span class=\"pun\">、不要试图单独去招聘——</span><span class=\"pln\"> </span><span class=\"pun\">两副肠胃远比一副肠胃的两倍要好。</span></code></li><li class=\"L3\"><code></code></li><li class=\"L4\"><code><span class=\"lit\">3</span><span class=\"pun\">、对于新的雇员，让他们承担与以前曾经成功过的同样难度的项目，把有挑战性的目标推迟到下一次。</span></code></li><li class=\"L5\"><code></code></li><li class=\"L6\"><code><span class=\"lit\">4</span><span class=\"pun\">、征求提示：你最希望雇的那个人可能还知道其他很好的人选。</span></code></li><li class=\"L7\"><code></code></li><li class=\"L8\"><code><span class=\"lit\">5</span><span class=\"pun\">、多听，少说。</span></code></li><li class=\"L9\"><code></code></li><li class=\"L0\"><code><span class=\"lit\">6</span><span class=\"pun\">、如果先把材料整理好，那么所有的事情都会进行得更好。</span></code></li></ol></pre><p>七、生产力的提高：</p>\n<pre class=\"prettyprint linenums prettyprinted\" style=\"\"><ol class=\"linenums\"><li class=\"L0\"><code><span class=\"lit\">1</span><span class=\"pun\">、没有“短期生产力提高”这样的东西。</span></code></li><li class=\"L1\"><code></code></li><li class=\"L2\"><code><span class=\"lit\">2</span><span class=\"pun\">、生产力的提高是来自长期投资的。</span></code></li><li class=\"L3\"><code></code></li><li class=\"L4\"><code><span class=\"lit\">3</span><span class=\"pun\">、任何承诺立刻见效的东西都很可能是江湖游医所卖的万灵油。</span></code></li></ol></pre><p>八、风险控制：</p>\n<pre class=\"prettyprint linenums prettyprinted\" style=\"\"><ol class=\"linenums\"><li class=\"L0\"><code><span class=\"lit\">1</span><span class=\"pun\">、通过控制风险来管理项目。</span></code></li><li class=\"L1\"><code></code></li><li class=\"L2\"><code><span class=\"lit\">2</span><span class=\"pun\">、为每个项目创建并维护风险统计表。</span></code></li><li class=\"L3\"><code></code></li><li class=\"L4\"><code><span class=\"lit\">3</span><span class=\"pun\">、跟踪根源性的风险，而不只是最后那讨厌的结果。</span></code></li><li class=\"L5\"><code></code></li><li class=\"L6\"><code><span class=\"lit\">4</span><span class=\"pun\">、评估每种风险具体化的概率和可能造成的开销。</span></code></li><li class=\"L7\"><code></code></li><li class=\"L8\"><code><span class=\"lit\">5</span><span class=\"pun\">、对于每种风险，预测标志其具体化的早期征兆。</span></code></li><li class=\"L9\"><code></code></li><li class=\"L0\"><code><span class=\"lit\">6</span><span class=\"pun\">、任命一个风险控制官，这个人不应该维护组织内部“我能行”的态度。</span></code></li><li class=\"L1\"><code></code></li><li class=\"L2\"><code><span class=\"lit\">7</span><span class=\"pun\">、建立简单的(可能是匿名的)通道，让坏消息能传递到高层。</span></code></li></ol></pre><p>九、防止失败：</p>\n<pre class=\"prettyprint linenums prettyprinted\" style=\"\"><ol class=\"linenums\"><li class=\"L0\"><code><span class=\"lit\">1</span><span class=\"pun\">、壮士断腕。</span></code></li><li class=\"L1\"><code></code></li><li class=\"L2\"><code><span class=\"lit\">2</span><span class=\"pun\">、控制住失败比优化成功更能提高你全面的成绩。</span></code></li><li class=\"L3\"><code></code></li><li class=\"L4\"><code><span class=\"lit\">3</span><span class=\"pun\">、要有闯劲，尽早取消失败的工作。</span></code></li><li class=\"L5\"><code></code></li><li class=\"L6\"><code><span class=\"lit\">4</span><span class=\"pun\">、除非必要，否则就不要自己去凝聚一个团队：出去找一个已经成型的团队来用。</span></code></li><li class=\"L7\"><code></code></li><li class=\"L8\"><code><span class=\"lit\">5</span><span class=\"pun\">、保持好的团队在一起(只要他们自己愿意)，以帮助你的继任者避免团队凝聚得慢或者不能凝聚的问题。</span></code></li><li class=\"L9\"><code></code></li><li class=\"L0\"><code><span class=\"lit\">6</span><span class=\"pun\">、把凝聚在一起的团队——</span><span class=\"pln\"> </span><span class=\"pun\">准备好、并且也愿意接受新的工作——</span><span class=\"pln\"> </span><span class=\"pun\">作为项目的收获之一。</span></code></li><li class=\"L1\"><code></code></li><li class=\"L2\"><code><span class=\"lit\">7</span><span class=\"pun\">、项目开始时浪费的一天和最后阶段浪费的一天对项目造成的伤害是同等的。</span></code></li><li class=\"L3\"><code></code></li><li class=\"L4\"><code><span class=\"lit\">8</span><span class=\"pun\">、有无数种方法可以浪费一天的时间．．．但是没有任何一种方法可以拿回一天的时间。</span></code></li></ol></pre><p>十、开发过程的建模和模拟：</p>\n<pre class=\"prettyprint linenums prettyprinted\" style=\"\"><ol class=\"linenums\"><li class=\"L0\"><code><span class=\"lit\">1</span><span class=\"pun\">、将你关于完成工作过程的直觉建模。</span></code></li><li class=\"L1\"><code></code></li><li class=\"L2\"><code><span class=\"lit\">2</span><span class=\"pun\">、在同事的交流中使用这些模型，以便交流、提炼关于项目运转的思想。</span></code></li><li class=\"L3\"><code></code></li><li class=\"L4\"><code><span class=\"lit\">3</span><span class=\"pun\">、用模型来模拟项目的结果。</span></code></li><li class=\"L5\"><code></code></li><li class=\"L6\"><code><span class=\"lit\">4</span><span class=\"pun\">、根据实际的结果来调整模型。</span></code></li></ol></pre><p>十一、病态的政治：</p>\n<pre class=\"prettyprint linenums prettyprinted\" style=\"\"><ol class=\"linenums\"><li class=\"L0\"><code><span class=\"lit\">1</span><span class=\"pun\">、每一天，你都必须准备拿自己的工作打赌．．．．．．．</span></code></li><li class=\"L1\"><code></code></li><li class=\"L2\"><code><span class=\"lit\">2</span><span class=\"pun\">、．．．．．．但是这也不能保证“病态的政治”影响你。</span></code></li><li class=\"L3\"><code></code></li><li class=\"L4\"><code><span class=\"lit\">3</span><span class=\"pun\">、“病态的政治”可能在任何地方出现，哪怕是在最健康的组织里面。</span></code></li><li class=\"L5\"><code></code></li><li class=\"L6\"><code><span class=\"lit\">4</span><span class=\"pun\">、“病态的政治”的特征：对个人权势的渴望超过了组织本身的目标。</span></code></li><li class=\"L7\"><code></code></li><li class=\"L8\"><code><span class=\"lit\">5</span><span class=\"pun\">、即使这种不合理的目标与组织目标背道而驰，它也可能出现。</span></code></li><li class=\"L9\"><code></code></li><li class=\"L0\"><code><span class=\"lit\">6</span><span class=\"pun\">、“病态的政治”最恶劣的副作用：它精简项目变得危险。</span></code></li></ol></pre><p>十二、度量：</p>\n<pre class=\"prettyprint linenums prettyprinted\" style=\"\"><ol class=\"linenums\"><li class=\"L0\"><code><span class=\"lit\">1</span><span class=\"pun\">、度量每个产品的规模。</span></code></li><li class=\"L1\"><code></code></li><li class=\"L2\"><code><span class=\"lit\">2</span><span class=\"pun\">、不要执着于单位</span><span class=\"pln\"> </span><span class=\"pun\">–</span><span class=\"pln\"> </span><span class=\"pun\">在等待客观度量的时候，先用你自己的主观单位。</span></code></li><li class=\"L3\"><code></code></li><li class=\"L4\"><code><span class=\"lit\">3</span><span class=\"pun\">、从所有能得到的原始数据（可计算得软件特性）自己构造度量单位。</span></code></li><li class=\"L5\"><code></code></li><li class=\"L6\"><code><span class=\"lit\">4</span><span class=\"pun\">、从已经完成得项目中收集原始数据，以推导出生产力趋向。</span></code></li><li class=\"L7\"><code></code></li><li class=\"L8\"><code><span class=\"lit\">5</span><span class=\"pun\">、借助数据库画一条趋势线，把预期工作量作为人造度量值的函数显示出来。</span></code></li><li class=\"L9\"><code></code></li><li class=\"L0\"><code><span class=\"lit\">6</span><span class=\"pun\">、现在，针对每个要评估的项目，计算出人造度量单位值，并根据这个值在趋势线上找到预期工作量值。</span></code></li><li class=\"L1\"><code></code></li><li class=\"L2\"><code><span class=\"lit\">7</span><span class=\"pun\">、用生产力趋势周围的干扰水平作为映射的标示。</span></code></li></ol></pre><p>十三、过程和过程改进：</p>\n<pre class=\"prettyprint linenums prettyprinted\" style=\"\"><ol class=\"linenums\"><li class=\"L0\"><code><span class=\"lit\">1</span><span class=\"pun\">、好的过程和持续的过程改进是绝好的目标。</span></code></li><li class=\"L1\"><code></code></li><li class=\"L2\"><code><span class=\"lit\">2</span><span class=\"pun\">、它们也是非常自然的目标：优秀的技术工作者一定会关注它们，不管你是否告诉他们。</span></code></li><li class=\"L3\"><code></code></li><li class=\"L4\"><code><span class=\"lit\">3</span><span class=\"pun\">、正式的过程改进程序常需要花钱、花时间；特定的过程改进工作拖延项目进度。尽管最终会体现出生产力上的收获，它们也不可能抵消花在过程改进上的时间。</span></code></li><li class=\"L5\"><code></code></li><li class=\"L6\"><code><span class=\"lit\">4</span><span class=\"pun\">、但是，项目有希望从单个的、正确选择的方法改进中得到足够的收益，并赢回为这次改变付出的时间和金钱。</span></code></li><li class=\"L7\"><code></code></li><li class=\"L8\"><code><span class=\"lit\">5</span><span class=\"pun\">、在项目进行的过程中，不要希望在超过一个方法的范围内实施改进。多种技术的改进程序（比如说提高整整一个</span><span class=\"pln\">CMM</span><span class=\"pun\">等级）很可能让项目比不实施这些程序完成得更晚。</span></code></li><li class=\"L9\"><code></code></li><li class=\"L0\"><code><span class=\"lit\">6</span><span class=\"pun\">、标准过程的危险就在于人们可能失去重要的走捷径的机会。</span></code></li><li class=\"L1\"><code></code></li><li class=\"L2\"><code><span class=\"lit\">7</span><span class=\"pun\">、特别是对于人员超编的项目，标准过程看上去会很严谨，因为它们制造出了足够的工作（有用的和无用的），让所有人都忙碌不停。</span></code></li></ol></pre><p>十四、改变完成工作的方式：</p>\n<pre class=\"prettyprint linenums prettyprinted\" style=\"\"><ol class=\"linenums\"><li class=\"L0\"><code><span class=\"lit\">1</span><span class=\"pun\">、如果不大幅度减少调试的时间，就没办法让项目大幅度提前完成。</span></code></li><li class=\"L1\"><code></code></li><li class=\"L2\"><code><span class=\"lit\">2</span><span class=\"pun\">、高速完成的项目用在调试上的时间也成比例地少得多。</span></code></li><li class=\"L3\"><code></code></li><li class=\"L4\"><code><span class=\"lit\">3</span><span class=\"pun\">、高速完成的项目用在设计上的时间也成比例地多得多。</span></code></li><li class=\"L5\"><code></code></li><li class=\"L6\"><code><span class=\"lit\">4</span><span class=\"pun\">、如果你不关心别人，不照顾别人，就别想让他们为你做一些不同寻常的事情。如果要让他们改变，就必须去了解（并赞赏）他们的过去。</span></code></li></ol></pre><p>十五、压力的效果:</p>\n<pre class=\"prettyprint linenums prettyprinted\" style=\"\"><ol class=\"linenums\"><li class=\"L0\"><code><span class=\"lit\">1</span><span class=\"pun\">、压力之下的人无法更快地思考。</span></code></li><li class=\"L1\"><code></code></li><li class=\"L2\"><code><span class=\"lit\">2</span><span class=\"pun\">、增加加班时间只会降低生产力。</span></code></li><li class=\"L3\"><code></code></li><li class=\"L4\"><code><span class=\"lit\">3</span><span class=\"pun\">、短期的压力乃至于加班可能是有用的策略，因为它们能使员工集中精力，并且让他们感到工作的重要性。但是长期的压力肯定是错误的。</span></code></li><li class=\"L5\"><code></code></li><li class=\"L6\"><code><span class=\"lit\">4</span><span class=\"pun\">、经理之所以会施加那么多的压力，也许是因为他们不知道该做什么，或者因为其他办法的困难而感到气馁。</span></code></li><li class=\"L7\"><code></code></li><li class=\"L8\"><code><span class=\"lit\">5</span><span class=\"pun\">、最坏的猜测：是用压力和加班的真正原因是为了在项目失败的时候让所有人看上去能好一点。</span></code></li></ol></pre><p>十六、愤怒的经理：</p>\n<pre class=\"prettyprint linenums prettyprinted\" style=\"\"><ol class=\"linenums\"><li class=\"L0\"><code><span class=\"lit\">1</span><span class=\"pun\">、管理中的愤怒和耻辱是会传染的。如果高级管理者喜欢骂人，低级管理者也会有样学样（就像经常被骂得小孩很容易变成爱骂人的父母）。</span></code></li><li class=\"L1\"><code></code></li><li class=\"L2\"><code><span class=\"lit\">2</span><span class=\"pun\">、管理中的辱骂常被认为是一种刺激，可以让员工提高效率。在“胡萝卜加大棒”的管理策略中，辱骂是最常见的“大棒”。但是，哪有人被辱骂之后还能做得更好的?</span></code></li><li class=\"L3\"><code></code></li><li class=\"L4\"><code><span class=\"lit\">3</span><span class=\"pun\">、如果经理使用辱骂得方法来刺激员工，这就表现出经理的无能，而不是员工的无能。</span></code></li></ol></pre><p>十七、含糊的规格文档:</p>\n<pre class=\"prettyprint linenums prettyprinted\" style=\"\"><ol class=\"linenums\"><li class=\"L0\"><code><span class=\"lit\">1</span><span class=\"pun\">、规格文档中的含糊隐含着不同的系统参与者之间存在着未解决的冲突。</span></code></li><li class=\"L1\"><code></code></li><li class=\"L2\"><code><span class=\"lit\">2</span><span class=\"pun\">、如果一份规格文档不包含完整的输入输出列表，那么它就是毫无希望的，它根本就还没开始说明任何东西。</span></code></li><li class=\"L3\"><code></code></li><li class=\"L4\"><code><span class=\"lit\">3</span><span class=\"pun\">、没有人会告诉你一份规格文档是不是糟糕。人们往往倾向于责备自己，而不是责备文档。</span></code></li></ol></pre><p>十八、冲突:</p>\n<pre class=\"prettyprint linenums prettyprinted\" style=\"\"><ol class=\"linenums\"><li class=\"L0\"><code><span class=\"lit\">1</span><span class=\"pun\">、只要在开会过程中有多个参与者，就一定会有冲突存在。</span></code></li><li class=\"L1\"><code></code></li><li class=\"L2\"><code><span class=\"lit\">2</span><span class=\"pun\">、创建、安装系统的业务中特别容易出现冲突。</span></code></li><li class=\"L3\"><code></code></li><li class=\"L4\"><code><span class=\"lit\">3</span><span class=\"pun\">、绝大多数系统开发团队都缺乏解决冲突的能力。</span></code></li><li class=\"L5\"><code></code></li><li class=\"L6\"><code><span class=\"lit\">4</span><span class=\"pun\">、冲突应当引起重视。冲突并不是缺乏职业道德的行为。</span></code></li><li class=\"L7\"><code></code></li><li class=\"L8\"><code><span class=\"lit\">5</span><span class=\"pun\">、应当提前声明：所有人的‘赢’都是受重视的。确保每个级别的人都能赢。</span></code></li><li class=\"L9\"><code></code></li><li class=\"L0\"><code><span class=\"lit\">6</span><span class=\"pun\">、谈判困难；调解容易。</span></code></li><li class=\"L1\"><code></code></li><li class=\"L2\"><code><span class=\"lit\">7</span><span class=\"pun\">、如果两个人的利益是完全或者部分相斥的，预先做好安排，准备好请双方通过调解来解决冲突。</span></code></li><li class=\"L3\"><code></code></li><li class=\"L4\"><code><span class=\"lit\">8</span><span class=\"pun\">、记住：我们都站在同一边；跟我们对立的，是我们要解决的问题。</span></code></li></ol></pre><p>十九、催化剂的角色：</p>\n<pre class=\"prettyprint linenums prettyprinted\" style=\"\"><ol class=\"linenums\"><li class=\"L0\"><code><span class=\"lit\">1</span><span class=\"pun\">、有这样一种催化剂式的人物，这样的人能帮助团队成型并凝聚，保持团队的健康和生产力，从而对项目做出贡献。就算“催化剂”别的什么事情都不干（其实，通常他们还会干很多别的事），这种催化剂的角色也是重要而有价值的。</span></code></li><li class=\"L1\"><code></code></li><li class=\"L2\"><code><span class=\"lit\">2</span><span class=\"pun\">、调解是“催化剂”的一项特殊工作。调解是可以学的，而且只需要很小的投资就能学会。</span></code></li><li class=\"L3\"><code></code></li><li class=\"L4\"><code><span class=\"lit\">3</span><span class=\"pun\">、调解应该从一个小小的仪式开始。“我能帮你们调解一下吗？”在解决冲突的时候，这是必要的第一个步骤。</span></code></li></ol></pre><p>二十、人类的错误:</p>\n<pre class=\"prettyprint linenums prettyprinted\" style=\"\"><ol class=\"linenums\"><li class=\"L0\"><code><span class=\"lit\">1</span><span class=\"pun\">、将你置于死地的，不是你不知道的的东西…而正是你“知道”绝不会置你于死地的东西。</span></code></li></ol></pre><p>二十一、人员安排：</p>\n<pre class=\"prettyprint linenums prettyprinted\" style=\"\"><ol class=\"linenums\"><li class=\"L0\"><code><span class=\"lit\">1</span><span class=\"pun\">、在早期，人员超编会迫使项目跨过关键的设计阶段（这是为了让所有的人有事可做）。</span></code></li><li class=\"L1\"><code></code></li><li class=\"L2\"><code><span class=\"lit\">2</span><span class=\"pun\">、如果在设计完成之前，工作先被分给了很多人，那么人与人之间、工作组之间的接口就会很乱套。</span></code></li><li class=\"L3\"><code></code></li><li class=\"L4\"><code><span class=\"lit\">3</span><span class=\"pun\">、这会使团队内部耦合度提高，会议时间、重复劳动和无效工作都会增加。</span></code></li><li class=\"L5\"><code></code></li><li class=\"L6\"><code><span class=\"lit\">4</span><span class=\"pun\">、理想的人员安排是这样：在项目的的大部分时间里由小型核心团队来做设计工作，在开发的最后阶段（时间安排的最后</span><span class=\"lit\">1</span><span class=\"pun\">/</span><span class=\"lit\">6</span><span class=\"pun\">）加入大量的人手。</span></code></li><li class=\"L7\"><code></code></li><li class=\"L8\"><code><span class=\"lit\">5</span><span class=\"pun\">、可怕的猜想：时间安排紧迫的项目，与时间安排比较合理的项目比起来，完成的时间发而会更长。</span></code></li></ol></pre><p>二十二、项目社会学：</p>\n<pre class=\"prettyprint linenums prettyprinted\" style=\"\"><ol class=\"linenums\"><li class=\"L0\"><code><span class=\"lit\">1</span><span class=\"pun\">、让不必与会的人可以放心离开，从而保证会议的精简。有一份公开的议程，并严格执行，这是最简单的办法。</span></code></li><li class=\"L1\"><code></code></li><li class=\"L2\"><code><span class=\"lit\">2</span><span class=\"pun\">、项目需要仪式。</span></code></li><li class=\"L3\"><code></code></li><li class=\"L4\"><code><span class=\"lit\">3</span><span class=\"pun\">、用小小的仪式来使人们注意项目的目标和理想状态：小规模会议、零缺陷工作等等。</span></code></li><li class=\"L5\"><code></code></li><li class=\"L6\"><code><span class=\"lit\">4</span><span class=\"pun\">、采取行动，防止人们随便发怒。</span></code></li><li class=\"L7\"><code></code></li><li class=\"L8\"><code><span class=\"lit\">5</span><span class=\"pun\">、记住：愤怒=恐惧。随便对下级发怒的经理一定是因为恐惧才会这样做的。</span></code></li><li class=\"L9\"><code></code></li><li class=\"L0\"><code><span class=\"lit\">6</span><span class=\"pun\">、意见：如果所有人都懂得“愤怒=恐惧”这个道理，就能明显地看出发怒的人是在害怕。由于无法再隐瞒自己的恐惧，他也就不会再生气了。（这不能解决这些生气的人的问题，但是肯定可以让其他人好受一些。）</span></code></li></ol></pre><p>二十三、“病态的政治”（旧话重提）：</p>\n<pre class=\"prettyprint linenums prettyprinted\" style=\"\"><ol class=\"linenums\"><li class=\"L0\"><code><span class=\"lit\">1</span><span class=\"pun\">、别想根治一个病态的人。</span></code></li><li class=\"L1\"><code></code></li><li class=\"L2\"><code><span class=\"lit\">2</span><span class=\"pun\">、不要浪费时间，也不要因为尝试治疗上司的病态而使自己受到威胁。</span></code></li><li class=\"L3\"><code></code></li><li class=\"L4\"><code><span class=\"lit\">3</span><span class=\"pun\">、有时候，你唯一的选择就是等待，等问题自己解决，或者等一个让你继续前进的机会。</span></code></li><li class=\"L5\"><code></code></li><li class=\"L6\"><code><span class=\"lit\">4</span><span class=\"pun\">、奇迹时有可能发生的（但是千万别去指望它）。</span></code></li></ol></pre><p>二十四、精兵简政：</p>\n<pre class=\"prettyprint linenums prettyprinted\" style=\"\"><ol class=\"linenums\"><li class=\"L0\"><code><span class=\"lit\">1</span><span class=\"pun\">、精兵确政是失败的公司使用的办法。它让员工负担失败的责任。</span></code></li><li class=\"L1\"><code></code></li><li class=\"L2\"><code><span class=\"lit\">2</span><span class=\"pun\">、公司的目标应该正好相反：兴旺而人性化。</span></code></li><li class=\"L3\"><code></code></li><li class=\"L4\"><code><span class=\"lit\">3</span><span class=\"pun\">、当你听到“精兵简政”这个词的时候，请记住它的弦外之音：失败和恐吓。</span></code></li></ol></pre><p>二十五、基本常识:</p>\n<pre class=\"prettyprint linenums prettyprinted\" style=\"\"><ol class=\"linenums\"><li class=\"L0\"><code><span class=\"lit\">1</span><span class=\"pun\">、项目既需要目标，也需要计划。</span></code></li><li class=\"L1\"><code></code></li><li class=\"L2\"><code><span class=\"lit\">2</span><span class=\"pun\">、而且这两者应该不同。</span></code></li></ol></pre>', '', '0', '一、优质管理的四大要素：\n\n    1、选择正确的人。\n\n    2、为他们分配正确的工作。\n\n    3、保持他们的积极性。\n\n    4、帮助团队凝聚起来并保持团队的凝聚力。(其他一切都只是“文案”。)\n\n二、安全和变化：\n\n    1、除非感到安全，否则人们就不能去迎接变化。\n\n    2、在所有成功的工程中(以及在绝大多数其他有价值的工作中)，变化都是基本的要素之一。\n\n    3、安全感的缺乏会让人们反对变化。\n\n    4、逃避风险是致命的，因为这会让你也得不到与风险同在的利益。\n\n    5、人们可能会因为来自客观世界的直接的恐吓而觉得没有安全感，但是如果察觉到管理者可能滥用权力来惩罚自己，他们也会觉得没有安全感。\n\n三、负面效应：\n\n    1、威胁不是提高业绩最好的方法。\n\n    2、如果分配的时间一开始就不够，不管威胁有多么吓人，工作也无法按时完成。\n\n    3、更糟糕的是，如果目标没有实现，你就必须兑现你的威胁。\n\n四、管理者必需的身体部位：\n\n    1、管理涉及到心、肠胃、灵魂和鼻子。\n\n    2、因此．．．用心来领导，相信你的肠胃(相信你的预感)，构筑团队的灵魂，训练一个能嗅出谎言的鼻子。\n\n五、用指挥战争来作为管理的一个比喻：\n\n    1、在战役开始的时候，管理者真正的工作已经完成了。\n\n六、面试和招聘：\n\n    1、招聘涉及到所有与管理相关的身体部位：心、灵魂、鼻子和肠胃(但是主要是肠胃)。--该处肠胃是指感觉\n\n    2、不要试图单独去招聘—— 两副肠胃远比一副肠胃的两倍要好。\n\n    3、对于新的雇员，让他们承担与以前曾经成功过的同样难度的项目，把有挑战性的目标推迟到下一次。\n\n    4、征求提示：你最希望雇的那个人可能还知道其他很好的人选。\n\n    5、多听，少说。\n\n    6、如果先把材料整理好，那么所有的事情都会进行得更好。\n\n七、生产力的提高：\n\n    1、没有“短期生产力提高”这样的东西。\n\n    2、生产力的提高是来自长期投资的。\n\n    3、任何承诺立刻见效的东西都很可能是江湖游医所卖的万灵油。\n\n八、风险控制：\n\n    1、通过控制风险来管理项目。\n\n    2、为每个项目创建并维护风险统计表。\n\n    3、跟踪根源性的风险，而不只是最后那讨厌的结果。\n\n    4、评估每种风险具体化的概率和可能造成的开销。\n\n    5、对于每种风险，预测标志其具体化的早期征兆。\n\n    6、任命一个风险控制官，这个人不应该维护组织内部“我能行”的态度。\n\n    7、建立简单的(可能是匿名的)通道，让坏消息能传递到高层。\n\n九、防止失败：\n\n    1、壮士断腕。\n\n    2、控制住失败比优化成功更能提高你全面的成绩。\n\n    3、要有闯劲，尽早取消失败的工作。\n\n    4、除非必要，否则就不要自己去凝聚一个团队：出去找一个已经成型的团队来用。\n\n    5、保持好的团队在一起(只要他们自己愿意)，以帮助你的继任者避免团队凝聚得慢或者不能凝聚的问题。\n\n    6、把凝聚在一起的团队—— 准备好、并且也愿意接受新的工作—— 作为项目的收获之一。\n\n    7、项目开始时浪费的一天和最后阶段浪费的一天对项目造成的伤害是同等的。\n\n    8、有无数种方法可以浪费一天的时间．．．但是没有任何一种方法可以拿回一天的时间。\n\n十、开发过程的建模和模拟：\n\n    1、将你关于完成工作过程的直觉建模。\n\n    2、在同事的交流中使用这些模型，以便交流、提炼关于项目运转的思想。\n\n    3、用模型来模拟项目的结果。\n\n    4、根据实际的结果来调整模型。\n\n十一、病态的政治：\n\n    1、每一天，你都必须准备拿自己的工作打赌．．．．．．．\n\n    2、．．．．．．但是这也不能保证“病态的政治”影响你。\n\n    3、“病态的政治”可能在任何地方出现，哪怕是在最健康的组织里面。\n\n    4、“病态的政治”的特征：对个人权势的渴望超过了组织本身的目标。\n\n    5、即使这种不合理的目标与组织目标背道而驰，它也可能出现。\n\n    6、“病态的政治”最恶劣的副作用：它精简项目变得危险。\n\n十二、度量：\n\n    1、度量每个产品的规模。\n\n    2、不要执着于单位 – 在等待客观度量的时候，先用你自己的主观单位。\n\n    3、从所有能得到的原始数据（可计算得软件特性）自己构造度量单位。\n\n    4、从已经完成得项目中收集原始数据，以推导出生产力趋向。\n\n    5、借助数据库画一条趋势线，把预期工作量作为人造度量值的函数显示出来。\n\n    6、现在，针对每个要评估的项目，计算出人造度量单位值，并根据这个值在趋势线上找到预期工作量值。\n\n    7、用生产力趋势周围的干扰水平作为映射的标示。\n\n十三、过程和过程改进：\n\n    1、好的过程和持续的过程改进是绝好的目标。\n\n    2、它们也是非常自然的目标：优秀的技术工作者一定会关注它们，不管你是否告诉他们。\n\n    3、正式的过程改进程序常需要花钱、花时间；特定的过程改进工作拖延项目进度。尽管最终会体现出生产力上的收获，它们也不可能抵消花在过程改进上的时间。\n\n    4、但是，项目有希望从单个的、正确选择的方法改进中得到足够的收益，并赢回为这次改变付出的时间和金钱。\n\n    5、在项目进行的过程中，不要希望在超过一个方法的范围内实施改进。多种技术的改进程序（比如说提高整整一个CMM等级）很可能让项目比不实施这些程序完成得更晚。\n\n    6、标准过程的危险就在于人们可能失去重要的走捷径的机会。\n\n    7、特别是对于人员超编的项目，标准过程看上去会很严谨，因为它们制造出了足够的工作（有用的和无用的），让所有人都忙碌不停。\n\n十四、改变完成工作的方式：\n\n    1、如果不大幅度减少调试的时间，就没办法让项目大幅度提前完成。\n\n    2、高速完成的项目用在调试上的时间也成比例地少得多。\n\n    3、高速完成的项目用在设计上的时间也成比例地多得多。\n\n    4、如果你不关心别人，不照顾别人，就别想让他们为你做一些不同寻常的事情。如果要让他们改变，就必须去了解（并赞赏）他们的过去。\n\n十五、压力的效果:\n\n    1、压力之下的人无法更快地思考。\n\n    2、增加加班时间只会降低生产力。\n\n    3、短期的压力乃至于加班可能是有用的策略，因为它们能使员工集中精力，并且让他们感到工作的重要性。但是长期的压力肯定是错误的。\n\n    4、经理之所以会施加那么多的压力，也许是因为他们不知道该做什么，或者因为其他办法的困难而感到气馁。\n\n    5、最坏的猜测：是用压力和加班的真正原因是为了在项目失败的时候让所有人看上去能好一点。\n\n十六、愤怒的经理：\n\n    1、管理中的愤怒和耻辱是会传染的。如果高级管理者喜欢骂人，低级管理者也会有样学样（就像经常被骂得小孩很容易变成爱骂人的父母）。\n\n    2、管理中的辱骂常被认为是一种刺激，可以让员工提高效率。在“胡萝卜加大棒”的管理策略中，辱骂是最常见的“大棒”。但是，哪有人被辱骂之后还能做得更好的?\n\n    3、如果经理使用辱骂得方法来刺激员工，这就表现出经理的无能，而不是员工的无能。\n\n十七、含糊的规格文档:\n\n    1、规格文档中的含糊隐含着不同的系统参与者之间存在着未解决的冲突。\n\n    2、如果一份规格文档不包含完整的输入输出列表，那么它就是毫无希望的，它根本就还没开始说明任何东西。\n\n    3、没有人会告诉你一份规格文档是不是糟糕。人们往往倾向于责备自己，而不是责备文档。\n\n十八、冲突:\n\n    1、只要在开会过程中有多个参与者，就一定会有冲突存在。\n\n    2、创建、安装系统的业务中特别容易出现冲突。\n\n    3、绝大多数系统开发团队都缺乏解决冲突的能力。\n\n    4、冲突应当引起重视。冲突并不是缺乏职业道德的行为。\n\n    5、应当提前声明：所有人的‘赢’都是受重视的。确保每个级别的人都能赢。\n\n    6、谈判困难；调解容易。\n\n    7、如果两个人的利益是完全或者部分相斥的，预先做好安排，准备好请双方通过调解来解决冲突。\n\n    8、记住：我们都站在同一边；跟我们对立的，是我们要解决的问题。\n\n十九、催化剂的角色：\n\n    1、有这样一种催化剂式的人物，这样的人能帮助团队成型并凝聚，保持团队的健康和生产力，从而对项目做出贡献。就算“催化剂”别的什么事情都不干（其实，通常他们还会干很多别的事），这种催化剂的角色也是重要而有价值的。\n\n    2、调解是“催化剂”的一项特殊工作。调解是可以学的，而且只需要很小的投资就能学会。\n\n    3、调解应该从一个小小的仪式开始。“我能帮你们调解一下吗？”在解决冲突的时候，这是必要的第一个步骤。\n\n二十、人类的错误:\n\n    1、将你置于死地的，不是你不知道的的东西…而正是你“知道”绝不会置你于死地的东西。\n\n二十一、人员安排：\n\n    1、在早期，人员超编会迫使项目跨过关键的设计阶段（这是为了让所有的人有事可做）。\n\n    2、如果在设计完成之前，工作先被分给了很多人，那么人与人之间、工作组之间的接口就会很乱套。\n\n    3、这会使团队内部耦合度提高，会议时间、重复劳动和无效工作都会增加。\n\n    4、理想的人员安排是这样：在项目的的大部分时间里由小型核心团队来做设计工作，在开发的最后阶段（时间安排的最后1/6）加入大量的人手。\n\n    5、可怕的猜想：时间安排紧迫的项目，与时间安排比较合理的项目比起来，完成的时间发而会更长。\n\n二十二、项目社会学：\n\n    1、让不必与会的人可以放心离开，从而保证会议的精简。有一份公开的议程，并严格执行，这是最简单的办法。\n\n    2、项目需要仪式。\n\n    3、用小小的仪式来使人们注意项目的目标和理想状态：小规模会议、零缺陷工作等等。\n\n    4、采取行动，防止人们随便发怒。\n\n    5、记住：愤怒=恐惧。随便对下级发怒的经理一定是因为恐惧才会这样做的。\n\n    6、意见：如果所有人都懂得“愤怒=恐惧”这个道理，就能明显地看出发怒的人是在害怕。由于无法再隐瞒自己的恐惧，他也就不会再生气了。（这不能解决这些生气的人的问题，但是肯定可以让其他人好受一些。）\n\n二十三、“病态的政治”（旧话重提）：\n\n    1、别想根治一个病态的人。\n\n    2、不要浪费时间，也不要因为尝试治疗上司的病态而使自己受到威胁。\n\n    3、有时候，你唯一的选择就是等待，等问题自己解决，或者等一个让你继续前进的机会。\n\n    4、奇迹时有可能发生的（但是千万别去指望它）。\n\n二十四、精兵简政：\n\n    1、精兵确政是失败的公司使用的办法。它让员工负担失败的责任。\n\n    2、公司的目标应该正好相反：兴旺而人性化。\n\n    3、当你听到“精兵简政”这个词的时候，请记住它的弦外之音：失败和恐吓。\n\n二十五、基本常识:\n\n    1、项目既需要目标，也需要计划。\n\n    2、而且这两者应该不同。', null, '2019-10-18 22:21:45', '一、优质管理的四大要素：1、选择正确的人。2、为他们分配正确的工作。3、保持他们的积极性。4、帮助团队凝聚起来并保持团队的凝聚力。(其他一切都只是“文案”。)二、安全和变化：1、除非感到安全，否则人们就不能去迎接变化。2、在所有成功的工程中(以及在绝大多数', '一、优质管理的四大要素：1、选择正确的人。2、为他们分配正确的工作。3、保持他们的积极性。4、帮助团队凝聚起来并保持团队的凝聚力。(其他一切都只是“文案”。)二、安全和变化：1、除非感到安全，否则人们就不能去迎接变化。2、在所有成功的工程中(以及在绝大多数其他有价值的工作中)，变化都是基本的要素之一。3、安全感的缺乏会让人们反对变化。4、逃避风险是致命的，因为这会让你也得不到与风险同在的利益。5、人们可能会因为来自客观世界的直接的恐吓而觉得没有安全感，但是如果察觉到管理者可能滥用权', '项目管理的一些观点', '0', '', '1351', '1');

-- ----------------------------
-- Table structure for nb_cate
-- ----------------------------
DROP TABLE IF EXISTS `nb_cate`;
CREATE TABLE `nb_cate` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `cn_name` varchar(50) DEFAULT NULL,
  `font_icon` varchar(255) DEFAULT NULL,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of nb_cate
-- ----------------------------
INSERT INTO `nb_cate` VALUES ('1', '默认分类', 'fa fa-sliders', 'def_cate');

-- ----------------------------
-- Table structure for nb_cloud_file
-- ----------------------------
DROP TABLE IF EXISTS `nb_cloud_file`;
CREATE TABLE `nb_cloud_file` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `cate_id` bigint(20) NOT NULL,
  `description` varchar(500) DEFAULT NULL,
  `modify` datetime DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `post` datetime DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `cate_refer_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FKn86tmj8yuyvig9o0d51887pcx` (`cate_refer_id`),
  CONSTRAINT `FKn86tmj8yuyvig9o0d51887pcx` FOREIGN KEY (`cate_refer_id`) REFERENCES `nb_cloud_file_cate` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of nb_cloud_file
-- ----------------------------

-- ----------------------------
-- Table structure for nb_cloud_file_cate
-- ----------------------------
DROP TABLE IF EXISTS `nb_cloud_file_cate`;
CREATE TABLE `nb_cloud_file_cate` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `cn_name` varchar(50) DEFAULT NULL,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of nb_cloud_file_cate
-- ----------------------------

-- ----------------------------
-- Table structure for nb_comment
-- ----------------------------
DROP TABLE IF EXISTS `nb_comment`;
CREATE TABLE `nb_comment` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `article_id` bigint(20) NOT NULL,
  `clear_comment` text,
  `comment` text,
  `enable` tinyint(1) NOT NULL,
  `ip_addr` varchar(50) DEFAULT NULL,
  `ip_cn_addr` varchar(100) DEFAULT NULL,
  `post` datetime DEFAULT NULL,
  `user_agent` varchar(255) DEFAULT NULL,
  `user_id` bigint(20) NOT NULL,
  `user_refer_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKa807vyi2gkp698mm6agk7eifu` (`user_refer_id`),
  CONSTRAINT `FKa807vyi2gkp698mm6agk7eifu` FOREIGN KEY (`user_refer_id`) REFERENCES `sys_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of nb_comment
-- ----------------------------
INSERT INTO `nb_comment` VALUES ('1', '1564936050961', 'JavaWeb交流学习群:830841208', '<p>JavaWeb交流学习群:830841208</p>', '1', '127.0.0.1', '本地/未知', '2019-08-05 00:27:50', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:69.0) Gecko/20100101 Firefox/69.0', '1', '1');

-- ----------------------------
-- Table structure for nb_file
-- ----------------------------
DROP TABLE IF EXISTS `nb_file`;
CREATE TABLE `nb_file` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `post` datetime DEFAULT NULL,
  `url` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of nb_file
-- ----------------------------

-- ----------------------------
-- Table structure for nb_function_panel
-- ----------------------------
DROP TABLE IF EXISTS `nb_function_panel`;
CREATE TABLE `nb_function_panel` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `jump_msg` varchar(255) DEFAULT NULL,
  `logo_href` varchar(255) NOT NULL,
  `logo_icon` varchar(255) NOT NULL,
  `logo_name` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of nb_function_panel
-- ----------------------------

-- ----------------------------
-- Table structure for nb_keyword
-- ----------------------------
DROP TABLE IF EXISTS `nb_keyword`;
CREATE TABLE `nb_keyword` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `enable` tinyint(1) NOT NULL,
  `words` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of nb_keyword
-- ----------------------------

-- ----------------------------
-- Table structure for nb_message
-- ----------------------------
DROP TABLE IF EXISTS `nb_message`;
CREATE TABLE `nb_message` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `clear_comment` varchar(255) DEFAULT NULL,
  `comment` varchar(255) NOT NULL,
  `enable` tinyint(1) DEFAULT NULL,
  `ip_addr` varchar(50) DEFAULT NULL,
  `ip_cn_addr` varchar(50) DEFAULT NULL,
  `post` datetime DEFAULT NULL,
  `user_agent` varchar(255) DEFAULT NULL,
  `user_id` bigint(20) NOT NULL,
  `user_refer_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKjldkpoxxyluabgc2jfloi47y4` (`user_refer_id`),
  CONSTRAINT `FKjldkpoxxyluabgc2jfloi47y4` FOREIGN KEY (`user_refer_id`) REFERENCES `sys_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of nb_message
-- ----------------------------

-- ----------------------------
-- Table structure for nb_note
-- ----------------------------
DROP TABLE IF EXISTS `nb_note`;
CREATE TABLE `nb_note` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `clear_content` text,
  `content` text NOT NULL,
  `md_content` text,
  `modify` datetime DEFAULT NULL,
  `post` datetime NOT NULL,
  `show` tinyint(1) NOT NULL,
  `title` varchar(50) NOT NULL,
  `top` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of nb_note
-- ----------------------------

-- ----------------------------
-- Table structure for nb_panel
-- ----------------------------
DROP TABLE IF EXISTS `nb_panel`;
CREATE TABLE `nb_panel` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `enable` tinyint(1) NOT NULL,
  `order_index` int(11) NOT NULL,
  `panel_dom` varchar(255) DEFAULT NULL,
  `title_name` varchar(5) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of nb_panel
-- ----------------------------
INSERT INTO `nb_panel` VALUES ('1', '1', '0', 'infoPanel', '信息面板');
INSERT INTO `nb_panel` VALUES ('2', '1', '1', 'searchPanel', '搜索库');
INSERT INTO `nb_panel` VALUES ('3', '1', '2', 'functionPanel', '功能区');
INSERT INTO `nb_panel` VALUES ('4', '1', '3', 'catePanel', '分类堆');
INSERT INTO `nb_panel` VALUES ('5', '1', '4', 'randomPanel', '博文栈');
INSERT INTO `nb_panel` VALUES ('6', '1', '5', 'tagPanel', '标签页');
INSERT INTO `nb_panel` VALUES ('7', '1', '6', 'linkPanel', '友链区');

-- ----------------------------
-- Table structure for nb_param
-- ----------------------------
DROP TABLE IF EXISTS `nb_param`;
CREATE TABLE `nb_param` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `level` int(11) DEFAULT '0',
  `name` varchar(50) NOT NULL,
  `order_index` int(11) DEFAULT '0',
  `remark` varchar(255) DEFAULT NULL,
  `value` varchar(600) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of nb_param
-- ----------------------------
INSERT INTO `nb_param` VALUES ('1', '0', 'init_status', '0', '标记用户App 的初始化设置页面设置过', '1');
INSERT INTO `nb_param` VALUES ('2', '10', 'all_comment_open', '0', '是否全局开放评论', '1');
INSERT INTO `nb_param` VALUES ('3', '10', 'menu_note_show', '0', '导航菜单_笔记是否显示，默认显示', '1');
INSERT INTO `nb_param` VALUES ('4', '10', 'menu_project_show', '0', '导航菜单_我的作品是否显示，默认不显示', '0');
INSERT INTO `nb_param` VALUES ('5', '10', 'menu_mine_show', '0', '导航菜单_关于我是否显示，默认显示', '1');
INSERT INTO `nb_param` VALUES ('6', '10', 'menu_cloud_file_show', '0', '导航菜单_云文件是否显示，默认显示', '1');
INSERT INTO `nb_param` VALUES ('7', '10', 'menu_search_show', '0', '导航菜单_搜索是否显示，默认显示', '1');
INSERT INTO `nb_param` VALUES ('8', '10', 'menu_link_show', '0', '是否显示额外的导航链接（譬如github）', '0');
INSERT INTO `nb_param` VALUES ('9', '9', 'app_id', '0', 'qq登录API的app_id', '');
INSERT INTO `nb_param` VALUES ('10', '9', 'app_key', '0', 'qq登录API的app_key', '');
INSERT INTO `nb_param` VALUES ('11', '10', 'qq_login', '0', '是否开放qq登录', '0');
INSERT INTO `nb_param` VALUES ('12', '0', 'is_set_master', '0', '是否设置了网站管理员', '1');
INSERT INTO `nb_param` VALUES ('13', '10', 'is_open_message', '0', '是否开启留言功能', '0');
INSERT INTO `nb_param` VALUES ('14', '10', 'info_panel_order', '0', '网站信息和会员中心显示顺序，1表示网站信息显示在首要位置', '1');
INSERT INTO `nb_param` VALUES ('15', '9', 'upload_type', '0', '上传方式类型，默认local，本地上传', 'LOCAL');
INSERT INTO `nb_param` VALUES ('16', '9', 'is_open_oss_upload', '0', '是否开启云服务器上传，默认0不开启', '0');
INSERT INTO `nb_param` VALUES ('17', '9', 'qiniu_accessKey', '0', '七牛云AccessKey', '');
INSERT INTO `nb_param` VALUES ('18', '9', 'qiniu_secretKey', '0', '七牛云SecretKey', '');
INSERT INTO `nb_param` VALUES ('19', '9', 'qiniu_bucket', '0', '七牛云bucket', '');
INSERT INTO `nb_param` VALUES ('20', '10', 'page_modern', '0', '首页博文分页模式0：流式，1：按钮加载', '0');
INSERT INTO `nb_param` VALUES ('21', '10', 'index_style', '0', '首页样式，简约/普通（simple/normal）', 'normal');
INSERT INTO `nb_param` VALUES ('22', '-1', 'blog_index_page_size', '0', '博客首页文章页面数据量大小，大于10才有效,否则则根据参数来判断', '10');
INSERT INTO `nb_param` VALUES ('23', '10', 'statistic_analysis', '0', '是否开启访问统计，默认不开启', '0');
INSERT INTO `nb_param` VALUES ('24', '10', 'article_summary_words_length', '0', '首页展示文章的摘要的文字数量，默认243', '243');
INSERT INTO `nb_param` VALUES ('25', '10', 'website_title', '0', '网站标题的文字', '博客网');
INSERT INTO `nb_param` VALUES ('26', '10', 'footer_words', '0', '页脚的文字', '此处一般可写一些备案号之类的文字');
INSERT INTO `nb_param` VALUES ('27', '10', 'index_top_words', '0', '首页置顶文字', '写下你的座右铭吧');
INSERT INTO `nb_param` VALUES ('28', '10', 'menu_home', '0', '导航菜单_首页', '主页');
INSERT INTO `nb_param` VALUES ('29', '10', 'menu_project', '0', '导航菜单_我的作品', '作品');
INSERT INTO `nb_param` VALUES ('30', '10', 'menu_note', '0', '导航菜单_笔记', '笔记');
INSERT INTO `nb_param` VALUES ('31', '10', 'menu_link', '0', '导航菜单_额外的链接', '代码');
INSERT INTO `nb_param` VALUES ('32', '10', 'menu_link_icon', '0', '导航菜单_额外的链接的字体图标logo', 'fa fa-code');
INSERT INTO `nb_param` VALUES ('33', '10', 'menu_link_href', '0', '导航菜单_额外的链接url', '');
INSERT INTO `nb_param` VALUES ('34', '10', 'menu_mine', '0', '导航菜单_关于我', '关于');
INSERT INTO `nb_param` VALUES ('35', '10', 'menu_cloud_file', '0', '导航菜单_云文件', '文件');
INSERT INTO `nb_param` VALUES ('36', '11', 'wechat_pay', '0', '微信付款码', '/static/assets/img/wechat.png');
INSERT INTO `nb_param` VALUES ('37', '11', 'alipay', '0', '支付宝付款码', '/static/assets/img/alipay.png');
INSERT INTO `nb_param` VALUES ('38', '10', 'info_label', '0', '信息板内容', '此处填写网站的一些信息');
INSERT INTO `nb_param` VALUES ('39', '10', 'menu_search', '0', '导航菜单_搜索', '搜索');
INSERT INTO `nb_param` VALUES ('40', '10', 'website_logo_words', '0', '网站logo的文字', '渔人科技个人博客');
INSERT INTO `nb_param` VALUES ('41', '10', 'website_logo_small_words', '0', '网站logo的文字旁的小字', '这是一个小标题');
INSERT INTO `nb_param` VALUES ('42', '10', 'comment_notice', '0', '评论置顶公告', '遵守国家法律法规，请勿回复无意义内容，请不要回复嵌套过多的楼层！');
INSERT INTO `nb_param` VALUES ('43', '10', 'project_top_notice', '0', '项目置顶公告', '资源分享');
INSERT INTO `nb_param` VALUES ('44', '10', 'message_panel_words', '0', '留言板的提示信息文字', '欢迎大家');
INSERT INTO `nb_param` VALUES ('45', '10', 'qiniu_domain', '0', '七牛云文件服务器域名', '');
INSERT INTO `nb_param` VALUES ('46', '8', 'mail_smpt_server_addr', '0', 'SMTP服务器', 'smtp.qq.com');
INSERT INTO `nb_param` VALUES ('47', '8', 'mail_smpt_server_port', '0', 'SMTP端口号', '25');
INSERT INTO `nb_param` VALUES ('48', '8', 'mail_server_account', '0', '发件人邮箱', '123456789@qq.com');
INSERT INTO `nb_param` VALUES ('49', '8', 'mail_sender_name', '0', '发件人邮箱帐号（一般为@前面部分）', 'admin');
INSERT INTO `nb_param` VALUES ('50', '8', 'mail_server_password', '0', '邮箱登入密码', '123456');

-- ----------------------------
-- Table structure for nb_project
-- ----------------------------
DROP TABLE IF EXISTS `nb_project`;
CREATE TABLE `nb_project` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `cate_id` bigint(20) NOT NULL,
  `cover` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `modify` datetime DEFAULT NULL,
  `name` varchar(11) NOT NULL,
  `post` datetime DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `cate_refer_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FKtiswf2lccadae70gsjrd40x6t` (`cate_refer_id`),
  CONSTRAINT `FKtiswf2lccadae70gsjrd40x6t` FOREIGN KEY (`cate_refer_id`) REFERENCES `nb_project_cate` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of nb_project
-- ----------------------------

-- ----------------------------
-- Table structure for nb_project_cate
-- ----------------------------
DROP TABLE IF EXISTS `nb_project_cate`;
CREATE TABLE `nb_project_cate` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `cn_name` varchar(50) DEFAULT NULL,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of nb_project_cate
-- ----------------------------

-- ----------------------------
-- Table structure for nb_tag
-- ----------------------------
DROP TABLE IF EXISTS `nb_tag`;
CREATE TABLE `nb_tag` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK6tfxkiyl7xpuxll97e045281a` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of nb_tag
-- ----------------------------
INSERT INTO `nb_tag` VALUES ('1', 'JavaWeb交流学习群:830841208');

-- ----------------------------
-- Table structure for nb_tag_refer
-- ----------------------------
DROP TABLE IF EXISTS `nb_tag_refer`;
CREATE TABLE `nb_tag_refer` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `refer_id` bigint(20) NOT NULL,
  `show` tinyint(1) NOT NULL,
  `tag_id` bigint(20) NOT NULL,
  `type` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of nb_tag_refer
-- ----------------------------
INSERT INTO `nb_tag_refer` VALUES ('1', '1563610016078', '1', '1', 'article');
INSERT INTO `nb_tag_refer` VALUES ('2', '1563759339226', '1', '1', 'article');
INSERT INTO `nb_tag_refer` VALUES ('4', '1571224762403', '1', '1', 'article');
INSERT INTO `nb_tag_refer` VALUES ('6', '1564936050961', '1', '1', 'article');
INSERT INTO `nb_tag_refer` VALUES ('7', '1571408504137', '1', '1', 'article');
INSERT INTO `nb_tag_refer` VALUES ('8', '1571408504937', '1', '1', 'article');

-- ----------------------------
-- Table structure for nb_upload
-- ----------------------------
DROP TABLE IF EXISTS `nb_upload`;
CREATE TABLE `nb_upload` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `disk_path` varchar(255) NOT NULL,
  `type` varchar(50) NOT NULL,
  `upload` datetime DEFAULT NULL,
  `virtual_path` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of nb_upload
-- ----------------------------
INSERT INTO `nb_upload` VALUES ('1', 'F:/upload/noteblogv4/img/2019-07-20/a2c523ca-6690-451f-87bb-9cc9b2665cd8.png', 'image/png', '2019-07-20 16:06:04', '/upfiles/img/2019-07-20/a2c523ca-6690-451f-87bb-9cc9b2665cd8.png');
INSERT INTO `nb_upload` VALUES ('2', 'F:/upload/noteblogv4/img/2019-07-22/e3ebebab-eb1a-4d4e-90ae-b9b302e61e05.jpg', 'image/jpeg', '2019-07-22 09:34:19', '/upfiles/img/2019-07-22/e3ebebab-eb1a-4d4e-90ae-b9b302e61e05.jpg');
INSERT INTO `nb_upload` VALUES ('3', 'F:/upload/noteblogv4/img/2019-07-22/d2216f64-8c2b-4966-bd22-1ddfa2ef9681.jpg', 'image/jpeg', '2019-07-22 09:34:54', '/upfiles/img/2019-07-22/d2216f64-8c2b-4966-bd22-1ddfa2ef9681.jpg');
INSERT INTO `nb_upload` VALUES ('4', 'D:/upload/noteblogv4/img/2019-10-18/81057a1b-dbad-4152-9479-dcda3e274718.jpeg', 'image/jpeg', '2019-10-18 22:14:08', '/upfiles/img/2019-10-18/81057a1b-dbad-4152-9479-dcda3e274718.jpeg');

-- ----------------------------
-- Table structure for sys_logger
-- ----------------------------
DROP TABLE IF EXISTS `sys_logger`;
CREATE TABLE `sys_logger` (
  `id` varchar(255) NOT NULL,
  `content_type` varchar(255) DEFAULT NULL,
  `ip_addr` varchar(255) DEFAULT NULL,
  `ip_info` varchar(255) DEFAULT NULL,
  `request_method` varchar(255) DEFAULT NULL,
  `session_id` varchar(255) DEFAULT NULL,
  `time` datetime DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `user_agent` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_logger
-- ----------------------------
INSERT INTO `sys_logger` VALUES ('1', null, null, null, null, null, '2019-10-15 19:08:03', null, null, 'admin');

-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `enable` tinyint(1) NOT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `order_index` int(11) DEFAULT NULL,
  `parent_id` bigint(20) NOT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `role_id` bigint(20) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `resource_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKr4hyo6ex6quothveikqr6tfkk` (`resource_id`),
  CONSTRAINT `FKr4hyo6ex6quothveikqr6tfkk` FOREIGN KEY (`resource_id`) REFERENCES `sys_resource` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
INSERT INTO `sys_menu` VALUES ('1', '1', 'layui-icon layui-icon-home', '菜单根目录', '0', '0', null, null, 'ROOT', null);
INSERT INTO `sys_menu` VALUES ('2', '1', 'layui-icon layui-icon-console', '仪表盘', '0', '1', '管理页面仪表盘界面', '1', 'PARENT', '4');
INSERT INTO `sys_menu` VALUES ('3', '0', 'layui-icon layui-icon-auz', '权限管理', '1', '1', null, '1', 'PARENT', null);
INSERT INTO `sys_menu` VALUES ('4', '0', 'fa fa-list-ul', '菜单管理', '0', '3', '菜单管理页面', '1', 'LEAF', '8');
INSERT INTO `sys_menu` VALUES ('5', '0', 'fa fa-user-o', '角色管理', '1', '3', '后台角色管理页面', '1', 'LEAF', '16');
INSERT INTO `sys_menu` VALUES ('6', '0', 'fa fa-users', '用户管理', '2', '3', '用户管理界面', '1', 'LEAF', '22');
INSERT INTO `sys_menu` VALUES ('7', '1', 'layui-icon layui-icon-edit', '内容发布', '2', '1', null, '1', 'PARENT', null);
INSERT INTO `sys_menu` VALUES ('8', '1', 'fa fa-send-o', '发布文章', '0', '7', '博文发布页面', '1', 'LEAF', '34');
INSERT INTO `sys_menu` VALUES ('9', '1', 'fa fa-file-text-o', '随记随笔', '1', '7', '随笔/笔记发布页面', '1', 'LEAF', '50');
INSERT INTO `sys_menu` VALUES ('10', '1', 'layui-icon layui-icon-template-1', '内容管理', '3', '1', null, '1', 'PARENT', null);
INSERT INTO `sys_menu` VALUES ('11', '1', 'fa fa-newspaper-o', '文章管理', '0', '10', '博文管理页面', '1', 'LEAF', '42');
INSERT INTO `sys_menu` VALUES ('12', '1', 'fa fa-file-o', '随笔管理', '1', '10', '随笔管理页面', '1', 'LEAF', '49');
INSERT INTO `sys_menu` VALUES ('13', '1', 'layui-icon layui-icon-read', '字典管理', '4', '1', null, '1', 'PARENT', null);
INSERT INTO `sys_menu` VALUES ('14', '1', 'fa fa-clone', '分类管理', '0', '13', '分类管理页面', '1', 'LEAF', '55');
INSERT INTO `sys_menu` VALUES ('15', '1', 'fa fa-hdd-o', '项目分类管理', '1', '13', '项目分类管理页面', '1', 'LEAF', '71');
INSERT INTO `sys_menu` VALUES ('16', '1', 'fa fa-hdd-o', '云文件分类管理', '2', '13', '云文件分类管理页面', '1', 'LEAF', '60');
INSERT INTO `sys_menu` VALUES ('17', '1', 'fa fa-dot-circle-o', '关键字管理', '3', '13', '关键字管理页面', '1', 'LEAF', '64');
INSERT INTO `sys_menu` VALUES ('18', '1', 'fa fa-tags', '标签管理', '4', '13', '标签管理页面', '1', 'LEAF', '77');
INSERT INTO `sys_menu` VALUES ('19', '1', 'layui-icon layui-icon-set', '偏好设置', '5', '1', null, '1', 'PARENT', null);
INSERT INTO `sys_menu` VALUES ('20', '1', 'fa fa-qrcode', '二维码设置', '0', '19', '微信和支付宝二维码图片设置界面', '1', 'LEAF', '102');
INSERT INTO `sys_menu` VALUES ('21', '1', 'fa fa-cogs', '网站基本设置', '1', '19', '网站基本设置界面', '1', 'LEAF', '100');
INSERT INTO `sys_menu` VALUES ('22', '1', 'fa fa-cog', '网站风格设置', '2', '19', '网站风格设置界面', '1', 'LEAF', '103');
INSERT INTO `sys_menu` VALUES ('23', '1', 'fa fa-address-card-o', '个人资料', '3', '19', '管理员个人信息设置', '1', 'LEAF', '101');
INSERT INTO `sys_menu` VALUES ('24', '1', 'fa fa-server', '邮件服务器', '4', '19', '网站发送邮件服务器设置', '1', 'LEAF', '104');
INSERT INTO `sys_menu` VALUES ('25', '1', 'layui-icon layui-icon-diamond', '个人内容', '6', '1', null, '1', 'PARENT', null);
INSERT INTO `sys_menu` VALUES ('26', '1', 'fa fa-hdd-o', '关于内容', '0', '25', '关于tab内容管理页面', '1', 'LEAF', '84');
INSERT INTO `sys_menu` VALUES ('27', '1', 'fa fa-laptop', '资源项目分享', '1', '25', '项目管理页面', '1', 'LEAF', '93');
INSERT INTO `sys_menu` VALUES ('28', '1', 'fa fa-file-archive-o', '云文件分享', '2', '25', '云文件管理页面', '1', 'LEAF', '27');
INSERT INTO `sys_menu` VALUES ('29', '1', 'layui-icon layui-icon-username', '消息管理', '7', '1', null, '1', 'PARENT', null);
INSERT INTO `sys_menu` VALUES ('30', '1', 'fa fa-comments-o', '评论管理', '0', '29', '评论管理页面', '1', 'LEAF', '80');
INSERT INTO `sys_menu` VALUES ('31', '1', 'fa fa-globe', '留言管理', '1', '29', '消息管理页面', '1', 'LEAF', '83');

-- ----------------------------
-- Table structure for sys_resource
-- ----------------------------
DROP TABLE IF EXISTS `sys_resource`;
CREATE TABLE `sys_resource` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `group` varchar(255) DEFAULT NULL,
  `name` varchar(50) NOT NULL,
  `permission` varchar(50) NOT NULL,
  `type` varchar(255) DEFAULT NULL,
  `url` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=109 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_resource
-- ----------------------------
INSERT INTO `sys_resource` VALUES ('1', 'PAGE', '用户注销请求地址', 'user:logout:page', 'OTHER', '/management/logout');
INSERT INTO `sys_resource` VALUES ('2', 'PAGE', '字体图标预览', 'user:font:page', 'NAV_LINK', '/font/list');
INSERT INTO `sys_resource` VALUES ('3', 'PAGE', '后台管理首页', 'management:index:page', 'OTHER', '/management/index');
INSERT INTO `sys_resource` VALUES ('4', 'ROUTER', '管理页面仪表盘界面', 'management:index:dashboard', 'NAV_LINK', '/management/dashboard');
INSERT INTO `sys_resource` VALUES ('5', 'AJAX', '添加新角色操作', 'permission:role:create', 'OTHER', '/management/role/create');
INSERT INTO `sys_resource` VALUES ('6', 'AJAX', '删除角色菜单', 'permission:menu:delete', 'OTHER', '/management/menu/delete');
INSERT INTO `sys_resource` VALUES ('7', 'AJAX', '更新角色所拥有的资源信息', 'permission:role:update_role_resource', 'OTHER', '/management/update/role/resource');
INSERT INTO `sys_resource` VALUES ('8', 'ROUTER', '菜单管理页面', 'permission:menu:router', 'NAV_LINK', '/management/menu');
INSERT INTO `sys_resource` VALUES ('9', 'AJAX', '修改角色操作', 'permission:role:update', 'OTHER', '/management/role/update');
INSERT INTO `sys_resource` VALUES ('10', 'AJAX', '菜单管理界面的菜单数据', 'permission:menu:table_list', 'OTHER', '/management/menu/list');
INSERT INTO `sys_resource` VALUES ('11', 'AJAX', '修改角色菜单', 'permission:menu:update', 'OTHER', '/management/menu/update');
INSERT INTO `sys_resource` VALUES ('12', 'AJAX', '删除角色操作', 'permission:role:delete', 'OTHER', '/management/role/delete');
INSERT INTO `sys_resource` VALUES ('13', 'ROUTER', '添加角色菜单界面', 'permission:menu:add', 'OTHER', '/management/menu/add');
INSERT INTO `sys_resource` VALUES ('14', 'ROUTER', '修改角色菜单界面', 'permission:menu:edit', 'OTHER', '/management/menu/edit');
INSERT INTO `sys_resource` VALUES ('15', 'AJAX', '添加新角色菜单操作', 'permission:menu:create', 'OTHER', '/management/menu/create');
INSERT INTO `sys_resource` VALUES ('16', 'ROUTER', '后台角色管理页面', 'permission:role:router', 'NAV_LINK', '/management/role');
INSERT INTO `sys_resource` VALUES ('17', 'AJAX', '后台角色管理页面的资源树', 'permission:role:resource_tree', 'OTHER', '/management/resource/tree');
INSERT INTO `sys_resource` VALUES ('18', 'AJAX', '用户信息分页数据', 'management:user:table_list', 'OTHER', '/management/users/list');
INSERT INTO `sys_resource` VALUES ('19', 'AJAX', '修改用户的角色关联信息', 'management:user:role_update', 'OTHER', '/management/users/roles/id/update');
INSERT INTO `sys_resource` VALUES ('20', 'AJAX', '修改用户的角色关联信息', 'management:user:role_update', 'OTHER', '/management/users/roles/str/update');
INSERT INTO `sys_resource` VALUES ('21', 'AJAX', '查询用户的角色信息', 'management:user:role_list', 'OTHER', '/management/users/roles/list');
INSERT INTO `sys_resource` VALUES ('22', 'ROUTER', '用户管理界面', 'management:user:router', 'NAV_LINK', '/management/users');
INSERT INTO `sys_resource` VALUES ('23', 'AJAX', '修改用户状态信息', 'management:user:enable_update', 'OTHER', '/management/users/enable/update');
INSERT INTO `sys_resource` VALUES ('24', 'AJAX', '修改用户昵称信息', 'management:user:nickname_update', 'OTHER', '/management/users/nickname/update');
INSERT INTO `sys_resource` VALUES ('25', 'ROUTER', '云文件发布页面', 'management:cloudFile:add_page', 'NAV_LINK', '/management/cloudFile/add');
INSERT INTO `sys_resource` VALUES ('26', 'AJAX', '删除云文件操作', 'management:cloudFile:delete', 'OTHER', '/management/cloudFile/delete/{id}');
INSERT INTO `sys_resource` VALUES ('27', 'ROUTER', '云文件管理页面', 'management:cloudFile:list_page', 'NAV_LINK', '/management/cloudFile');
INSERT INTO `sys_resource` VALUES ('28', 'ROUTER', '云文件管编辑页面', 'management:cloudFile:edit_page', 'OTHER', '/management/cloudFile/edit');
INSERT INTO `sys_resource` VALUES ('29', 'AJAX', '修改一个云文件', 'management:cloudFile:update', 'OTHER', '/management/cloudFile/update');
INSERT INTO `sys_resource` VALUES ('30', 'AJAX', '发布一个新的项目', 'management:cloudFile:create', 'OTHER', '/management/cloudFile/create');
INSERT INTO `sys_resource` VALUES ('31', 'AJAX', '云文件管理页面中的数据接口', 'management:cloudFile:list_data', 'OTHER', '/management/cloudFile/list');
INSERT INTO `sys_resource` VALUES ('32', 'AJAX', '删除文章操作', 'management:article:delete', 'OTHER', '/management/article/delete/{id}');
INSERT INTO `sys_resource` VALUES ('33', 'AJAX', '修改文章的置顶状态', 'management:article:update_top', 'OTHER', '/management/article/update/top/{id}');
INSERT INTO `sys_resource` VALUES ('34', 'ROUTER', '博文发布页面', 'management:article:post_page', 'NAV_LINK', '/management/article/post');
INSERT INTO `sys_resource` VALUES ('35', 'AJAX', '修改文章的可评论状态', 'management:article:update_commented', 'OTHER', '/management/article/update/commented/{id}');
INSERT INTO `sys_resource` VALUES ('36', 'AJAX', '修改文章的可赞赏状态', 'management:article:update_appreciable', 'OTHER', '/management/article/update/appreciable/{id}');
INSERT INTO `sys_resource` VALUES ('37', 'AJAX', '编辑文章页面的tag数据包含选中的(selected)', 'management:article:edit_article_tags', 'OTHER', '/management/article/edit/tags');
INSERT INTO `sys_resource` VALUES ('38', 'AJAX', '修改一篇博文', 'management:article:update', 'OTHER', '/management/article/update');
INSERT INTO `sys_resource` VALUES ('39', 'AJAX', '发布一篇新的博文', 'management:article:create', 'OTHER', '/management/article/create');
INSERT INTO `sys_resource` VALUES ('40', 'ROUTER', '博文管编辑页面', 'management:article:edit_page', 'OTHER', '/management/article/edit');
INSERT INTO `sys_resource` VALUES ('41', 'AJAX', '博文管理页面中的数据接口', 'management:article:list_data', 'OTHER', '/management/article/list');
INSERT INTO `sys_resource` VALUES ('42', 'ROUTER', '博文管理页面', 'management:article:list_page', 'NAV_LINK', '/management/article');
INSERT INTO `sys_resource` VALUES ('43', 'AJAX', '删除笔记操作', 'management:note:delete', 'OTHER', '/management/note/delete/{id}');
INSERT INTO `sys_resource` VALUES ('44', 'AJAX', '修改笔记的置顶状态', 'management:note:update_top', 'OTHER', '/management/note/update/top/{id}');
INSERT INTO `sys_resource` VALUES ('45', 'AJAX', '修改一篇随笔/笔记', 'management:note:update', 'OTHER', '/management/note/update');
INSERT INTO `sys_resource` VALUES ('46', 'AJAX', '修改笔记的显隐状态', 'management:note:update_show', 'OTHER', '/management/note/update/show/{id}');
INSERT INTO `sys_resource` VALUES ('47', 'AJAX', '编辑随笔/笔记页面的tag数据包含选中的(selected)', 'management:note:edit_note_tags', 'OTHER', '/management/note/edit/tags');
INSERT INTO `sys_resource` VALUES ('48', 'AJAX', '随笔管理页面中的数据接口', 'management:note:list_data', 'OTHER', '/management/note/list');
INSERT INTO `sys_resource` VALUES ('49', 'ROUTER', '随笔管理页面', 'management:note:list_page', 'NAV_LINK', '/management/note');
INSERT INTO `sys_resource` VALUES ('50', 'ROUTER', '随笔/笔记发布页面', 'management:note:post_page', 'NAV_LINK', '/management/note/post');
INSERT INTO `sys_resource` VALUES ('51', 'AJAX', '发布一篇新的随笔/笔记', 'management:note:create', 'OTHER', '/management/note/create');
INSERT INTO `sys_resource` VALUES ('52', 'ROUTER', '随笔管编辑页面', 'management:note:edit_page', 'OTHER', '/management/note/edit');
INSERT INTO `sys_resource` VALUES ('53', 'AJAX', '修改分类操作', 'management:cate:update', 'OTHER', '/management/dictionary/cate/update');
INSERT INTO `sys_resource` VALUES ('54', 'AJAX', '删除分类操作', 'management:cate:delete', 'OTHER', '/management/dictionary/cate/delete');
INSERT INTO `sys_resource` VALUES ('55', 'ROUTER', '分类管理页面', 'management:cate:page', 'NAV_LINK', '/management/dictionary/cate');
INSERT INTO `sys_resource` VALUES ('56', 'AJAX', '分类管理分页数据', 'management:cate:list', 'OTHER', '/management/dictionary/cate/list');
INSERT INTO `sys_resource` VALUES ('57', 'AJAX', '添加分类操作', 'management:cate:create', 'OTHER', '/management/dictionary/cate/create');
INSERT INTO `sys_resource` VALUES ('58', 'AJAX', '修改云文件分类操作', 'management:cloudFileCate:update', 'OTHER', '/management/dictionary/cloudFileCate/update');
INSERT INTO `sys_resource` VALUES ('59', 'AJAX', '删除云文件分类操作', 'management:cloudFileCate:delete', 'OTHER', '/management/dictionary/cloudFileCate/delete');
INSERT INTO `sys_resource` VALUES ('60', 'ROUTER', '云文件分类管理页面', 'management:cloudFileCate:page', 'NAV_LINK', '/management/dictionary/cloudFileCate');
INSERT INTO `sys_resource` VALUES ('61', 'AJAX', '云文件分类管理分页数据', 'management:cloudFileCate:list', 'OTHER', '/management/dictionary/cloudFileCate/list');
INSERT INTO `sys_resource` VALUES ('62', 'AJAX', '添加云文件分类操作', 'management:cloudFileCate:create', 'OTHER', '/management/dictionary/cloudFileCate/create');
INSERT INTO `sys_resource` VALUES ('63', 'AJAX', '删除关键字操作', 'management:keyword:delete', 'OTHER', '/management/dictionary/keyword/delete');
INSERT INTO `sys_resource` VALUES ('64', 'ROUTER', '关键字管理页面', 'management:keyword:page', 'NAV_LINK', '/management/dictionary/keyword');
INSERT INTO `sys_resource` VALUES ('65', 'AJAX', '更新关键字状态操作', 'management:keyword:enable_update', 'OTHER', '/management/dictionary/keyword/update/enable');
INSERT INTO `sys_resource` VALUES ('66', 'AJAX', '关键字管理分页数据', 'management:keyword:list', 'OTHER', '/management/dictionary/keyword/list');
INSERT INTO `sys_resource` VALUES ('67', 'AJAX', '添加关键字操作', 'management:keyword:create', 'OTHER', '/management/dictionary/keyword/create');
INSERT INTO `sys_resource` VALUES ('68', 'AJAX', '更新关键字文本操作', 'management:keyword:update', 'OTHER', '/management/dictionary/keyword/update');
INSERT INTO `sys_resource` VALUES ('69', 'AJAX', '修改项目分类操作', 'management:projectCate:update', 'OTHER', '/management/dictionary/projectCate/update');
INSERT INTO `sys_resource` VALUES ('70', 'AJAX', '删除项目分类操作', 'management:projectCate:delete', 'OTHER', '/management/dictionary/projectCate/delete');
INSERT INTO `sys_resource` VALUES ('71', 'ROUTER', '项目分类管理页面', 'management:projectCate:page', 'NAV_LINK', '/management/dictionary/projectCate');
INSERT INTO `sys_resource` VALUES ('72', 'AJAX', '项目分类管理分页数据', 'management:projectCate:list', 'OTHER', '/management/dictionary/projectCate/list');
INSERT INTO `sys_resource` VALUES ('73', 'AJAX', '添加项目分类操作', 'management:projectCate:create', 'OTHER', '/management/dictionary/projectCate/create');
INSERT INTO `sys_resource` VALUES ('74', 'AJAX', '修改标签数据操作接口', 'management:tag:update', 'OTHER', '/management/dictionary/tag/update');
INSERT INTO `sys_resource` VALUES ('75', 'AJAX', '删除标签数据操作接口', 'management:tag:delete', 'OTHER', '/management/dictionary/tag/delete');
INSERT INTO `sys_resource` VALUES ('76', 'AJAX', '标签管理页面分页数据接口', 'management:tag:list', 'OTHER', '/management/dictionary/tag/list');
INSERT INTO `sys_resource` VALUES ('77', 'ROUTER', '标签管理页面', 'management:tag:page', 'NAV_LINK', '/management/dictionary/tag');
INSERT INTO `sys_resource` VALUES ('78', 'AJAX', '修改评论状态', 'management:comment:update', 'OTHER', '/management/comment/update');
INSERT INTO `sys_resource` VALUES ('79', 'AJAX', '评论管理页面分页数据接口', 'management:comment:list', 'OTHER', '/management/comment/list');
INSERT INTO `sys_resource` VALUES ('80', 'ROUTER', '评论管理页面', 'management:comment:page', 'NAV_LINK', '/management/comment');
INSERT INTO `sys_resource` VALUES ('81', 'AJAX', '修改评论状态', 'management:message:update', 'OTHER', '/management/message/update');
INSERT INTO `sys_resource` VALUES ('82', 'AJAX', '消息管理页面分页数据接口', 'management:message:list', 'OTHER', '/management/message/list');
INSERT INTO `sys_resource` VALUES ('83', 'ROUTER', '消息管理页面', 'management:message:page', 'NAV_LINK', '/management/message');
INSERT INTO `sys_resource` VALUES ('84', 'ROUTER', '关于tab内容管理页面', 'management:profile:page', 'NAV_LINK', '/management/profile');
INSERT INTO `sys_resource` VALUES ('85', 'AJAX', '删除关于tab内容操作', 'management:profile:delete', 'OTHER', '/management/profile/delete');
INSERT INTO `sys_resource` VALUES ('86', 'ROUTER', '添加tab页面', 'management:profile:add', 'NAV_LINK', '/management/profile/add');
INSERT INTO `sys_resource` VALUES ('87', 'ROUTER', 'tab内容编辑页面', 'management:profile:edit', 'OTHER', '/management/profile/edit');
INSERT INTO `sys_resource` VALUES ('88', 'AJAX', '添加关于关于tab内容操作', 'management:profile:create', 'OTHER', '/management/profile/create');
INSERT INTO `sys_resource` VALUES ('89', 'AJAX', '更新关于tab内容操作', 'management:profile:update', 'OTHER', '/management/profile/update');
INSERT INTO `sys_resource` VALUES ('90', 'AJAX', '关于tab内容管理分页数据', 'management:profile:list', 'OTHER', '/management/profile/list');
INSERT INTO `sys_resource` VALUES ('91', 'ROUTER', '项目发布页面', 'management:project:add_page', 'NAV_LINK', '/management/project/add');
INSERT INTO `sys_resource` VALUES ('92', 'AJAX', '删除项目操作', 'management:project:delete', 'OTHER', '/management/project/delete/{id}');
INSERT INTO `sys_resource` VALUES ('93', 'ROUTER', '项目管理页面', 'management:project:list_page', 'NAV_LINK', '/management/project');
INSERT INTO `sys_resource` VALUES ('94', 'ROUTER', '项目管编辑页面', 'management:project:edit_page', 'OTHER', '/management/project/edit');
INSERT INTO `sys_resource` VALUES ('95', 'AJAX', '修改一篇项目', 'management:project:update', 'OTHER', '/management/project/update');
INSERT INTO `sys_resource` VALUES ('96', 'AJAX', '发布一个新的项目', 'management:project:create', 'OTHER', '/management/project/create');
INSERT INTO `sys_resource` VALUES ('97', 'AJAX', '项目管理页面中的数据接口', 'management:project:list_data', 'OTHER', '/management/project/list');
INSERT INTO `sys_resource` VALUES ('98', 'AJAX', '网站设置修改操作', 'management:settings:update', 'OTHER', '/management/settings/update');
INSERT INTO `sys_resource` VALUES ('99', 'AJAX', '网站邮件服务器修改操作', 'management:settings:mail_update', 'OTHER', '/management/settings/mail/update');
INSERT INTO `sys_resource` VALUES ('100', 'ROUTER', '网站基本设置界面', 'management:settings:common', 'NAV_LINK', '/management/settings/common');
INSERT INTO `sys_resource` VALUES ('101', 'ROUTER', '管理员个人信息设置', 'management:settings:profile', 'NAV_LINK', '/management/settings/profile');
INSERT INTO `sys_resource` VALUES ('102', 'ROUTER', '微信和支付宝二维码图片设置界面', 'management:settings:qrcode', 'NAV_LINK', '/management/settings/qrcode');
INSERT INTO `sys_resource` VALUES ('103', 'ROUTER', '网站风格设置界面', 'management:settings:theme', 'NAV_LINK', '/management/settings/theme');
INSERT INTO `sys_resource` VALUES ('104', 'ROUTER', '网站发送邮件服务器设置', 'management:settings:mail', 'NAV_LINK', '/management/settings/mail');
INSERT INTO `sys_resource` VALUES ('105', 'AJAX', '支付宝/微信二维码修改操作', 'management:settings:pay_update', 'OTHER', '/management/settings/pay/update');
INSERT INTO `sys_resource` VALUES ('106', 'AJAX', '网站管理员修改操作', 'management:settings:profile_update', 'OTHER', '/management/settings/profile/update');
INSERT INTO `sys_resource` VALUES ('107', 'AJAX', '通用上传接口', 'management:common:upload', 'OTHER', '/management/upload');
INSERT INTO `sys_resource` VALUES ('108', 'AJAX', 'editormd编辑器上传接口', 'management:editormd:upload', 'OTHER', '/management/upload/editorMD');

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `cn_name` varchar(50) DEFAULT NULL,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES ('1', '网站管理员', 'ROLE_MASTER');
INSERT INTO `sys_role` VALUES ('2', '网站访客', 'ROLE_USER');

-- ----------------------------
-- Table structure for sys_role_resource
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_resource`;
CREATE TABLE `sys_role_resource` (
  `resource_id` bigint(20) NOT NULL,
  `role_id` bigint(20) NOT NULL,
  `enable` tinyint(1) NOT NULL,
  PRIMARY KEY (`resource_id`,`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_role_resource
-- ----------------------------
INSERT INTO `sys_role_resource` VALUES ('1', '1', '1');
INSERT INTO `sys_role_resource` VALUES ('2', '1', '1');
INSERT INTO `sys_role_resource` VALUES ('3', '1', '1');
INSERT INTO `sys_role_resource` VALUES ('4', '1', '1');
INSERT INTO `sys_role_resource` VALUES ('5', '1', '1');
INSERT INTO `sys_role_resource` VALUES ('6', '1', '1');
INSERT INTO `sys_role_resource` VALUES ('7', '1', '1');
INSERT INTO `sys_role_resource` VALUES ('8', '1', '1');
INSERT INTO `sys_role_resource` VALUES ('9', '1', '1');
INSERT INTO `sys_role_resource` VALUES ('10', '1', '1');
INSERT INTO `sys_role_resource` VALUES ('11', '1', '1');
INSERT INTO `sys_role_resource` VALUES ('12', '1', '1');
INSERT INTO `sys_role_resource` VALUES ('13', '1', '1');
INSERT INTO `sys_role_resource` VALUES ('14', '1', '1');
INSERT INTO `sys_role_resource` VALUES ('15', '1', '1');
INSERT INTO `sys_role_resource` VALUES ('16', '1', '1');
INSERT INTO `sys_role_resource` VALUES ('17', '1', '1');
INSERT INTO `sys_role_resource` VALUES ('18', '1', '1');
INSERT INTO `sys_role_resource` VALUES ('19', '1', '1');
INSERT INTO `sys_role_resource` VALUES ('20', '1', '1');
INSERT INTO `sys_role_resource` VALUES ('21', '1', '1');
INSERT INTO `sys_role_resource` VALUES ('22', '1', '1');
INSERT INTO `sys_role_resource` VALUES ('23', '1', '1');
INSERT INTO `sys_role_resource` VALUES ('24', '1', '1');
INSERT INTO `sys_role_resource` VALUES ('25', '1', '1');
INSERT INTO `sys_role_resource` VALUES ('26', '1', '1');
INSERT INTO `sys_role_resource` VALUES ('27', '1', '1');
INSERT INTO `sys_role_resource` VALUES ('28', '1', '1');
INSERT INTO `sys_role_resource` VALUES ('29', '1', '1');
INSERT INTO `sys_role_resource` VALUES ('30', '1', '1');
INSERT INTO `sys_role_resource` VALUES ('31', '1', '1');
INSERT INTO `sys_role_resource` VALUES ('32', '1', '1');
INSERT INTO `sys_role_resource` VALUES ('33', '1', '1');
INSERT INTO `sys_role_resource` VALUES ('34', '1', '1');
INSERT INTO `sys_role_resource` VALUES ('35', '1', '1');
INSERT INTO `sys_role_resource` VALUES ('36', '1', '1');
INSERT INTO `sys_role_resource` VALUES ('37', '1', '1');
INSERT INTO `sys_role_resource` VALUES ('38', '1', '1');
INSERT INTO `sys_role_resource` VALUES ('39', '1', '1');
INSERT INTO `sys_role_resource` VALUES ('40', '1', '1');
INSERT INTO `sys_role_resource` VALUES ('41', '1', '1');
INSERT INTO `sys_role_resource` VALUES ('42', '1', '1');
INSERT INTO `sys_role_resource` VALUES ('43', '1', '1');
INSERT INTO `sys_role_resource` VALUES ('44', '1', '1');
INSERT INTO `sys_role_resource` VALUES ('45', '1', '1');
INSERT INTO `sys_role_resource` VALUES ('46', '1', '1');
INSERT INTO `sys_role_resource` VALUES ('47', '1', '1');
INSERT INTO `sys_role_resource` VALUES ('48', '1', '1');
INSERT INTO `sys_role_resource` VALUES ('49', '1', '1');
INSERT INTO `sys_role_resource` VALUES ('50', '1', '1');
INSERT INTO `sys_role_resource` VALUES ('51', '1', '1');
INSERT INTO `sys_role_resource` VALUES ('52', '1', '1');
INSERT INTO `sys_role_resource` VALUES ('53', '1', '1');
INSERT INTO `sys_role_resource` VALUES ('54', '1', '1');
INSERT INTO `sys_role_resource` VALUES ('55', '1', '1');
INSERT INTO `sys_role_resource` VALUES ('56', '1', '1');
INSERT INTO `sys_role_resource` VALUES ('57', '1', '1');
INSERT INTO `sys_role_resource` VALUES ('58', '1', '1');
INSERT INTO `sys_role_resource` VALUES ('59', '1', '1');
INSERT INTO `sys_role_resource` VALUES ('60', '1', '1');
INSERT INTO `sys_role_resource` VALUES ('61', '1', '1');
INSERT INTO `sys_role_resource` VALUES ('62', '1', '1');
INSERT INTO `sys_role_resource` VALUES ('63', '1', '1');
INSERT INTO `sys_role_resource` VALUES ('64', '1', '1');
INSERT INTO `sys_role_resource` VALUES ('65', '1', '1');
INSERT INTO `sys_role_resource` VALUES ('66', '1', '1');
INSERT INTO `sys_role_resource` VALUES ('67', '1', '1');
INSERT INTO `sys_role_resource` VALUES ('68', '1', '1');
INSERT INTO `sys_role_resource` VALUES ('69', '1', '1');
INSERT INTO `sys_role_resource` VALUES ('70', '1', '1');
INSERT INTO `sys_role_resource` VALUES ('71', '1', '1');
INSERT INTO `sys_role_resource` VALUES ('72', '1', '1');
INSERT INTO `sys_role_resource` VALUES ('73', '1', '1');
INSERT INTO `sys_role_resource` VALUES ('74', '1', '1');
INSERT INTO `sys_role_resource` VALUES ('75', '1', '1');
INSERT INTO `sys_role_resource` VALUES ('76', '1', '1');
INSERT INTO `sys_role_resource` VALUES ('77', '1', '1');
INSERT INTO `sys_role_resource` VALUES ('78', '1', '1');
INSERT INTO `sys_role_resource` VALUES ('79', '1', '1');
INSERT INTO `sys_role_resource` VALUES ('80', '1', '1');
INSERT INTO `sys_role_resource` VALUES ('81', '1', '1');
INSERT INTO `sys_role_resource` VALUES ('82', '1', '1');
INSERT INTO `sys_role_resource` VALUES ('83', '1', '1');
INSERT INTO `sys_role_resource` VALUES ('84', '1', '1');
INSERT INTO `sys_role_resource` VALUES ('85', '1', '1');
INSERT INTO `sys_role_resource` VALUES ('86', '1', '1');
INSERT INTO `sys_role_resource` VALUES ('87', '1', '1');
INSERT INTO `sys_role_resource` VALUES ('88', '1', '1');
INSERT INTO `sys_role_resource` VALUES ('89', '1', '1');
INSERT INTO `sys_role_resource` VALUES ('90', '1', '1');
INSERT INTO `sys_role_resource` VALUES ('91', '1', '1');
INSERT INTO `sys_role_resource` VALUES ('92', '1', '1');
INSERT INTO `sys_role_resource` VALUES ('93', '1', '1');
INSERT INTO `sys_role_resource` VALUES ('94', '1', '1');
INSERT INTO `sys_role_resource` VALUES ('95', '1', '1');
INSERT INTO `sys_role_resource` VALUES ('96', '1', '1');
INSERT INTO `sys_role_resource` VALUES ('97', '1', '1');
INSERT INTO `sys_role_resource` VALUES ('98', '1', '1');
INSERT INTO `sys_role_resource` VALUES ('99', '1', '1');
INSERT INTO `sys_role_resource` VALUES ('100', '1', '1');
INSERT INTO `sys_role_resource` VALUES ('101', '1', '1');
INSERT INTO `sys_role_resource` VALUES ('102', '1', '1');
INSERT INTO `sys_role_resource` VALUES ('103', '1', '1');
INSERT INTO `sys_role_resource` VALUES ('104', '1', '1');
INSERT INTO `sys_role_resource` VALUES ('105', '1', '1');
INSERT INTO `sys_role_resource` VALUES ('106', '1', '1');
INSERT INTO `sys_role_resource` VALUES ('107', '1', '1');
INSERT INTO `sys_role_resource` VALUES ('108', '1', '1');

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `avatar` varchar(100) DEFAULT NULL,
  `create` datetime DEFAULT NULL,
  `default_role_id` bigint(20) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `enable` tinyint(1) NOT NULL,
  `nickname` varchar(50) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `qq_num` varchar(20) DEFAULT NULL,
  `qq_open_id` varchar(255) DEFAULT NULL,
  `username` varchar(20) DEFAULT NULL,
  `wechat_open_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES ('1', '/upfiles/img/2019-10-18/81057a1b-dbad-4152-9479-dcda3e274718.jpeg', '2019-07-19 11:12:48', '1', '123456789@qq.com', '1', 'admin', 'c3284d0f94606de1fd2af172aba15bf3', null, null, 'admin', null);

-- ----------------------------
-- Table structure for sys_user_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role` (
  `role_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `enable` tinyint(1) NOT NULL,
  PRIMARY KEY (`role_id`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------
INSERT INTO `sys_user_role` VALUES ('1', '1', '1');
INSERT INTO `sys_user_role` VALUES ('2', '2', '1');
