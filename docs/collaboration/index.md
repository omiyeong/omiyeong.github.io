---
title: "03 · 办公协作"
---

<div class="exploration-page">
  <p class="eyebrow">03 / COLLABORATION <span class="status research">设计验证中</span></p>
  <h1>个人快了，<br><em>团队为什么没快？</em></h1>
  <p class="page-lede">个人用 Codex、Claude 后，产出可以提升很多；但项目仍靠人找人、消息找上下文、会议找决策。NiuMa 连续做了三次不同的协作尝试，前两次都停了下来。</p>

  <section class="evolution-timeline">
    <article><p><b>V1</b><span>已停止探索</span></p><h2>每个人一个 AI 分身</h2><p>分身获取个人上下文，作为 Channel 中的协作代表；为此专门尝试构建个人上下文系统。</p><div><strong>结论</strong> 上下文效果难以控制，且用户不会为了协作放弃已习惯的 Codex、Claude 工作入口。</div></article>
    <article><p><b>V2</b><span>已停止探索</span></p><h2>飞书里的全局 Agent</h2><p>定时沉淀群聊与私聊上下文，判断何时该回答；用户可在飞书或 Agent Q 中询问全局助手。</p><div><strong>结论</strong> 飞书接入边界和体验不够顺滑；一个长期维护的全局上下文也过于脆弱。</div></article>
    <article class="active"><p><b>V3</b><span>当前收敛方向</span></p><h2>按项目与责任协作</h2><p>每个人继续用自己的 Agent；每个项目或版本隔离文档、资料和上下文。项目总 Agent 不替人干活，而是提供 skill/CLI 作为责任路由与协作入口。</p><div><strong>正在验证</strong> 能否比“找人、重新解释背景、等待回复”更快地找到正确负责人，同时不扩大上下文权限。</div></article>
  </section>

  <section class="editorial-section split">
    <div><p class="number">THE NEW BOUNDARY</p><h2>不迁移工具，才有机会改变协作。</h2></div>
    <div><p>项目责任协作不要求所有人搬进一个新的聊天工作台。A 仍在自己的 Codex 中工作，遇到跨职责问题时，通过 skill/CLI 向项目协作入口提问；系统按项目、版本和责任域找到 B，再由 B 决定授权 Agent 回答、本人接管、转交或拒绝。</p><p>因此协作的核心不是“共享更多聊天记录”，而是项目边界、责任关系、最小上下文和可撤销授权。</p></div>
  </section>

  <section class="route-diagram"><p>PROJECT-RESPONSIBILITY COLLABORATION</p><div>个人 Agent 提问 <b>→</b> 项目 / 版本解析 <b>→</b> 责任域路由 <b>→</b> 负责人确认 <b>→</b> 隔离上下文回答或人类接管</div></section>

  <p class="honesty-note">这一方向目前是未合入的设计验证，不作为已上线协作功能宣传。保留它，是因为被否证的路径同样构成 NiuMa 的产品判断。</p>
  <nav class="page-next"><a href="/personal-loop/"><small>NEXT / 04</small>让个人交付成为可恢复闭环 <strong>→</strong></a></nav>
</div>
