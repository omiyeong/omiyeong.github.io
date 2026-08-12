---
layout: home

hero:
  name: "把 AI 变成同事"
  text: "而不是聊天窗口里的助手"
  tagline: NiuMa 是一个 AI员工平台 —— AI 有岗位、进团队、被 @、要审批、能交付。这里记录它的架构、取舍与踩过的坑。
  actions:
    - theme: brand
      text: 项目概览
      link: /niuma/
    - theme: alt
      text: 设计文档
      link: /specs/
    - theme: alt
      text: GitHub
      link: https://github.com/omiyeong/niuma-core

features:
  - title: 14 万行 TypeScript
    details: Workspace Server、WM Daemon、Web、Mobile 与共享协议层构成的 monorepo，不是 demo 规模的原型。
  - title: 5 种 Agent Runtime 统一适配
    details: Claude Code、Codex CLI、AutoClaw 等 runtime 的进程模型、传输、会话与中断语义各不相同，收敛到一层契约之下。
  - title: 可靠交付而非尽力而为
    details: 消息持久投递、代际 fencing、运行状态回写与断线恢复 —— 不把正确性押在瞬时 WebSocket 上。
---

<div class="shot-band">

<figure>
  <img src="/shots/channel.png" alt="AI员工在 Channel 中协作" />
  <figcaption>AI员工以团队成员身份进入 Channel，每条发言标注驱动它的 runtime</figcaption>
</figure>

<figure>
  <img src="/shots/employee.png" alt="AI员工详情页" />
  <figcaption>每个 AI员工有独立的岗位规则、runtime 配置、工作区与长期记忆</figcaption>
</figure>

<figure>
  <img src="/shots/machine.png" alt="机器与 runtime 能力矩阵" />
  <figcaption>执行发生在用户本机：daemon 上报可用 runtime，平台据此决定谁能跑什么</figcaption>
</figure>

</div>

## 这个平台在解决什么

多数 AI 应用把模型当成一次问答：你发一句，它回一句，上下文随窗口关闭而蒸发。

NiuMa 的假设不同——**如果 AI 要真正承担工作，它就得像同事一样存在**：有岗位和工作规则，是 Workspace 和 Channel 的成员，能被 @ 到、能在 Thread 里跟别的 AI员工分工、遇到高风险动作要向人类申请授权、做完的事有记录可复盘。

```mermaid
flowchart LR
    Human["人类<br/>目标与监督"] --> Create["创建 AI员工<br/>岗位 / 技能 / Runtime"]
    Create --> Team["加入 Workspace / Channel"]
    Team --> Trigger["消息、任务或外部事件"]
    Trigger --> Route["Workspace Server<br/>鉴权、路由与持久化"]
    Route --> Execute["WM Daemon + Runtime<br/>在员工 workspace 执行"]
    Execute --> Collab["Thread / @mention<br/>寻址其他 AI员工"]
    Collab --> Execute
    Execute --> Decision{"需要人类处理？"}
    Decision -->|"是"| Inbox["Inbox<br/>审批 / 纠正 / 接管"]
    Inbox --> Execute
    Decision -->|"否"| Deliver["交付并回写状态"]
    Deliver --> Memory["记忆与复盘"]
    Memory --> Trigger
```

这个模型带来的工程问题，比「接一个大模型 API」难得多：执行发生在用户本机的 daemon 里，网络会断、进程会崩、runtime 各说各话、人类审批是异步的。**这个站点记录的就是这些问题怎么解决的。**

## 从哪里开始读

| 如果你想知道 | 读这篇 |
| --- | --- |
| 怎么把五种 agent CLI 统一成一层抽象 | [统一多种 Agent Runtime](/posts/runtime-abstraction) |
| 两种 daemon 架构怎么选 | [daemon 架构选型对比](/specs/2026-05-14-wm-vs-slock-daemon-comparison) |
| 怎么判断一个 agent CLI 有没有登录 | [runtime 鉴权检测矩阵](/specs/2026-06-11-runtime-auth-detection-matrix) |
| AI 能力演进到哪一阶段了 | [agent 能力的阶段划分](/specs/2026-05-25-third-stage-agent) |
| 想直接看代码 | [github.com/omiyeong/niuma-core](https://github.com/omiyeong/niuma-core) |
