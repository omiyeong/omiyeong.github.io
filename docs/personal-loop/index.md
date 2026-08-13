---
title: "04 · Personal Loop"
---

<div class="exploration-page">
  <p class="eyebrow">04 / PERSONAL DELIVERY LOOP <span class="status branch">独立分支验证中</span></p>
  <h1>让“帮我改一下”，<br><em>成为可证明的交付。</em></h1>
  <p class="page-lede">个人 Agent 可以写代码，但“完成”不是事实。一个真实研发任务还需要项目上下文、隔离工作区、测试、独立 Review、人类审批、Git 交付与外部状态对账。</p>

  <section class="loop-flow">
    <p>ONE OWNER · ONE TRACEABLE RUN</p>
    <ol><li><b>01</b><span>任务进入</span><small>手动或飞书显式提交</small></li><li><b>02</b><span>解析上下文</span><small>项目、环境、规则固定为快照</small></li><li><b>03</b><span>独立执行</span><small>worktree 调查、修改与测试</small></li><li><b>04</b><span>独立审查</span><small>Review 不能复用实现者的结论</small></li><li><b>05</b><span>人类决策</span><small>审批绑定证据、版本与有效期</small></li><li><b>06</b><span>交付对账</span><small>Draft PR、集成与结果通知</small></li></ol>
  </section>

  <section class="editorial-section split">
    <div><p class="number">CONTROL PLANE</p><h2>Workflow 拥有状态；Agent 只负责节点内推理。</h2></div>
    <div><p>Loop 把 Task、Workflow Run、Step Run、Approval、Evidence 和 External Action 分开建模。失败的尝试不应冒充任务取消；旧执行者迟到的结果也不能覆盖当前状态。</p><p>这不是一个无限运行、拥有所有权限的 Agent，也不是通用流程画布。它首先服务一个 Owner 的研发交付闭环。</p></div>
  </section>

  <section class="proof-board"><div><p>REQUIRED BEFORE ADVANCE</p><h2>证据先产生，状态才前进。</h2></div><ul><li>测试结果与 exit code</li><li>独立 Review 结论</li><li>审批绑定 candidate SHA</li><li>Git / PR 的外部回执</li><li>部署后的真实健康观察</li></ul></section>

  <section class="editorial-section split compact">
    <div><p class="number">HONEST BOUNDARY</p><h2>自动部署没有足够证据，就不自动部署。</h2></div>
    <div><p>当前独立分支已在验证任务、修改、测试、Review、审批与交付控制。真实自动部署需要精确制品、可对账的外部操作与补偿能力；这些契约未满足前，流程会阻断并交给人，而不是假装“全自动”。</p></div>
  </section>

  <nav class="page-next"><a href="/engineering/"><small>READ THE EVIDENCE</small>进入架构与工程笔记 <strong>→</strong></a></nav>
</div>
