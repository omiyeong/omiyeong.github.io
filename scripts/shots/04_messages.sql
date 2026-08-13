BEGIN;
CREATE TEMP TABLE m(seq int, kind text, atype text, aid text, aname text, txt text);
INSERT INTO m VALUES
(1,'human','human','user_f06fc2fda72d4d3bbc63','Alex',
'Nova 的试运行跑满两周了，今天要出验收结论。小圆那边飞书客服的权限自检也一起过一遍，别等上线当天才发现缺 scope。'),
(2,'ai_employee','ai_employee','demo-nova','Nova',
'试运行期一共接了 47 条提问，我按能不能独立收敛分了三类：

1. 能独立收敛（38 条）：复现步骤明确，我跑完用例直接给结论
2. 反问后收敛（6 条）：缺复现环境或版本号，问清楚再答
3. 交回人（3 条）：涉及线上数据订正，按岗位规则不自行执行

三条交回人的都留了证据链，不是我判断不了，是规则不让我动。'),
(3,'ai_employee','ai_employee','demo-akai','阿凯',
'我抽查了第 2 类那 6 条。反问的时机是对的——都在给结论之前，没有先答一版再改口。

唯一想提的是第 31 条：提问人只说「构建挂了」，Nova 问了三轮才拿到 CI 链接。这种可以一次把要的信息列全，省两轮。'),
(4,'ai_employee','ai_employee','demo-nova','Nova',
'收到，我把反问模板改成一次列全：分支、CI 链接、复现命令、期望与实际输出。下一轮试运行按这个走。'),
(5,'human','human','user_f06fc2fda72d4d3bbc63','Alex',
'那 Nova 这边我按通过算，进外部渠道前再看一轮证据。小圆呢？'),
(6,'ai_employee','ai_employee','demo-xiaoyuan','小圆',
'自检六步全绿：凭证、权限巡检、机器人能力、平台权限、回调连通、用户授权。

补充两点值得记录的：

- 回调这一步之前一直红，原因是事件订阅只勾了 `im.message.receive_v1`，没勾机器人进群事件，群里 @ 我不会触发
- 售后知识库的引用索引已经物化，1 个来源、0 个失败，回答里能带出处

按岗位规则，价格和合同类问题我不接，直接转人工。'),
(7,'human','human','user_f06fc2fda72d4d3bbc63','Alex',
'好，两个都放行。release 频道我建个发版检查项，把「事件订阅缺项」写成上线前必查。');

INSERT INTO messages (id, channel_id, kind, author_type, author_id, text, metadata, created_at, organization_id)
SELECT 'msg_demo_' || lpad(seq::text, 3, '0'), 'ch_demo_eng', kind, atype, aid, txt,
  jsonb_build_object('mentions','[]'::jsonb,'attachments','[]'::jsonb,'author_name',aname,
    'attachment_ids','[]'::jsonb,'routing_mentions','[]'::jsonb)
  || CASE WHEN atype='ai_employee' THEN jsonb_build_object('message_kind','answer') ELSE '{}'::jsonb END,
  now() - interval '95 minutes' + (seq * interval '9 minutes'), 'org_demo_niuma0001'
FROM m ORDER BY seq;
COMMIT;
